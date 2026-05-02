require "test_helper"

class EpochCluesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @epoch_clue = epoch_clues(:one)
  end

  test "should get index" do
    get epoch_clues_url
    assert_response :success
  end

  test "should get new" do
    get new_epoch_clue_url
    assert_response :success
  end

  test "should create epoch_clue" do
    assert_difference("EpochClue.count") do
      post epoch_clues_url, params: { epoch_clue: { clue_type: @epoch_clue.clue_type, epoch: @epoch_clue.epoch, fire_point_id: @epoch_clue.fire_point_id, value: @epoch_clue.value, weight: @epoch_clue.weight } }
    end

    assert_redirected_to epoch_clue_url(EpochClue.last)
  end

  test "should show epoch_clue" do
    get epoch_clue_url(@epoch_clue)
    assert_response :success
  end

  test "should get edit" do
    get edit_epoch_clue_url(@epoch_clue)
    assert_response :success
  end

  test "should update epoch_clue" do
    patch epoch_clue_url(@epoch_clue), params: { epoch_clue: { clue_type: @epoch_clue.clue_type, epoch: @epoch_clue.epoch, fire_point_id: @epoch_clue.fire_point_id, value: @epoch_clue.value, weight: @epoch_clue.weight } }
    assert_redirected_to epoch_clue_url(@epoch_clue)
  end

  test "should destroy epoch_clue" do
    assert_difference("EpochClue.count", -1) do
      delete epoch_clue_url(@epoch_clue)
    end

    assert_redirected_to epoch_clues_url
  end
end
