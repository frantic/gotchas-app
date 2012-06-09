require 'test_helper'

class GotchasControllerTest < ActionController::TestCase
  setup do
    @gotcha = gotchas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gotchas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gotcha" do
    assert_difference('Gotcha.count') do
      post :create, gotcha: { content: @gotcha.content, tags: @gotcha.tags }
    end

    assert_redirected_to gotcha_path(assigns(:gotcha))
  end

  test "should show gotcha" do
    get :show, id: @gotcha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gotcha
    assert_response :success
  end

  test "should update gotcha" do
    put :update, id: @gotcha, gotcha: { content: @gotcha.content, tags: @gotcha.tags }
    assert_redirected_to gotcha_path(assigns(:gotcha))
  end

  test "should destroy gotcha" do
    assert_difference('Gotcha.count', -1) do
      delete :destroy, id: @gotcha
    end

    assert_redirected_to gotchas_path
  end
end
