require "application_system_test_case"

class ZweetsTest < ApplicationSystemTestCase
  setup do
    @zweet = zweets(:one)
  end

  test "visiting the index" do
    visit zweets_url
    assert_selector "h1", text: "Zweets"
  end

  test "should create zweet" do
    visit zweets_url
    click_on "New zweet"

    fill_in "Content", with: @zweet.content
    fill_in "Image", with: @zweet.image
    fill_in "User", with: @zweet.user_id
    click_on "Create Zweet"

    assert_text "Zweet was successfully created"
    click_on "Back"
  end

  test "should update Zweet" do
    visit zweet_url(@zweet)
    click_on "Edit this zweet", match: :first

    fill_in "Content", with: @zweet.content
    fill_in "Image", with: @zweet.image
    fill_in "User", with: @zweet.user_id
    click_on "Update Zweet"

    assert_text "Zweet was successfully updated"
    click_on "Back"
  end

  test "should destroy Zweet" do
    visit zweet_url(@zweet)
    click_on "Destroy this zweet", match: :first

    assert_text "Zweet was successfully destroyed"
  end
end
