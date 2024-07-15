require "test_helper"

class CinemaPlacingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinema_placing = cinema_placings(:one)
  end

  test "should get index" do
    get cinema_placings_url
    assert_response :success
  end

  test "should get new" do
    get new_cinema_placing_url
    assert_response :success
  end

  test "should create cinema_placing" do
    assert_difference("CinemaPlacing.count") do
      post cinema_placings_url, params: { cinema_placing: { cinema_id: @cinema_placing.cinema_id, movie_detail_id: @cinema_placing.movie_detail_id, time: @cinema_placing.time } }
    end

    assert_redirected_to cinema_placing_url(CinemaPlacing.last)
  end

  test "should show cinema_placing" do
    get cinema_placing_url(@cinema_placing)
    assert_response :success
  end

  test "should get edit" do
    get edit_cinema_placing_url(@cinema_placing)
    assert_response :success
  end

  test "should update cinema_placing" do
    patch cinema_placing_url(@cinema_placing), params: { cinema_placing: { cinema_id: @cinema_placing.cinema_id, movie_detail_id: @cinema_placing.movie_detail_id, time: @cinema_placing.time } }
    assert_redirected_to cinema_placing_url(@cinema_placing)
  end

  test "should destroy cinema_placing" do
    assert_difference("CinemaPlacing.count", -1) do
      delete cinema_placing_url(@cinema_placing)
    end

    assert_redirected_to cinema_placings_url
  end
end
