require "test_helper"

class ElbowBreathingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elbow_breathing = elbow_breathings(:one)
  end

  test "should get index" do
    get elbow_breathings_url
    assert_response :success
  end

  test "should get new" do
    get new_elbow_breathing_url
    assert_response :success
  end

  test "should create elbow_breathing" do
    assert_difference("ElbowBreathing.count") do
      post elbow_breathings_url, params: { elbow_breathing: { body_mechanic_id: @elbow_breathing.body_mechanic_id, breathing_present: @elbow_breathing.breathing_present, micro_release_frequency: @elbow_breathing.micro_release_frequency, rigidity_level: @elbow_breathing.rigidity_level, sound_quality_breathing: @elbow_breathing.sound_quality_breathing, sound_quality_rigid: @elbow_breathing.sound_quality_rigid } }
    end

    assert_redirected_to elbow_breathing_url(ElbowBreathing.last)
  end

  test "should show elbow_breathing" do
    get elbow_breathing_url(@elbow_breathing)
    assert_response :success
  end

  test "should get edit" do
    get edit_elbow_breathing_url(@elbow_breathing)
    assert_response :success
  end

  test "should update elbow_breathing" do
    patch elbow_breathing_url(@elbow_breathing), params: { elbow_breathing: { body_mechanic_id: @elbow_breathing.body_mechanic_id, breathing_present: @elbow_breathing.breathing_present, micro_release_frequency: @elbow_breathing.micro_release_frequency, rigidity_level: @elbow_breathing.rigidity_level, sound_quality_breathing: @elbow_breathing.sound_quality_breathing, sound_quality_rigid: @elbow_breathing.sound_quality_rigid } }
    assert_redirected_to elbow_breathing_url(@elbow_breathing)
  end

  test "should destroy elbow_breathing" do
    assert_difference("ElbowBreathing.count", -1) do
      delete elbow_breathing_url(@elbow_breathing)
    end

    assert_redirected_to elbow_breathings_url
  end
end
