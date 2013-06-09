require 'test_helper'

class TipsControllerTest < ActionController::TestCase
  setup do
    @tip = tips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tip" do
    height = '6\'2\"'

    assert_difference('Tip.count') do
      post :create, tip: {
        :location => "foo",
        :crime_type => "bar",
        :has_occurred => true,
        :height => height}
    end

    assert_redirected_to tip_path(assigns(:tip))

    assert_equal "foo", assigns(:tip).location
    assert_equal "bar", assigns(:tip).crime_type
    assert assigns(:tip).has_occurred
    assert_equal height, assigns(:tip).height
  end

  test "should show tip" do
    get :show, id: @tip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tip
    assert_response :success
  end

  test "should update tip" do
    patch :update, id: @tip, tip: {  }
    assert_redirected_to tip_path(assigns(:tip))
  end

  test "should destroy tip" do
    assert_difference('Tip.count', -1) do
      delete :destroy, id: @tip
    end

    assert_redirected_to tips_path
  end

  test "should geocode tip" do
    post :create, tip: {
      :location => "Current Location",
      :crime_type => "Assault",
      :has_occurred => true,
      :geocoded => true,
      :lat => 37.78,
      :long => -122.396
    }

    assert_redirected_to tip_path(assigns(:tip))

    assert_not_equal "Current Location", assigns(:tip).location
    assert_not_nil assigns(:tip).lat
    assert_not_nil assigns(:tip).long
  end
end
