require "application_system_test_case"

class ElbowBreathingsTest < ApplicationSystemTestCase
  setup do
    @elbow_breathing = elbow_breathings(:one)
  end

  test "visiting the index" do
    visit elbow_breathings_url
    assert_selector "h1", text: "Elbow breathings"
  end

  test "should create elbow breathing" do
    visit elbow_breathings_url
    click_on "New elbow breathing"

    fill_in "Body mechanic", with: @elbow_breathing.body_mechanic_id
    fill_in "Breathing present", with: @elbow_breathing.breathing_present
    fill_in "Micro release frequency", with: @elbow_breathing.micro_release_frequency
    fill_in "Rigidity level", with: @elbow_breathing.rigidity_level
    fill_in "Sound quality breathing", with: @elbow_breathing.sound_quality_breathing
    fill_in "Sound quality rigid", with: @elbow_breathing.sound_quality_rigid
    click_on "Create Elbow breathing"

    assert_text "Elbow breathing was successfully created"
    click_on "Back"
  end

  test "should update Elbow breathing" do
    visit elbow_breathing_url(@elbow_breathing)
    click_on "Edit this elbow breathing", match: :first

    fill_in "Body mechanic", with: @elbow_breathing.body_mechanic_id
    fill_in "Breathing present", with: @elbow_breathing.breathing_present
    fill_in "Micro release frequency", with: @elbow_breathing.micro_release_frequency
    fill_in "Rigidity level", with: @elbow_breathing.rigidity_level
    fill_in "Sound quality breathing", with: @elbow_breathing.sound_quality_breathing
    fill_in "Sound quality rigid", with: @elbow_breathing.sound_quality_rigid
    click_on "Update Elbow breathing"

    assert_text "Elbow breathing was successfully updated"
    click_on "Back"
  end

  test "should destroy Elbow breathing" do
    visit elbow_breathing_url(@elbow_breathing)
    click_on "Destroy this elbow breathing", match: :first

    assert_text "Elbow breathing was successfully destroyed"
  end
end
