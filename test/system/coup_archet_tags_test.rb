require "application_system_test_case"

class CoupArchetTagsTest < ApplicationSystemTestCase
  setup do
    @coup_archet_tag = coup_archet_tags(:one)
  end

  test "visiting the index" do
    visit coup_archet_tags_url
    assert_selector "h1", text: "Coup archet tags"
  end

  test "should create coup archet tag" do
    visit coup_archet_tags_url
    click_on "New coup archet tag"

    fill_in "Coup archet", with: @coup_archet_tag.coup_archet_id
    fill_in "Tag", with: @coup_archet_tag.tag_id
    click_on "Create Coup archet tag"

    assert_text "Coup archet tag was successfully created"
    click_on "Back"
  end

  test "should update Coup archet tag" do
    visit coup_archet_tag_url(@coup_archet_tag)
    click_on "Edit this coup archet tag", match: :first

    fill_in "Coup archet", with: @coup_archet_tag.coup_archet_id
    fill_in "Tag", with: @coup_archet_tag.tag_id
    click_on "Update Coup archet tag"

    assert_text "Coup archet tag was successfully updated"
    click_on "Back"
  end

  test "should destroy Coup archet tag" do
    visit coup_archet_tag_url(@coup_archet_tag)
    click_on "Destroy this coup archet tag", match: :first

    assert_text "Coup archet tag was successfully destroyed"
  end
end
