require 'test_helper'

class DeliveliesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get delivelies_new_url
    assert_response :success
  end

  test "should get create" do
    get delivelies_create_url
    assert_response :success
  end

  test "should get index" do
    get delivelies_index_url
    assert_response :success
  end

  test "should get edit" do
    get delivelies_edit_url
    assert_response :success
  end

  test "should get update" do
    get delivelies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get delivelies_destroy_url
    assert_response :success
  end

end
