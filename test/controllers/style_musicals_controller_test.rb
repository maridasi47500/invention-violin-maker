require "test_helper"

class StyleMusicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @style_musical = style_musicals(:one)
  end

  test "should get index" do
    get style_musicals_url
    assert_response :success
  end

  test "should get new" do
    get new_style_musical_url
    assert_response :success
  end

  test "should create style_musical" do
    assert_difference("StyleMusical.count") do
      post style_musicals_url, params: { style_musical: { nom: @style_musical.nom } }
    end

    assert_redirected_to style_musical_url(StyleMusical.last)
  end

  test "should show style_musical" do
    get style_musical_url(@style_musical)
    assert_response :success
  end

  test "should get edit" do
    get edit_style_musical_url(@style_musical)
    assert_response :success
  end

  test "should update style_musical" do
    patch style_musical_url(@style_musical), params: { style_musical: { nom: @style_musical.nom } }
    assert_redirected_to style_musical_url(@style_musical)
  end

  test "should destroy style_musical" do
    assert_difference("StyleMusical.count", -1) do
      delete style_musical_url(@style_musical)
    end

    assert_redirected_to style_musicals_url
  end
end
