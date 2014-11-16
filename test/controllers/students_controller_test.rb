require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { dob: @student.dob, education_background_id: @student.education_background_id, email: @student.email, emergency_address: @student.emergency_address, emergency_contact: @student.emergency_contact, emergency_relationship: @student.emergency_relationship, emergency_telephone: @student.emergency_telephone, gender_id: @student.gender_id, home_address: @student.home_address, marital_status_id: @student.marital_status_id, name_english: @student.name_english, name_khmer: @student.name_khmer, nationality: @student.nationality, parent_name: @student.parent_name, pob: @student.pob, position: @student.position, spouse_name: @student.spouse_name, telephone: @student.telephone, work_place: @student.work_place }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { dob: @student.dob, education_background_id: @student.education_background_id, email: @student.email, emergency_address: @student.emergency_address, emergency_contact: @student.emergency_contact, emergency_relationship: @student.emergency_relationship, emergency_telephone: @student.emergency_telephone, gender_id: @student.gender_id, home_address: @student.home_address, marital_status_id: @student.marital_status_id, name_english: @student.name_english, name_khmer: @student.name_khmer, nationality: @student.nationality, parent_name: @student.parent_name, pob: @student.pob, position: @student.position, spouse_name: @student.spouse_name, telephone: @student.telephone, work_place: @student.work_place }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
