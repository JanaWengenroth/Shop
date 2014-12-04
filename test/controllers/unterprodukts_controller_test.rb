require 'test_helper'

class UnterproduktsControllerTest < ActionController::TestCase
  setup do
    @unterprodukt = unterprodukts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unterprodukts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unterprodukt" do
    assert_difference('Unterprodukt.count') do
      post :create, unterprodukt: { menge: @unterprodukt.menge }
    end

    assert_redirected_to unterprodukt_path(assigns(:unterprodukt))
  end

  test "should show unterprodukt" do
    get :show, id: @unterprodukt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unterprodukt
    assert_response :success
  end

  test "should update unterprodukt" do
    patch :update, id: @unterprodukt, unterprodukt: { menge: @unterprodukt.menge }
    assert_redirected_to unterprodukt_path(assigns(:unterprodukt))
  end

  test "should destroy unterprodukt" do
    assert_difference('Unterprodukt.count', -1) do
      delete :destroy, id: @unterprodukt
    end

    assert_redirected_to unterprodukts_path
  end
end
