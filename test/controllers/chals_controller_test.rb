require "test_helper"

class ChalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chal = chals(:one)
  end

  test "should get index" do
    get chals_url, as: :json
    assert_response :success
  end

  test "should create chal" do
    assert_difference('Chal.count') do
      post chals_url, params: { chal: { name: @chal.name } }, as: :json
    end

    assert_response 201
  end

  test "should show chal" do
    get chal_url(@chal), as: :json
    assert_response :success
  end

  test "should update chal" do
    patch chal_url(@chal), params: { chal: { name: @chal.name } }, as: :json
    assert_response 200
  end

  test "should destroy chal" do
    assert_difference('Chal.count', -1) do
      delete chal_url(@chal), as: :json
    end

    assert_response 204
  end
end
