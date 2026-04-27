require "test_helper"

class CompositeursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compositeur = compositeurs(:one)
  end

  test "should get index" do
    get compositeurs_url
    assert_response :success
  end

  test "should get new" do
    get new_compositeur_url
    assert_response :success
  end

  test "should create compositeur" do
    assert_difference("Compositeur.count") do
      post compositeurs_url, params: { compositeur: { epoque_id: @compositeur.epoque_id, nationalite: @compositeur.nationalite, nom: @compositeur.nom } }
    end

    assert_redirected_to compositeur_url(Compositeur.last)
  end

  test "should show compositeur" do
    get compositeur_url(@compositeur)
    assert_response :success
  end

  test "should get edit" do
    get edit_compositeur_url(@compositeur)
    assert_response :success
  end

  test "should update compositeur" do
    patch compositeur_url(@compositeur), params: { compositeur: { epoque_id: @compositeur.epoque_id, nationalite: @compositeur.nationalite, nom: @compositeur.nom } }
    assert_redirected_to compositeur_url(@compositeur)
  end

  test "should destroy compositeur" do
    assert_difference("Compositeur.count", -1) do
      delete compositeur_url(@compositeur)
    end

    assert_redirected_to compositeurs_url
  end
end
