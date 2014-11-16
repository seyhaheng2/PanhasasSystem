require 'test_helper'

class EducationBackgroundsControllerTest < ActionController::TestCase
  setup do
    @education_background = education_backgrounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:education_backgrounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create education_background" do
    assert_difference('EducationBackground.count') do
      post :create, education_background: { degree_program: @education_background.degree_program, desired_major: @education_background.desired_major, english_program: @education_background.english_program, graduate_school: @education_background.graduate_school, high_school: @education_background.high_school, student_id: @education_background.student_id, type_of_degree_id: @education_background.type_of_degree_id, university: @education_background.university }
    end

    assert_redirected_to education_background_path(assigns(:education_background))
  end

  test "should show education_background" do
    get :show, id: @education_background
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @education_background
    assert_response :success
  end

  test "should update education_background" do
    patch :update, id: @education_background, education_background: { degree_program: @education_background.degree_program, desired_major: @education_background.desired_major, english_program: @education_background.english_program, graduate_school: @education_background.graduate_school, high_school: @education_background.high_school, student_id: @education_background.student_id, type_of_degree_id: @education_background.type_of_degree_id, university: @education_background.university }
    assert_redirected_to education_background_path(assigns(:education_background))
  end

  test "should destroy education_background" do
    assert_difference('EducationBackground.count', -1) do
      delete :destroy, id: @education_background
    end

    assert_redirected_to education_backgrounds_path
  end
end
