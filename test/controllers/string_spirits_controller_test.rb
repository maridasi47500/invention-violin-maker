require "test_helper"

class StringSpiritsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @string_spirit = string_spirits(:one)
  end

  test "should get index" do
    get string_spirits_url
    assert_response :success
  end

  test "should get new" do
    get new_string_spirit_url
    assert_response :success
  end

  test "should create string_spirit" do
    assert_difference("StringSpirit.count") do
      post string_spirits_url, params: { string_spirit: { compositeur_id: @string_spirit.compositeur_id, corde_id: @string_spirit.corde_id, epoque_id: @string_spirit.epoque_id } }
    end

    assert_redirected_to string_spirit_url(StringSpirit.last)
  end

  test "should show string_spirit" do
    get string_spirit_url(@string_spirit)
    assert_response :success
  end

  test "should get edit" do
    get edit_string_spirit_url(@string_spirit)
    assert_response :success
  end

  test "should update string_spirit" do
    patch string_spirit_url(@string_spirit), params: { string_spirit: { compositeur_id: @string_spirit.compositeur_id, corde_id: @string_spirit.corde_id, epoque_id: @string_spirit.epoque_id } }
    assert_redirected_to string_spirit_url(@string_spirit)
  end

  test "should destroy string_spirit" do
    assert_difference("StringSpirit.count", -1) do
      delete string_spirit_url(@string_spirit)
    end

    assert_redirected_to string_spirits_url
  end
end
