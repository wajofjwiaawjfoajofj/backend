require "test_helper"

class TodomodelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todomodel = todomodels(:one)
  end

  test "should get index" do
    get todomodels_url, as: :json
    assert_response :success
  end

  test "should create todomodel" do
    assert_difference("Todomodel.count") do
      post todomodels_url, params: { todomodel: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show todomodel" do
    get todomodel_url(@todomodel), as: :json
    assert_response :success
  end

  test "should update todomodel" do
    patch todomodel_url(@todomodel), params: { todomodel: {  } }, as: :json
    assert_response :success
  end

  test "should destroy todomodel" do
    assert_difference("Todomodel.count", -1) do
      delete todomodel_url(@todomodel), as: :json
    end

    assert_response :no_content
  end
end
