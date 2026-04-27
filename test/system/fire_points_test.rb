require "application_system_test_case"

class FirePointsTest < ApplicationSystemTestCase
  setup do
    @fire_point = fire_points(:one)
  end

  test "visiting the index" do
    visit fire_points_url
    assert_selector "h1", text: "Fire points"
  end

  test "should create fire point" do
    visit fire_points_url
    click_on "New fire point"

    fill_in "Coup archet", with: @fire_point.coup_archet_id
    fill_in "Oeuvre", with: @fire_point.oeuvre_id
    fill_in "String spirit", with: @fire_point.string_spirit_id
    click_on "Create Fire point"

    assert_text "Fire point was successfully created"
    click_on "Back"
  end

  test "should update Fire point" do
    visit fire_point_url(@fire_point)
    click_on "Edit this fire point", match: :first

    fill_in "Coup archet", with: @fire_point.coup_archet_id
    fill_in "Oeuvre", with: @fire_point.oeuvre_id
    fill_in "String spirit", with: @fire_point.string_spirit_id
    click_on "Update Fire point"

    assert_text "Fire point was successfully updated"
    click_on "Back"
  end

  test "should destroy Fire point" do
    visit fire_point_url(@fire_point)
    click_on "Destroy this fire point", match: :first

    assert_text "Fire point was successfully destroyed"
  end
end
