require 'test_helper'

class CllassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cllass = cllasses(:one)
  end

  test "should get index" do
    get cllasses_url
    assert_response :success
  end

  test "should get new" do
    get new_cllass_url
    assert_response :success
  end

  test "should create cllass" do
    assert_difference('Cllass.count') do
      post cllasses_url, params: { cllass: { name: @cllass.name } }
    end

    assert_redirected_to cllass_url(Cllass.last)
  end

  test "should show cllass" do
    get cllass_url(@cllass)
    assert_response :success
  end

  test "should get edit" do
    get edit_cllass_url(@cllass)
    assert_response :success
  end

  test "should update cllass" do
    patch cllass_url(@cllass), params: { cllass: { name: @cllass.name } }
    assert_redirected_to cllass_url(@cllass)
  end

  test "should destroy cllass" do
    assert_difference('Cllass.count', -1) do
      delete cllass_url(@cllass)
    end

    assert_redirected_to cllasses_url
  end
end
