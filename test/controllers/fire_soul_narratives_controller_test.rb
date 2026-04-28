require "test_helper"

class FireSoulNarrativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fire_soul_narrative = fire_soul_narratives(:one)
  end

  test "should get index" do
    get fire_soul_narratives_url
    assert_response :success
  end

  test "should get new" do
    get new_fire_soul_narrative_url
    assert_response :success
  end

  test "should create fire_soul_narrative" do
    assert_difference("FireSoulNarrative.count") do
      post fire_soul_narratives_url, params: { fire_soul_narrative: { aesthetic_principle: @fire_soul_narrative.aesthetic_principle, compositeur_intention: @fire_soul_narrative.compositeur_intention, epoch_fingerprint: @fire_soul_narrative.epoch_fingerprint, fire_point_id: @fire_soul_narrative.fire_point_id, violinist_wisdom: @fire_soul_narrative.violinist_wisdom } }
    end

    assert_redirected_to fire_soul_narrative_url(FireSoulNarrative.last)
  end

  test "should show fire_soul_narrative" do
    get fire_soul_narrative_url(@fire_soul_narrative)
    assert_response :success
  end

  test "should get edit" do
    get edit_fire_soul_narrative_url(@fire_soul_narrative)
    assert_response :success
  end

  test "should update fire_soul_narrative" do
    patch fire_soul_narrative_url(@fire_soul_narrative), params: { fire_soul_narrative: { aesthetic_principle: @fire_soul_narrative.aesthetic_principle, compositeur_intention: @fire_soul_narrative.compositeur_intention, epoch_fingerprint: @fire_soul_narrative.epoch_fingerprint, fire_point_id: @fire_soul_narrative.fire_point_id, violinist_wisdom: @fire_soul_narrative.violinist_wisdom } }
    assert_redirected_to fire_soul_narrative_url(@fire_soul_narrative)
  end

  test "should destroy fire_soul_narrative" do
    assert_difference("FireSoulNarrative.count", -1) do
      delete fire_soul_narrative_url(@fire_soul_narrative)
    end

    assert_redirected_to fire_soul_narratives_url
  end
end
