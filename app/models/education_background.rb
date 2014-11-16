class EducationBackground < ActiveRecord::Base
  belongs_to :type_of_degree
  belongs_to :student
end
