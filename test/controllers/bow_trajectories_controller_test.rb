require "test_helper"

class BowTrajectoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bow_trajectory = bow_trajectories(:one)
  end

  test "should get index" do
    get bow_trajectories_url
    assert_response :success
  end

  test "should get new" do
    get new_bow_trajectory_url
    assert_response :success
  end

  test "should create bow_trajectory" do
    assert_difference("BowTrajectory.count") do
      post bow_trajectories_url, params: { bow_trajectory: { air_time_percentage: @bow_trajectory.air_time_percentage, bow_stroke_type: @bow_trajectory.bow_stroke_type, empty_trajectory: @bow_trajectory.empty_trajectory, friction_trajectory: @bow_trajectory.friction_trajectory, resonance_quality: @bow_trajectory.resonance_quality, tension_buildup: @bow_trajectory.tension_buildup } }
    end

    assert_redirected_to bow_trajectory_url(BowTrajectory.last)
  end

  test "should show bow_trajectory" do
    get bow_trajectory_url(@bow_trajectory)
    assert_response :success
  end

  test "should get edit" do
    get edit_bow_trajectory_url(@bow_trajectory)
    assert_response :success
  end

  test "should update bow_trajectory" do
    patch bow_trajectory_url(@bow_trajectory), params: { bow_trajectory: { air_time_percentage: @bow_trajectory.air_time_percentage, bow_stroke_type: @bow_trajectory.bow_stroke_type, empty_trajectory: @bow_trajectory.empty_trajectory, friction_trajectory: @bow_trajectory.friction_trajectory, resonance_quality: @bow_trajectory.resonance_quality, tension_buildup: @bow_trajectory.tension_buildup } }
    assert_redirected_to bow_trajectory_url(@bow_trajectory)
  end

  test "should destroy bow_trajectory" do
    assert_difference("BowTrajectory.count", -1) do
      delete bow_trajectory_url(@bow_trajectory)
    end

    assert_redirected_to bow_trajectories_url
  end
end
