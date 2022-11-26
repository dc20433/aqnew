class Regi < ApplicationRecord
  has_many :charts
  has_many :patients
  # belongs_to :user
  
  GENDER_OPTIONS = [
    ['Select', ''],
    ['Male', 'Male'],
    ['Female', 'Female'],
    ['Other', 'Other']
  ]
end
