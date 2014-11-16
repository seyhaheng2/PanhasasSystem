json.array!(@education_backgrounds) do |education_background|
  json.extract! education_background, :id, :high_school, :english_program, :degree_program, :university, :graduate_school, :type_of_degree_id, :desired_major, :student_id
  json.url education_background_url(education_background, format: :json)
end
