require 'test_helper'

class AttributeReferencesControllerTest < ActionController::TestCase
  setup do
    @attribute_reference = attribute_references(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attribute_references)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attribute_reference" do
    assert_difference('AttributeReference.count') do
      post :create, attribute_reference: {  }
    end

    assert_redirected_to attribute_reference_path(assigns(:attribute_reference))
  end

  test "should show attribute_reference" do
    get :show, id: @attribute_reference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attribute_reference
    assert_response :success
  end

  test "should update attribute_reference" do
    patch :update, id: @attribute_reference, attribute_reference: {  }
    assert_redirected_to attribute_reference_path(assigns(:attribute_reference))
  end

  test "should destroy attribute_reference" do
    assert_difference('AttributeReference.count', -1) do
      delete :destroy, id: @attribute_reference
    end

    assert_redirected_to attribute_references_path
  end
end
