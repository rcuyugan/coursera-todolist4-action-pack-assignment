class Profile < ActiveRecord::Base
  belongs_to :user

  validate :at_least_one_name_present
  validates :gender, inclusion: %w(male female)
  validate :boy_cannot_be_sue
  
  
  

  def at_least_one_name_present
  unless first_name.present? || last_name.present?
  	errors.add(:user, "Must contain at least a first or last_name")
  	end
  end

  def boy_cannot_be_sue
  	if first_name == "Sue" && gender == "male"
  		errors.add(:first_name, "Cannot use this for male!")
  	end
  end


 
   def self.get_all_profiles(min_year, max_year)
    where("birth_year BETWEEN :min_year AND :max_year", min_year: min_year, max_year: max_year).order(birth_year: :asc)
  end


end

