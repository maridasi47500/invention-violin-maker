require "test_helper"

class DiscoveredMisreadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discovered_misreading = discovered_misreadings(:one)
  end

  test "should get index" do
    get discovered_misreadings_url
    assert_response :success
  end

  test "should get new" do
    get new_discovered_misreading_url
    assert_response :success
  end

  test "should create discovered_misreading" do
    assert_difference("DiscoveredMisreading.count") do
      post discovered_misreadings_url, params: { discovered_misreading: { epoch_hypothesis_id: @discovered_misreading.epoch_hypothesis_id, epoch_id: @discovered_misreading.epoch_id, from_clue: @discovered_misreading.from_clue, lesson: @discovered_misreading.lesson } }
    end

    assert_redirected_to discovered_misreading_url(DiscoveredMisreading.last)
  end

  test "should show discovered_misreading" do
    get discovered_misreading_url(@discovered_misreading)
    assert_response :success
  end

  test "should get edit" do
    get edit_discovered_misreading_url(@discovered_misreading)
    assert_response :success
  end

  test "should update discovered_misreading" do
    patch discovered_misreading_url(@discovered_misreading), params: { discovered_misreading: { epoch_hypothesis_id: @discovered_misreading.epoch_hypothesis_id, epoch_id: @discovered_misreading.epoch_id, from_clue: @discovered_misreading.from_clue, lesson: @discovered_misreading.lesson } }
    assert_redirected_to discovered_misreading_url(@discovered_misreading)
  end

  test "should destroy discovered_misreading" do
    assert_difference("DiscoveredMisreading.count", -1) do
      delete discovered_misreading_url(@discovered_misreading)
    end

    assert_redirected_to discovered_misreadings_url
  end
end
