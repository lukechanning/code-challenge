require 'test_helper'

class FoundersControllerTest < ActionController::TestCase
  setup do
    @founder = founders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:founders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create founder" do
    assert_difference('Founder.count') do
      post :create, founder: { company_id: @founder.company_id, name: @founder.name, title: @founder.title }
    end

    assert_redirected_to founder_path(assigns(:founder))
  end

  test "should show founder" do
    get :show, id: @founder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @founder
    assert_response :success
  end

  test "should update founder" do
    patch :update, id: @founder, founder: { company_id: @founder.company_id, name: @founder.name, title: @founder.title }
    assert_redirected_to founder_path(assigns(:founder))
  end

  test "should destroy founder" do
    assert_difference('Founder.count', -1) do
      delete :destroy, id: @founder
    end

    assert_redirected_to founders_path
  end
end
