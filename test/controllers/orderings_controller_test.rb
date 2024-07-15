require "test_helper"

class OrderingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordering = orderings(:one)
  end

  test "should get index" do
    get orderings_url
    assert_response :success
  end

  test "should get new" do
    get new_ordering_url
    assert_response :success
  end

  test "should create ordering" do
    assert_difference("Ordering.count") do
      post orderings_url, params: { ordering: { cinema_placing_id: @ordering.cinema_placing_id, movie_detail_id: @ordering.movie_detail_id } }
    end

    assert_redirected_to ordering_url(Ordering.last)
  end

  test "should show ordering" do
    get ordering_url(@ordering)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordering_url(@ordering)
    assert_response :success
  end

  test "should update ordering" do
    patch ordering_url(@ordering), params: { ordering: { cinema_placing_id: @ordering.cinema_placing_id, movie_detail_id: @ordering.movie_detail_id } }
    assert_redirected_to ordering_url(@ordering)
  end

  test "should destroy ordering" do
    assert_difference("Ordering.count", -1) do
      delete ordering_url(@ordering)
    end

    assert_redirected_to orderings_url
  end
end
