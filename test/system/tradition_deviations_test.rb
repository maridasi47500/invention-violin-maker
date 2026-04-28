require "application_system_test_case"

class TraditionDeviationsTest < ApplicationSystemTestCase
  setup do
    @tradition_deviation = tradition_deviations(:one)
  end

  test "visiting the index" do
    visit tradition_deviations_url
    assert_selector "h1", text: "Tradition deviations"
  end

  test "should create tradition deviation" do
    visit tradition_deviations_url
    click_on "New tradition deviation"

    fill_in "Compositeur", with: @tradition_deviation.compositeur_id
    fill_in "Consequence", with: @tradition_deviation.consequence
    fill_in "Fire point", with: @tradition_deviation.fire_point_id
    fill_in "Reason", with: @tradition_deviation.reason
    fill_in "Tradition says", with: @tradition_deviation.tradition_says
    fill_in "Violinist does", with: @tradition_deviation.violinist_does
    click_on "Create Tradition deviation"

    assert_text "Tradition deviation was successfully created"
    click_on "Back"
  end

  test "should update Tradition deviation" do
    visit tradition_deviation_url(@tradition_deviation)
    click_on "Edit this tradition deviation", match: :first

    fill_in "Compositeur", with: @tradition_deviation.compositeur_id
    fill_in "Consequence", with: @tradition_deviation.consequence
    fill_in "Fire point", with: @tradition_deviation.fire_point_id
    fill_in "Reason", with: @tradition_deviation.reason
    fill_in "Tradition says", with: @tradition_deviation.tradition_says
    fill_in "Violinist does", with: @tradition_deviation.violinist_does
    click_on "Update Tradition deviation"

    assert_text "Tradition deviation was successfully updated"
    click_on "Back"
  end

  test "should destroy Tradition deviation" do
    visit tradition_deviation_url(@tradition_deviation)
    click_on "Destroy this tradition deviation", match: :first

    assert_text "Tradition deviation was successfully destroyed"
  end
end
