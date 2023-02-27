require "test_helper"

class AparmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aparment = aparments(:one)
  end

  test "should get index" do
    get aparments_url, as: :json
    assert_response :success
  end

  test "should create aparment" do
    assert_difference('Aparment.count') do
      post aparments_url, params: { aparment: { number: @aparment.number } }, as: :json
    end

    assert_response 201
  end

  test "should show aparment" do
    get aparment_url(@aparment), as: :json
    assert_response :success
  end

  test "should update aparment" do
    patch aparment_url(@aparment), params: { aparment: { number: @aparment.number } }, as: :json
    assert_response 200
  end

  test "should destroy aparment" do
    assert_difference('Aparment.count', -1) do
      delete aparment_url(@aparment), as: :json
    end

    assert_response 204
  end
end
