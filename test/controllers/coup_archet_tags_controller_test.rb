require "test_helper"

class CoupArchetTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coup_archet_tag = coup_archet_tags(:one)
  end

  test "should get index" do
    get coup_archet_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_coup_archet_tag_url
    assert_response :success
  end

  test "should create coup_archet_tag" do
    assert_difference("CoupArchetTag.count") do
      post coup_archet_tags_url, params: { coup_archet_tag: { coup_archet_id: @coup_archet_tag.coup_archet_id, tag_id: @coup_archet_tag.tag_id } }
    end

    assert_redirected_to coup_archet_tag_url(CoupArchetTag.last)
  end

  test "should show coup_archet_tag" do
    get coup_archet_tag_url(@coup_archet_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_coup_archet_tag_url(@coup_archet_tag)
    assert_response :success
  end

  test "should update coup_archet_tag" do
    patch coup_archet_tag_url(@coup_archet_tag), params: { coup_archet_tag: { coup_archet_id: @coup_archet_tag.coup_archet_id, tag_id: @coup_archet_tag.tag_id } }
    assert_redirected_to coup_archet_tag_url(@coup_archet_tag)
  end

  test "should destroy coup_archet_tag" do
    assert_difference("CoupArchetTag.count", -1) do
      delete coup_archet_tag_url(@coup_archet_tag)
    end

    assert_redirected_to coup_archet_tags_url
  end
end
