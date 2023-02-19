require "application_system_test_case"

class OfficeworksTest < ApplicationSystemTestCase
  setup do
    @officework = officeworks(:one)
  end

  test "visiting the index" do
    visit officeworks_url
    assert_selector "h1", text: "Officeworks"
  end

  test "should create officework" do
    visit officeworks_url
    click_on "New officework"

    fill_in "Age", with: @officework.age
    fill_in "Designation", with: @officework.designation
    fill_in "Gender", with: @officework.gender
    fill_in "Name", with: @officework.name
    click_on "Create Officework"

    assert_text "Officework was successfully created"
    click_on "Back"
  end

  test "should update Officework" do
    visit officework_url(@officework)
    click_on "Edit this officework", match: :first

    fill_in "Age", with: @officework.age
    fill_in "Designation", with: @officework.designation
    fill_in "Gender", with: @officework.gender
    fill_in "Name", with: @officework.name
    click_on "Update Officework"

    assert_text "Officework was successfully updated"
    click_on "Back"
  end

  test "should destroy Officework" do
    visit officework_url(@officework)
    click_on "Destroy this officework", match: :first

    assert_text "Officework was successfully destroyed"
  end
end
