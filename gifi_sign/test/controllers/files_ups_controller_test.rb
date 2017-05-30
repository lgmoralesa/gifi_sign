require 'test_helper'

class FilesUpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @files_up = files_ups(:one)
  end

  test "should get index" do
    get files_ups_url
    assert_response :success
  end

  test "should get new" do
    get new_files_up_url
    assert_response :success
  end

  test "should create files_up" do
    assert_difference('FilesUp.count') do
      post files_ups_url, params: { files_up: { attachment: @files_up.attachment, date: @files_up.date, name: @files_up.name } }
    end

    assert_redirected_to files_up_url(FilesUp.last)
  end

  test "should show files_up" do
    get files_up_url(@files_up)
    assert_response :success
  end

  test "should get edit" do
    get edit_files_up_url(@files_up)
    assert_response :success
  end

  test "should update files_up" do
    patch files_up_url(@files_up), params: { files_up: { attachment: @files_up.attachment, date: @files_up.date, name: @files_up.name } }
    assert_redirected_to files_up_url(@files_up)
  end

  test "should destroy files_up" do
    assert_difference('FilesUp.count', -1) do
      delete files_up_url(@files_up)
    end

    assert_redirected_to files_ups_url
  end
end
