require "test_helper"

class BodyMechanicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @body_mechanic = body_mechanics(:one)
  end

  test "should get index" do
    get body_mechanics_url
    assert_response :success
  end

  test "should get new" do
    get new_body_mechanic_url
    assert_response :success
  end

  test "should create body_mechanic" do
    assert_difference("BodyMechanic.count") do
      post body_mechanics_url, params: { body_mechanic: { back_posture: @body_mechanic.back_posture, bow_deviation_notes: @body_mechanic.bow_deviation_notes, bow_parallelism_check: @body_mechanic.bow_parallelism_check, chin_pressure: @body_mechanic.chin_pressure, elbow_angle_degrees: @body_mechanic.elbow_angle_degrees, elbow_state: @body_mechanic.elbow_state, index_phalange_state: @body_mechanic.index_phalange_state, shoulder_position: @body_mechanic.shoulder_position, thumb_position: @body_mechanic.thumb_position, violin_angle_degrees: @body_mechanic.violin_angle_degrees, wrist_angle_state: @body_mechanic.wrist_angle_state, wrist_extension_degrees: @body_mechanic.wrist_extension_degrees } }
    end

    assert_redirected_to body_mechanic_url(BodyMechanic.last)
  end

  test "should show body_mechanic" do
    get body_mechanic_url(@body_mechanic)
    assert_response :success
  end

  test "should get edit" do
    get edit_body_mechanic_url(@body_mechanic)
    assert_response :success
  end

  test "should update body_mechanic" do
    patch body_mechanic_url(@body_mechanic), params: { body_mechanic: { back_posture: @body_mechanic.back_posture, bow_deviation_notes: @body_mechanic.bow_deviation_notes, bow_parallelism_check: @body_mechanic.bow_parallelism_check, chin_pressure: @body_mechanic.chin_pressure, elbow_angle_degrees: @body_mechanic.elbow_angle_degrees, elbow_state: @body_mechanic.elbow_state, index_phalange_state: @body_mechanic.index_phalange_state, shoulder_position: @body_mechanic.shoulder_position, thumb_position: @body_mechanic.thumb_position, violin_angle_degrees: @body_mechanic.violin_angle_degrees, wrist_angle_state: @body_mechanic.wrist_angle_state, wrist_extension_degrees: @body_mechanic.wrist_extension_degrees } }
    assert_redirected_to body_mechanic_url(@body_mechanic)
  end

  test "should destroy body_mechanic" do
    assert_difference("BodyMechanic.count", -1) do
      delete body_mechanic_url(@body_mechanic)
    end

    assert_redirected_to body_mechanics_url
  end
end
