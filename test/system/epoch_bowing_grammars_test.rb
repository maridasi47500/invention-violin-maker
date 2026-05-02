require "application_system_test_case"

class EpochBowingGrammarsTest < ApplicationSystemTestCase
  setup do
    @epoch_bowing_grammar = epoch_bowing_grammars(:one)
  end

  test "visiting the index" do
    visit epoch_bowing_grammars_url
    assert_selector "h1", text: "Epoch bowing grammars"
  end

  test "should create epoch bowing grammar" do
    visit epoch_bowing_grammars_url
    click_on "New epoch bowing grammar"

    fill_in "Bow stroke", with: @epoch_bowing_grammar.bow_stroke
    fill_in "Context", with: @epoch_bowing_grammar.context
    fill_in "Epoch", with: @epoch_bowing_grammar.epoch
    fill_in "Likelihood", with: @epoch_bowing_grammar.likelihood
    click_on "Create Epoch bowing grammar"

    assert_text "Epoch bowing grammar was successfully created"
    click_on "Back"
  end

  test "should update Epoch bowing grammar" do
    visit epoch_bowing_grammar_url(@epoch_bowing_grammar)
    click_on "Edit this epoch bowing grammar", match: :first

    fill_in "Bow stroke", with: @epoch_bowing_grammar.bow_stroke
    fill_in "Context", with: @epoch_bowing_grammar.context
    fill_in "Epoch", with: @epoch_bowing_grammar.epoch
    fill_in "Likelihood", with: @epoch_bowing_grammar.likelihood
    click_on "Update Epoch bowing grammar"

    assert_text "Epoch bowing grammar was successfully updated"
    click_on "Back"
  end

  test "should destroy Epoch bowing grammar" do
    visit epoch_bowing_grammar_url(@epoch_bowing_grammar)
    click_on "Destroy this epoch bowing grammar", match: :first

    assert_text "Epoch bowing grammar was successfully destroyed"
  end
end
