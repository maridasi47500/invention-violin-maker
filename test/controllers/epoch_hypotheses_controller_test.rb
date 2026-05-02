require "test_helper"

class EpochHypothesesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @epoch_hypothesis = epoch_hypotheses(:one)
  end

  test "should get index" do
    get epoch_hypotheses_url
    assert_response :success
  end

  test "should get new" do
    get new_epoch_hypothesis_url
    assert_response :success
  end

  test "should create epoch_hypothesis" do
    assert_difference("EpochHypothesis.count") do
      post epoch_hypotheses_url, params: { epoch_hypothesis: { bow_stroke_hypothesis: @epoch_hypothesis.bow_stroke_hypothesis, confidence_percent: @epoch_hypothesis.confidence_percent, epoch_detected: @epoch_hypothesis.epoch_detected, experience_id: @epoch_hypothesis.experience_id, reason: @epoch_hypothesis.reason } }
    end

    assert_redirected_to epoch_hypothesis_url(EpochHypothesis.last)
  end

  test "should show epoch_hypothesis" do
    get epoch_hypothesis_url(@epoch_hypothesis)
    assert_response :success
  end

  test "should get edit" do
    get edit_epoch_hypothesis_url(@epoch_hypothesis)
    assert_response :success
  end

  test "should update epoch_hypothesis" do
    patch epoch_hypothesis_url(@epoch_hypothesis), params: { epoch_hypothesis: { bow_stroke_hypothesis: @epoch_hypothesis.bow_stroke_hypothesis, confidence_percent: @epoch_hypothesis.confidence_percent, epoch_detected: @epoch_hypothesis.epoch_detected, experience_id: @epoch_hypothesis.experience_id, reason: @epoch_hypothesis.reason } }
    assert_redirected_to epoch_hypothesis_url(@epoch_hypothesis)
  end

  test "should destroy epoch_hypothesis" do
    assert_difference("EpochHypothesis.count", -1) do
      delete epoch_hypothesis_url(@epoch_hypothesis)
    end

    assert_redirected_to epoch_hypotheses_url
  end
end
