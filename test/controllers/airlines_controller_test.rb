require 'test_helper'

class AirlinesControllerTest < ActionController::TestCase
  setup do
    @airline = airlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airline" do
    assert_difference('Airline.count') do
      post :create, airline: { active: @airline.active, alias: @airline.alias, callsign: @airline.callsign, country: @airline.country, iata: @airline.iata, icao: @airline.icao, id: @airline.id, name: @airline.name }
    end

    assert_redirected_to airline_path(assigns(:airline))
  end

  test "should show airline" do
    get :show, id: @airline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airline
    assert_response :success
  end

  test "should update airline" do
    patch :update, id: @airline, airline: { active: @airline.active, alias: @airline.alias, callsign: @airline.callsign, country: @airline.country, iata: @airline.iata, icao: @airline.icao, id: @airline.id, name: @airline.name }
    assert_redirected_to airline_path(assigns(:airline))
  end

  test "should destroy airline" do
    assert_difference('Airline.count', -1) do
      delete :destroy, id: @airline
    end

    assert_redirected_to airlines_path
  end
end
