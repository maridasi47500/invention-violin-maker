require "application_system_test_case"

class FingerVibratoArchetsTest < ApplicationSystemTestCase
  setup do
    @finger_vibrato_archet = finger_vibrato_archets(:one)
  end

  test "visiting the index" do
    visit finger_vibrato_archets_url
    assert_selector "h1", text: "Finger vibrato archets"
  end

  test "should create finger vibrato archet" do
    visit finger_vibrato_archets_url
    click_on "New finger vibrato archet"

    fill_in "Body mechanic", with: @finger_vibrato_archet.body_mechanic_id
    fill_in "Nuance quality", with: @finger_vibrato_archet.nuance_quality
    fill_in "Oscillation frequency hz", with: @finger_vibrato_archet.oscillation_frequency_hz
    check "Phalange oscillation" if @finger_vibrato_archet.phalange_oscillation
    fill_in "Sound alive with vibrato", with: @finger_vibrato_archet.sound_alive_with_vibrato
    fill_in "Sound flat without vibrato", with: @finger_vibrato_archet.sound_flat_without_vibrato
    check "Vibrato natural" if @finger_vibrato_archet.vibrato_natural
    click_on "Create Finger vibrato archet"

    assert_text "Finger vibrato archet was successfully created"
    click_on "Back"
  end

  test "should update Finger vibrato archet" do
    visit finger_vibrato_archet_url(@finger_vibrato_archet)
    click_on "Edit this finger vibrato archet", match: :first

    fill_in "Body mechanic", with: @finger_vibrato_archet.body_mechanic_id
    fill_in "Nuance quality", with: @finger_vibrato_archet.nuance_quality
    fill_in "Oscillation frequency hz", with: @finger_vibrato_archet.oscillation_frequency_hz
    check "Phalange oscillation" if @finger_vibrato_archet.phalange_oscillation
    fill_in "Sound alive with vibrato", with: @finger_vibrato_archet.sound_alive_with_vibrato
    fill_in "Sound flat without vibrato", with: @finger_vibrato_archet.sound_flat_without_vibrato
    check "Vibrato natural" if @finger_vibrato_archet.vibrato_natural
    click_on "Update Finger vibrato archet"

    assert_text "Finger vibrato archet was successfully updated"
    click_on "Back"
  end

  test "should destroy Finger vibrato archet" do
    visit finger_vibrato_archet_url(@finger_vibrato_archet)
    click_on "Destroy this finger vibrato archet", match: :first

    assert_text "Finger vibrato archet was successfully destroyed"
  end
end
