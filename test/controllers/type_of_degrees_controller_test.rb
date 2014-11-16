require 'test_helper'

class TypeOfDegreesControllerTest < ActionController::TestCase
  setup do
    @type_of_degree = type_of_degrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_of_degrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_of_degree" do
    assert_difference('TypeOfDegree.count') do
      post :create, type_of_degree: { name: @type_of_degree.name }
    end

    assert_redirected_to type_of_degree_path(assigns(:type_of_degree))
  end

  test "should show type_of_degree" do
    get :show, id: @type_of_degree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_of_degree
    assert_response :success
  end

  test "should update type_of_degree" do
    patch :update, id: @type_of_degree, type_of_degree: { name: @type_of_degree.name }
    assert_redirected_to type_of_degree_path(assigns(:type_of_degree))
  end

  test "should destroy type_of_degree" do
    assert_difference('TypeOfDegree.count', -1) do
      delete :destroy, id: @type_of_degree
    end

    assert_redirected_to type_of_degrees_path
  end
end
