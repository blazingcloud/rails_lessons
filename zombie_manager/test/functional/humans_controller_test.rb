require 'test_helper'

class HumansControllerTest < ActionController::TestCase
  setup do
    @human = humans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:humans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create human" do
    assert_difference('Human.count') do
      post :create, human: { blood_type: @human.blood_type, height: @human.height, weight: @human.weight }
    end

    assert_redirected_to human_path(assigns(:human))
  end

  test "should show human" do
    get :show, id: @human
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @human
    assert_response :success
  end

  test "should update human" do
    put :update, id: @human, human: { blood_type: @human.blood_type, height: @human.height, weight: @human.weight }
    assert_redirected_to human_path(assigns(:human))
  end

  test "should destroy human" do
    assert_difference('Human.count', -1) do
      delete :destroy, id: @human
    end

    assert_redirected_to humans_path
  end
end
