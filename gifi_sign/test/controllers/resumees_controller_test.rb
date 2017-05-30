require 'test_helper'

class ResumeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resumee = resumees(:one)
  end

  test "should get index" do
    get resumees_url
    assert_response :success
  end

  test "should get new" do
    get new_resumee_url
    assert_response :success
  end

  test "should create resumee" do
    assert_difference('Resumee.count') do
      post resumees_url, params: { resumee: { attachment: @resumee.attachment, date: @resumee.date, name: @resumee.name } }
    end

    assert_redirected_to resumee_url(Resumee.last)
  end

  test "should show resumee" do
    get resumee_url(@resumee)
    assert_response :success
  end

  test "should get edit" do
    get edit_resumee_url(@resumee)
    assert_response :success
  end

  test "should update resumee" do
    patch resumee_url(@resumee), params: { resumee: { attachment: @resumee.attachment, date: @resumee.date, name: @resumee.name } }
    assert_redirected_to resumee_url(@resumee)
  end

  test "should destroy resumee" do
    assert_difference('Resumee.count', -1) do
      delete resumee_url(@resumee)
    end

    assert_redirected_to resumees_url
  end
end
