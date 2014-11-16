class Student < ActiveRecord::Base
  belongs_to :gender
  belongs_to :marital_status
  has_one :education_background
end
