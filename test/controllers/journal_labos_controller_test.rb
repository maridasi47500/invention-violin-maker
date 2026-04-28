require "test_helper"

class JournalLabosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @journal_labo = journal_labos(:one)
  end

  test "should get index" do
    get journal_labos_url
    assert_response :success
  end

  test "should get new" do
    get new_journal_labo_url
    assert_response :success
  end

  test "should create journal_labo" do
    assert_difference("JournalLabo.count") do
      post journal_labos_url, params: { journal_labo: { date: @journal_labo.date, mesure: @journal_labo.mesure, oeuvre_id: @journal_labo.oeuvre_id } }
    end

    assert_redirected_to journal_labo_url(JournalLabo.last)
  end

  test "should show journal_labo" do
    get journal_labo_url(@journal_labo)
    assert_response :success
  end

  test "should get edit" do
    get edit_journal_labo_url(@journal_labo)
    assert_response :success
  end

  test "should update journal_labo" do
    patch journal_labo_url(@journal_labo), params: { journal_labo: { date: @journal_labo.date, mesure: @journal_labo.mesure, oeuvre_id: @journal_labo.oeuvre_id } }
    assert_redirected_to journal_labo_url(@journal_labo)
  end

  test "should destroy journal_labo" do
    assert_difference("JournalLabo.count", -1) do
      delete journal_labo_url(@journal_labo)
    end

    assert_redirected_to journal_labos_url
  end
end
