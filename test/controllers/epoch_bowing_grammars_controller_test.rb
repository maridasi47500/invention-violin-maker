require "test_helper"

class EpochBowingGrammarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @epoch_bowing_grammar = epoch_bowing_grammars(:one)
  end

  test "should get index" do
    get epoch_bowing_grammars_url
    assert_response :success
  end

  test "should get new" do
    get new_epoch_bowing_grammar_url
    assert_response :success
  end

  test "should create epoch_bowing_grammar" do
    assert_difference("EpochBowingGrammar.count") do
      post epoch_bowing_grammars_url, params: { epoch_bowing_grammar: { bow_stroke: @epoch_bowing_grammar.bow_stroke, context: @epoch_bowing_grammar.context, epoch: @epoch_bowing_grammar.epoch, likelihood: @epoch_bowing_grammar.likelihood } }
    end

    assert_redirected_to epoch_bowing_grammar_url(EpochBowingGrammar.last)
  end

  test "should show epoch_bowing_grammar" do
    get epoch_bowing_grammar_url(@epoch_bowing_grammar)
    assert_response :success
  end

  test "should get edit" do
    get edit_epoch_bowing_grammar_url(@epoch_bowing_grammar)
    assert_response :success
  end

  test "should update epoch_bowing_grammar" do
    patch epoch_bowing_grammar_url(@epoch_bowing_grammar), params: { epoch_bowing_grammar: { bow_stroke: @epoch_bowing_grammar.bow_stroke, context: @epoch_bowing_grammar.context, epoch: @epoch_bowing_grammar.epoch, likelihood: @epoch_bowing_grammar.likelihood } }
    assert_redirected_to epoch_bowing_grammar_url(@epoch_bowing_grammar)
  end

  test "should destroy epoch_bowing_grammar" do
    assert_difference("EpochBowingGrammar.count", -1) do
      delete epoch_bowing_grammar_url(@epoch_bowing_grammar)
    end

    assert_redirected_to epoch_bowing_grammars_url
  end
end
