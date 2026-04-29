require "test_helper"

class ViolonistesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @violoniste = violonistes(:one)
  end

  test "should get index" do
    get violonistes_url
    assert_response :success
  end

  test "should get new" do
    get new_violoniste_url
    assert_response :success
  end

  test "should create violoniste" do
    assert_difference("Violoniste.count") do
      post violonistes_url, params: { violoniste: { nom: @violoniste.nom } }
    end

    assert_redirected_to violoniste_url(Violoniste.last)
  end

  test "should show violoniste" do
    get violoniste_url(@violoniste)
    assert_response :success
  end

  test "should get edit" do
    get edit_violoniste_url(@violoniste)
    assert_response :success
  end

  test "should update violoniste" do
    patch violoniste_url(@violoniste), params: { violoniste: { nom: @violoniste.nom } }
    assert_redirected_to violoniste_url(@violoniste)
  end

  test "should destroy violoniste" do
    assert_difference("Violoniste.count", -1) do
      delete violoniste_url(@violoniste)
    end

    assert_redirected_to violonistes_url
  end
end
