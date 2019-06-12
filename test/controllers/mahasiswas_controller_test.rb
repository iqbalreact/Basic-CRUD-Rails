require 'test_helper'

class MahasiswasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mahasiswas_index_url
    assert_response :success
  end

  test "should get show" do
    get mahasiswas_show_url
    assert_response :success
  end

  test "should get new" do
    get mahasiswas_new_url
    assert_response :success
  end

  test "should get edit" do
    get mahasiswas_edit_url
    assert_response :success
  end

end
