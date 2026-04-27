require "test_helper"

class PuceCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puce_category = puce_categories(:one)
  end

  test "should get index" do
    get puce_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_puce_category_url
    assert_response :success
  end

  test "should create puce_category" do
    assert_difference("PuceCategory.count") do
      post puce_categories_url, params: { puce_category: { description: @puce_category.description, nom: @puce_category.nom } }
    end

    assert_redirected_to puce_category_url(PuceCategory.last)
  end

  test "should show puce_category" do
    get puce_category_url(@puce_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_puce_category_url(@puce_category)
    assert_response :success
  end

  test "should update puce_category" do
    patch puce_category_url(@puce_category), params: { puce_category: { description: @puce_category.description, nom: @puce_category.nom } }
    assert_redirected_to puce_category_url(@puce_category)
  end

  test "should destroy puce_category" do
    assert_difference("PuceCategory.count", -1) do
      delete puce_category_url(@puce_category)
    end

    assert_redirected_to puce_categories_url
  end
end
