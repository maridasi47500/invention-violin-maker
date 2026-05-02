require "application_system_test_case"

class BowTrajectoriesTest < ApplicationSystemTestCase
  setup do
    @bow_trajectory = bow_trajectories(:one)
  end

  test "visiting the index" do
    visit bow_trajectories_url
    assert_selector "h1", text: "Bow trajectories"
  end

  test "should create bow trajectory" do
    visit bow_trajectories_url
    click_on "New bow trajectory"

    fill_in "Air time percentage", with: @bow_trajectory.air_time_percentage
    fill_in "Bow stroke type", with: @bow_trajectory.bow_stroke_type
    fill_in "Empty trajectory", with: @bow_trajectory.empty_trajectory
    fill_in "Friction trajectory", with: @bow_trajectory.friction_trajectory
    fill_in "Resonance quality", with: @bow_trajectory.resonance_quality
    fill_in "Tension buildup", with: @bow_trajectory.tension_buildup
    click_on "Create Bow trajectory"

    assert_text "Bow trajectory was successfully created"
    click_on "Back"
  end

  test "should update Bow trajectory" do
    visit bow_trajectory_url(@bow_trajectory)
    click_on "Edit this bow trajectory", match: :first

    fill_in "Air time percentage", with: @bow_trajectory.air_time_percentage
    fill_in "Bow stroke type", with: @bow_trajectory.bow_stroke_type
    fill_in "Empty trajectory", with: @bow_trajectory.empty_trajectory
    fill_in "Friction trajectory", with: @bow_trajectory.friction_trajectory
    fill_in "Resonance quality", with: @bow_trajectory.resonance_quality
    fill_in "Tension buildup", with: @bow_trajectory.tension_buildup
    click_on "Update Bow trajectory"

    assert_text "Bow trajectory was successfully updated"
    click_on "Back"
  end

  test "should destroy Bow trajectory" do
    visit bow_trajectory_url(@bow_trajectory)
    click_on "Destroy this bow trajectory", match: :first

    assert_text "Bow trajectory was successfully destroyed"
  end
end
