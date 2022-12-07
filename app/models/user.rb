class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable,
         :confirmable,
         :trackable,
         authentication_keys: [:login]

  validates :name, presence: true
  validates :role, presence: true
  validates :user_name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: /@./, message: "Not a valid email address" }

  enum role: [:patient, :manager, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :patient
  end  

  attr_accessor :login

  def login
    @login || self.user_name || self.email
  end

  def self.find_for_database_authentication(warden_condition)
    conditions = warden_condition.dup
    if(login = conditions.delete(:login)) 
      where(conditions.to_h).where(["lower(user_name) = :value OR lower(email) = :value", { value: login.downcase }]).first
    elsif conditions.has_key?(:user_name) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end
end