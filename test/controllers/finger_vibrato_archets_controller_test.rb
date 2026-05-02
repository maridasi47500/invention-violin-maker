require "test_helper"

class FingerVibratoArchetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finger_vibrato_archet = finger_vibrato_archets(:one)
  end

  test "should get index" do
    get finger_vibrato_archets_url
    assert_response :success
  end

  test "should get new" do
    get new_finger_vibrato_archet_url
    assert_response :success
  end

  test "should create finger_vibrato_archet" do
    assert_difference("FingerVibratoArchet.count") do
      post finger_vibrato_archets_url, params: { finger_vibrato_archet: { body_mechanic_id: @finger_vibrato_archet.body_mechanic_id, nuance_quality: @finger_vibrato_archet.nuance_quality, oscillation_frequency_hz: @finger_vibrato_archet.oscillation_frequency_hz, phalange_oscillation: @finger_vibrato_archet.phalange_oscillation, sound_alive_with_vibrato: @finger_vibrato_archet.sound_alive_with_vibrato, sound_flat_without_vibrato: @finger_vibrato_archet.sound_flat_without_vibrato, vibrato_natural: @finger_vibrato_archet.vibrato_natural } }
    end

    assert_redirected_to finger_vibrato_archet_url(FingerVibratoArchet.last)
  end

  test "should show finger_vibrato_archet" do
    get finger_vibrato_archet_url(@finger_vibrato_archet)
    assert_response :success
  end

  test "should get edit" do
    get edit_finger_vibrato_archet_url(@finger_vibrato_archet)
    assert_response :success
  end

  test "should update finger_vibrato_archet" do
    patch finger_vibrato_archet_url(@finger_vibrato_archet), params: { finger_vibrato_archet: { body_mechanic_id: @finger_vibrato_archet.body_mechanic_id, nuance_quality: @finger_vibrato_archet.nuance_quality, oscillation_frequency_hz: @finger_vibrato_archet.oscillation_frequency_hz, phalange_oscillation: @finger_vibrato_archet.phalange_oscillation, sound_alive_with_vibrato: @finger_vibrato_archet.sound_alive_with_vibrato, sound_flat_without_vibrato: @finger_vibrato_archet.sound_flat_without_vibrato, vibrato_natural: @finger_vibrato_archet.vibrato_natural } }
    assert_redirected_to finger_vibrato_archet_url(@finger_vibrato_archet)
  end

  test "should destroy finger_vibrato_archet" do
    assert_difference("FingerVibratoArchet.count", -1) do
      delete finger_vibrato_archet_url(@finger_vibrato_archet)
    end

    assert_redirected_to finger_vibrato_archets_url
  end
end
