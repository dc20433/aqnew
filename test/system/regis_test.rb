require "application_system_test_case"

class RegisTest < ApplicationSystemTestCase
  setup do
    @regi = regis(:one)
  end

  test "visiting the index" do
    visit regis_url
    assert_selector "h1", text: "Regis"
  end

  test "should create regi" do
    visit regis_url
    click_on "New regi"

    fill_in "Dob", with: @regi.dob
    fill_in "first_name", with: @regi.first_name
    fill_in "Gender", with: @regi.gender
    fill_in "Init", with: @regi.init
    fill_in "last_name", with: @regi.last_name
    fill_in "User", with: @regi.user_id
    click_on "Create Regi"

    assert_text "Regi was successfully created"
    click_on "Back"
  end

  test "should update Regi" do
    visit regi_url(@regi)
    click_on "Edit this regi", match: :first

    fill_in "Dob", with: @regi.dob
    fill_in "first_name", with: @regi.first_name
    fill_in "Gender", with: @regi.gender
    fill_in "Init", with: @regi.init
    fill_in "last_name", with: @regi.last_name
    fill_in "User", with: @regi.user_id
    click_on "Update Regi"

    assert_text "Regi was successfully updated"
    click_on "Back"
  end

  test "should destroy Regi" do
    visit regi_url(@regi)
    click_on "Destroy this regi", match: :first

    assert_text "Regi was successfully destroyed"
  end
end
