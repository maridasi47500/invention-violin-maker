require "application_system_test_case"

class EpoquesTest < ApplicationSystemTestCase
  setup do
    @epoque = epoques(:one)
  end

  test "visiting the index" do
    visit epoques_url
    assert_selector "h1", text: "Epoques"
  end

  test "should create epoque" do
    visit epoques_url
    click_on "New epoque"

    fill_in "Nom", with: @epoque.nom
    click_on "Create Epoque"

    assert_text "Epoque was successfully created"
    click_on "Back"
  end

  test "should update Epoque" do
    visit epoque_url(@epoque)
    click_on "Edit this epoque", match: :first

    fill_in "Nom", with: @epoque.nom
    click_on "Update Epoque"

    assert_text "Epoque was successfully updated"
    click_on "Back"
  end

  test "should destroy Epoque" do
    visit epoque_url(@epoque)
    click_on "Destroy this epoque", match: :first

    assert_text "Epoque was successfully destroyed"
  end
end
