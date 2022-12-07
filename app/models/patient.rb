class Patient < ApplicationRecord
  belongs_to :regi

  before_save do
    self.di_list.gsub!(/[\[\]\"]/, "") if attribute_present?("di_list")
    self.di_list.gsub!(/[\[\]\_"]/, "") if attribute_present?("di_list")
  end

MARITAL_STATUS = 
  [
    ['Select', ''],
    ['Single', 'Single'],
    ['Married', 'Married'],
    ['Divorced', 'Divorced'],
    ['Widowed', 'Widowed'],
    ['Other', 'Other']
  ]
  HOSPITALIZED = 
  [
    ['No', 'No'],
    ['Yes', 'Yes']
  ]
  SEEN_DR = 
  [
    ['No', 'No'],
    ['Yes', 'Yes']
  ]
  ACU_BEFORE =
  [
    ['No', 'No'],
    ['Yes', 'Yes']
  ]
  PREG =
  [
    ['Not applicable', 'NA'],
    ['No', 'No'],
    ['Yes', 'Yes']
  ]
  HEALTH = %i[
    Diabetes 
    Hypertension  
    Cancer 
    Hepatitis 
    Heart_Disease 
    Crack/Cocaine  
    Enlarged_Lymph_Glands  
    HIV/AIDS  
    Neck_Stiffness  
    Seizure 
    Palpitation  
    Frequent_Colds  
    Night_Sweating 
    Chest_Pain_or_Tightness  
    Constipation 
    Excess_Sweating 
    Back/Lower_Back_Pain 
    Major_Depression 
    Anxiety_Disorder 
    Post_Traumatic_Stress_Disorder 
    Bypolar_Disorder 
    Borderline_Personality_Disorder
  ]

end