require "test_helper"

class EpochValidationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @epoch_validation = epoch_validations(:one)
  end

  test "should get index" do
    get epoch_validations_url
    assert_response :success
  end

  test "should get new" do
    get new_epoch_validation_url
    assert_response :success
  end

  test "should create epoch_validation" do
    assert_difference("EpochValidation.count") do
      post epoch_validations_url, params: { epoch_validation: { actual_bow_stroke: @epoch_validation.actual_bow_stroke, discrepancy: @epoch_validation.discrepancy, epoch_hypothesis_id: @epoch_validation.epoch_hypothesis_id, matches_hypothesis: @epoch_validation.matches_hypothesis } }
    end

    assert_redirected_to epoch_validation_url(EpochValidation.last)
  end

  test "should show epoch_validation" do
    get epoch_validation_url(@epoch_validation)
    assert_response :success
  end

  test "should get edit" do
    get edit_epoch_validation_url(@epoch_validation)
    assert_response :success
  end

  test "should update epoch_validation" do
    patch epoch_validation_url(@epoch_validation), params: { epoch_validation: { actual_bow_stroke: @epoch_validation.actual_bow_stroke, discrepancy: @epoch_validation.discrepancy, epoch_hypothesis_id: @epoch_validation.epoch_hypothesis_id, matches_hypothesis: @epoch_validation.matches_hypothesis } }
    assert_redirected_to epoch_validation_url(@epoch_validation)
  end

  test "should destroy epoch_validation" do
    assert_difference("EpochValidation.count", -1) do
      delete epoch_validation_url(@epoch_validation)
    end

    assert_redirected_to epoch_validations_url
  end
end
