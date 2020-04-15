require 'test_helper'

class CartsItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get carts_items_new_url
    assert_response :success
  end

  test "should get create" do
    get carts_items_create_url
    assert_response :success
  end

  test "should get show" do
    get carts_items_show_url
    assert_response :success
  end

  test "should get edit" do
    get carts_items_edit_url
    assert_response :success
  end

  test "should get update" do
    get carts_items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get carts_items_destroy_url
    assert_response :success
  end

  test "should get empty" do
    get carts_items_empty_url
    assert_response :success
  end

end
