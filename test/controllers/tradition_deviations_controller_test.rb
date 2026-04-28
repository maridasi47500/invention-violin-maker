require "test_helper"

class TraditionDeviationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tradition_deviation = tradition_deviations(:one)
  end

  test "should get index" do
    get tradition_deviations_url
    assert_response :success
  end

  test "should get new" do
    get new_tradition_deviation_url
    assert_response :success
  end

  test "should create tradition_deviation" do
    assert_difference("TraditionDeviation.count") do
      post tradition_deviations_url, params: { tradition_deviation: { compositeur_id: @tradition_deviation.compositeur_id, consequence: @tradition_deviation.consequence, fire_point_id: @tradition_deviation.fire_point_id, reason: @tradition_deviation.reason, tradition_says: @tradition_deviation.tradition_says, violinist_does: @tradition_deviation.violinist_does } }
    end

    assert_redirected_to tradition_deviation_url(TraditionDeviation.last)
  end

  test "should show tradition_deviation" do
    get tradition_deviation_url(@tradition_deviation)
    assert_response :success
  end

  test "should get edit" do
    get edit_tradition_deviation_url(@tradition_deviation)
    assert_response :success
  end

  test "should update tradition_deviation" do
    patch tradition_deviation_url(@tradition_deviation), params: { tradition_deviation: { compositeur_id: @tradition_deviation.compositeur_id, consequence: @tradition_deviation.consequence, fire_point_id: @tradition_deviation.fire_point_id, reason: @tradition_deviation.reason, tradition_says: @tradition_deviation.tradition_says, violinist_does: @tradition_deviation.violinist_does } }
    assert_redirected_to tradition_deviation_url(@tradition_deviation)
  end

  test "should destroy tradition_deviation" do
    assert_difference("TraditionDeviation.count", -1) do
      delete tradition_deviation_url(@tradition_deviation)
    end

    assert_redirected_to tradition_deviations_url
  end
end
