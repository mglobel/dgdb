require 'test_helper'

class DrinkingGamesControllerTest < ActionController::TestCase
  setup do
    @drinking_game = drinking_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drinking_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drinking_game" do
    assert_difference('DrinkingGame.count') do
      post :create, drinking_game: { name: @drinking_game.name, players: @drinking_game.players, rules: @drinking_game.rules }
    end

    assert_redirected_to drinking_game_path(assigns(:drinking_game))
  end

  test "should show drinking_game" do
    get :show, id: @drinking_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drinking_game
    assert_response :success
  end

  test "should update drinking_game" do
    patch :update, id: @drinking_game, drinking_game: { name: @drinking_game.name, players: @drinking_game.players, rules: @drinking_game.rules }
    assert_redirected_to drinking_game_path(assigns(:drinking_game))
  end

  test "should destroy drinking_game" do
    assert_difference('DrinkingGame.count', -1) do
      delete :destroy, id: @drinking_game
    end

    assert_redirected_to drinking_games_path
  end
end
