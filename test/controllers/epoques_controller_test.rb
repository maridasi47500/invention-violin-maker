require "test_helper"

class EpoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @epoque = epoques(:one)
  end

  test "should get index" do
    get epoques_url
    assert_response :success
  end

  test "should get new" do
    get new_epoque_url
    assert_response :success
  end

  test "should create epoque" do
    assert_difference("Epoque.count") do
      post epoques_url, params: { epoque: { nom: @epoque.nom } }
    end

    assert_redirected_to epoque_url(Epoque.last)
  end

  test "should show epoque" do
    get epoque_url(@epoque)
    assert_response :success
  end

  test "should get edit" do
    get edit_epoque_url(@epoque)
    assert_response :success
  end

  test "should update epoque" do
    patch epoque_url(@epoque), params: { epoque: { nom: @epoque.nom } }
    assert_redirected_to epoque_url(@epoque)
  end

  test "should destroy epoque" do
    assert_difference("Epoque.count", -1) do
      delete epoque_url(@epoque)
    end

    assert_redirected_to epoques_url
  end
end
