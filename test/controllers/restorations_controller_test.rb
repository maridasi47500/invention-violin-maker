require "test_helper"

class RestorationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restoration = restorations(:one)
  end

  test "should get index" do
    get restorations_url
    assert_response :success
  end

  test "should get new" do
    get new_restoration_url
    assert_response :success
  end

  test "should create restoration" do
    assert_difference("Restoration.count") do
      post restorations_url, params: { restoration: { description: @restoration.description, instrument_id: @restoration.instrument_id, work_date: @restoration.work_date } }
    end

    assert_redirected_to restoration_url(Restoration.last)
  end

  test "should show restoration" do
    get restoration_url(@restoration)
    assert_response :success
  end

  test "should get edit" do
    get edit_restoration_url(@restoration)
    assert_response :success
  end

  test "should update restoration" do
    patch restoration_url(@restoration), params: { restoration: { description: @restoration.description, instrument_id: @restoration.instrument_id, work_date: @restoration.work_date } }
    assert_redirected_to restoration_url(@restoration)
  end

  test "should destroy restoration" do
    assert_difference("Restoration.count", -1) do
      delete restoration_url(@restoration)
    end

    assert_redirected_to restorations_url
  end
end
