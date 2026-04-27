require "test_helper"

class ExempleMusicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exemple_musical = exemple_musicals(:one)
  end

  test "should get index" do
    get exemple_musicals_url
    assert_response :success
  end

  test "should get new" do
    get new_exemple_musical_url
    assert_response :success
  end

  test "should create exemple_musical" do
    assert_difference("ExempleMusical.count") do
      post exemple_musicals_url, params: { exemple_musical: { coup_archet_id: @exemple_musical.coup_archet_id, description: @exemple_musical.description, mesure: @exemple_musical.mesure, oeuvre_id: @exemple_musical.oeuvre_id } }
    end

    assert_redirected_to exemple_musical_url(ExempleMusical.last)
  end

  test "should show exemple_musical" do
    get exemple_musical_url(@exemple_musical)
    assert_response :success
  end

  test "should get edit" do
    get edit_exemple_musical_url(@exemple_musical)
    assert_response :success
  end

  test "should update exemple_musical" do
    patch exemple_musical_url(@exemple_musical), params: { exemple_musical: { coup_archet_id: @exemple_musical.coup_archet_id, description: @exemple_musical.description, mesure: @exemple_musical.mesure, oeuvre_id: @exemple_musical.oeuvre_id } }
    assert_redirected_to exemple_musical_url(@exemple_musical)
  end

  test "should destroy exemple_musical" do
    assert_difference("ExempleMusical.count", -1) do
      delete exemple_musical_url(@exemple_musical)
    end

    assert_redirected_to exemple_musicals_url
  end
end
