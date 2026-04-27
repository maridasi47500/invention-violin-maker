require "application_system_test_case"

class CordesTest < ApplicationSystemTestCase
  setup do
    @corde = cordes(:one)
  end

  test "visiting the index" do
    visit cordes_url
    assert_selector "h1", text: "Cordes"
  end

  test "should create corde" do
    visit cordes_url
    click_on "New corde"

    fill_in "Nom", with: @corde.nom
    click_on "Create Corde"

    assert_text "Corde was successfully created"
    click_on "Back"
  end

  test "should update Corde" do
    visit corde_url(@corde)
    click_on "Edit this corde", match: :first

    fill_in "Nom", with: @corde.nom
    click_on "Update Corde"

    assert_text "Corde was successfully updated"
    click_on "Back"
  end

  test "should destroy Corde" do
    visit corde_url(@corde)
    click_on "Destroy this corde", match: :first

    assert_text "Corde was successfully destroyed"
  end
end
