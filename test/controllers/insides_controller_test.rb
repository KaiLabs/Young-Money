require 'test_helper'

class InsidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inside = insides(:one)
  end

  test "should get index" do
    get insides_url
    assert_response :success
  end

  test "should get new" do
    get new_inside_url
    assert_response :success
  end

  test "should create inside" do
    assert_difference('Inside.count') do
      post insides_url, params: { inside: { deadline: @inside.deadline, description: @inside.description, name: @inside.name } }
    end

    assert_redirected_to inside_url(Inside.last)
  end

  test "should show inside" do
    get inside_url(@inside)
    assert_response :success
  end

  test "should get edit" do
    get edit_inside_url(@inside)
    assert_response :success
  end

  test "should update inside" do
    patch inside_url(@inside), params: { inside: { deadline: @inside.deadline, description: @inside.description, name: @inside.name } }
    assert_redirected_to inside_url(@inside)
  end

  test "should destroy inside" do
    assert_difference('Inside.count', -1) do
      delete inside_url(@inside)
    end

    assert_redirected_to insides_url
  end
end
