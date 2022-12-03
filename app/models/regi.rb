class Regi < ApplicationRecord
  has_many :charts, dependent: :destroy
  has_many :patients, dependent: :destroy
  # belongs_to :user
  
  GENDER_OPTIONS = [
    ['Select', ''],
    ['Male', 'Male'],
    ['Female', 'Female'],
    ['Other', 'Other']
  ]
end
