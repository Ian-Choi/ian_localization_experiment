require 'test_helper'

class TestDataControllerTest < ActionController::TestCase
  setup do
    @test_datum = test_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_datum" do
    assert_difference('TestDatum.count') do
      post :create, :test_datum => @test_datum.attributes
    end

    assert_redirected_to test_datum_path(assigns(:test_datum))
  end

  test "should show test_datum" do
    get :show, :id => @test_datum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @test_datum.to_param
    assert_response :success
  end

  test "should update test_datum" do
    put :update, :id => @test_datum.to_param, :test_datum => @test_datum.attributes
    assert_redirected_to test_datum_path(assigns(:test_datum))
  end

  test "should destroy test_datum" do
    assert_difference('TestDatum.count', -1) do
      delete :destroy, :id => @test_datum.to_param
    end

    assert_redirected_to test_data_path
  end
end
