json.array!(@students) do |student|
  json.extract! student, :id, :name_khmer, :name_english, :gender_id, :marital_status_id, :dob, :pob, :nationality, :home_address, :telephone, :email, :work_place, :position, :parent_name, :spouse_name, :emergency_contact, :emergency_relationship, :emergency_address, :emergency_telephone, :education_background_id
  json.url student_url(student, format: :json)
end
