require "test_helper"

class CordesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corde = cordes(:one)
  end

  test "should get index" do
    get cordes_url
    assert_response :success
  end

  test "should get new" do
    get new_corde_url
    assert_response :success
  end

  test "should create corde" do
    assert_difference("Corde.count") do
      post cordes_url, params: { corde: { nom: @corde.nom } }
    end

    assert_redirected_to corde_url(Corde.last)
  end

  test "should show corde" do
    get corde_url(@corde)
    assert_response :success
  end

  test "should get edit" do
    get edit_corde_url(@corde)
    assert_response :success
  end

  test "should update corde" do
    patch corde_url(@corde), params: { corde: { nom: @corde.nom } }
    assert_redirected_to corde_url(@corde)
  end

  test "should destroy corde" do
    assert_difference("Corde.count", -1) do
      delete corde_url(@corde)
    end

    assert_redirected_to cordes_url
  end
end
