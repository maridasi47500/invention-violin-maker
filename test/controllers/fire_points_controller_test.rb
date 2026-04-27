require "test_helper"

class FirePointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fire_point = fire_points(:one)
  end

  test "should get index" do
    get fire_points_url
    assert_response :success
  end

  test "should get new" do
    get new_fire_point_url
    assert_response :success
  end

  test "should create fire_point" do
    assert_difference("FirePoint.count") do
      post fire_points_url, params: { fire_point: { coup_archet_id: @fire_point.coup_archet_id, oeuvre_id: @fire_point.oeuvre_id, string_spirit_id: @fire_point.string_spirit_id } }
    end

    assert_redirected_to fire_point_url(FirePoint.last)
  end

  test "should show fire_point" do
    get fire_point_url(@fire_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_fire_point_url(@fire_point)
    assert_response :success
  end

  test "should update fire_point" do
    patch fire_point_url(@fire_point), params: { fire_point: { coup_archet_id: @fire_point.coup_archet_id, oeuvre_id: @fire_point.oeuvre_id, string_spirit_id: @fire_point.string_spirit_id } }
    assert_redirected_to fire_point_url(@fire_point)
  end

  test "should destroy fire_point" do
    assert_difference("FirePoint.count", -1) do
      delete fire_point_url(@fire_point)
    end

    assert_redirected_to fire_points_url
  end
end
