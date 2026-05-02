require "application_system_test_case"

class BodyMechanicsTest < ApplicationSystemTestCase
  setup do
    @body_mechanic = body_mechanics(:one)
  end

  test "visiting the index" do
    visit body_mechanics_url
    assert_selector "h1", text: "Body mechanics"
  end

  test "should create body mechanic" do
    visit body_mechanics_url
    click_on "New body mechanic"

    fill_in "Back posture", with: @body_mechanic.back_posture
    fill_in "Bow deviation notes", with: @body_mechanic.bow_deviation_notes
    check "Bow parallelism check" if @body_mechanic.bow_parallelism_check
    fill_in "Chin pressure", with: @body_mechanic.chin_pressure
    fill_in "Elbow angle degrees", with: @body_mechanic.elbow_angle_degrees
    fill_in "Elbow state", with: @body_mechanic.elbow_state
    fill_in "Index phalange state", with: @body_mechanic.index_phalange_state
    fill_in "Shoulder position", with: @body_mechanic.shoulder_position
    fill_in "Thumb position", with: @body_mechanic.thumb_position
    fill_in "Violin angle degrees", with: @body_mechanic.violin_angle_degrees
    fill_in "Wrist angle state", with: @body_mechanic.wrist_angle_state
    fill_in "Wrist extension degrees", with: @body_mechanic.wrist_extension_degrees
    click_on "Create Body mechanic"

    assert_text "Body mechanic was successfully created"
    click_on "Back"
  end

  test "should update Body mechanic" do
    visit body_mechanic_url(@body_mechanic)
    click_on "Edit this body mechanic", match: :first

    fill_in "Back posture", with: @body_mechanic.back_posture
    fill_in "Bow deviation notes", with: @body_mechanic.bow_deviation_notes
    check "Bow parallelism check" if @body_mechanic.bow_parallelism_check
    fill_in "Chin pressure", with: @body_mechanic.chin_pressure
    fill_in "Elbow angle degrees", with: @body_mechanic.elbow_angle_degrees
    fill_in "Elbow state", with: @body_mechanic.elbow_state
    fill_in "Index phalange state", with: @body_mechanic.index_phalange_state
    fill_in "Shoulder position", with: @body_mechanic.shoulder_position
    fill_in "Thumb position", with: @body_mechanic.thumb_position
    fill_in "Violin angle degrees", with: @body_mechanic.violin_angle_degrees
    fill_in "Wrist angle state", with: @body_mechanic.wrist_angle_state
    fill_in "Wrist extension degrees", with: @body_mechanic.wrist_extension_degrees
    click_on "Update Body mechanic"

    assert_text "Body mechanic was successfully updated"
    click_on "Back"
  end

  test "should destroy Body mechanic" do
    visit body_mechanic_url(@body_mechanic)
    click_on "Destroy this body mechanic", match: :first

    assert_text "Body mechanic was successfully destroyed"
  end
end
