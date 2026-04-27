require "application_system_test_case"

class PuceCategoriesTest < ApplicationSystemTestCase
  setup do
    @puce_category = puce_categories(:one)
  end

  test "visiting the index" do
    visit puce_categories_url
    assert_selector "h1", text: "Puce categories"
  end

  test "should create puce category" do
    visit puce_categories_url
    click_on "New puce category"

    fill_in "Description", with: @puce_category.description
    fill_in "Nom", with: @puce_category.nom
    click_on "Create Puce category"

    assert_text "Puce category was successfully created"
    click_on "Back"
  end

  test "should update Puce category" do
    visit puce_category_url(@puce_category)
    click_on "Edit this puce category", match: :first

    fill_in "Description", with: @puce_category.description
    fill_in "Nom", with: @puce_category.nom
    click_on "Update Puce category"

    assert_text "Puce category was successfully updated"
    click_on "Back"
  end

  test "should destroy Puce category" do
    visit puce_category_url(@puce_category)
    click_on "Destroy this puce category", match: :first

    assert_text "Puce category was successfully destroyed"
  end
end
