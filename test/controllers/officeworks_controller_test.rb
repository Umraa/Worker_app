require "test_helper"

class OfficeworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @officework = officeworks(:one)
  end

  test "should get index" do
    get officeworks_url
    assert_response :success
  end

  test "should get new" do
    get new_officework_url
    assert_response :success
  end

  test "should create officework" do
    assert_difference("Officework.count") do
      post officeworks_url, params: { officework: { age: @officework.age, designation: @officework.designation, gender: @officework.gender, name: @officework.name } }
    end

    assert_redirected_to officework_url(Officework.last)
  end

  test "should show officework" do
    get officework_url(@officework)
    assert_response :success
  end

  test "should get edit" do
    get edit_officework_url(@officework)
    assert_response :success
  end

  test "should update officework" do
    patch officework_url(@officework), params: { officework: { age: @officework.age, designation: @officework.designation, gender: @officework.gender, name: @officework.name } }
    assert_redirected_to officework_url(@officework)
  end

  test "should destroy officework" do
    assert_difference("Officework.count", -1) do
      delete officework_url(@officework)
    end

    assert_redirected_to officeworks_url
  end
end
