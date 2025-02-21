require "test_helper"

class ZweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zweet = zweets(:one)
  end

  test "should get index" do
    get zweets_url
    assert_response :success
  end

  test "should get new" do
    get new_zweet_url
    assert_response :success
  end

  test "should create zweet" do
    assert_difference("Zweet.count") do
      post zweets_url, params: { zweet: { content: @zweet.content, image: @zweet.image, user_id: @zweet.user_id } }
    end

    assert_redirected_to zweet_url(Zweet.last)
  end

  test "should show zweet" do
    get zweet_url(@zweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_zweet_url(@zweet)
    assert_response :success
  end

  test "should update zweet" do
    patch zweet_url(@zweet), params: { zweet: { content: @zweet.content, image: @zweet.image, user_id: @zweet.user_id } }
    assert_redirected_to zweet_url(@zweet)
  end

  test "should destroy zweet" do
    assert_difference("Zweet.count", -1) do
      delete zweet_url(@zweet)
    end

    assert_redirected_to zweets_url
  end
end
