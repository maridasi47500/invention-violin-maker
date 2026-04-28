require "test_helper"

class FireEvidencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fire_evidence = fire_evidences(:one)
  end

  test "should get index" do
    get fire_evidences_url
    assert_response :success
  end

  test "should get new" do
    get new_fire_evidence_url
    assert_response :success
  end

  test "should create fire_evidence" do
    assert_difference("FireEvidence.count") do
      post fire_evidences_url, params: { fire_evidence: { confidence: @fire_evidence.confidence, content: @fire_evidence.content, evidence_type: @fire_evidence.evidence_type, fire_point_id: @fire_evidence.fire_point_id, source: @fire_evidence.source, source_url: @fire_evidence.source_url } }
    end

    assert_redirected_to fire_evidence_url(FireEvidence.last)
  end

  test "should show fire_evidence" do
    get fire_evidence_url(@fire_evidence)
    assert_response :success
  end

  test "should get edit" do
    get edit_fire_evidence_url(@fire_evidence)
    assert_response :success
  end

  test "should update fire_evidence" do
    patch fire_evidence_url(@fire_evidence), params: { fire_evidence: { confidence: @fire_evidence.confidence, content: @fire_evidence.content, evidence_type: @fire_evidence.evidence_type, fire_point_id: @fire_evidence.fire_point_id, source: @fire_evidence.source, source_url: @fire_evidence.source_url } }
    assert_redirected_to fire_evidence_url(@fire_evidence)
  end

  test "should destroy fire_evidence" do
    assert_difference("FireEvidence.count", -1) do
      delete fire_evidence_url(@fire_evidence)
    end

    assert_redirected_to fire_evidences_url
  end
end
