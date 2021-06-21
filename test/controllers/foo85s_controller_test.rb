require "test_helper"

class Foo85sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo85 = foo85s(:one)
  end

  test "should get index" do
    get foo85s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo85_url
    assert_response :success
  end

  test "should create foo85" do
    assert_difference('Foo85.count') do
      post foo85s_url, params: { foo85: { foo1: @foo85.foo1, foo2: @foo85.foo2, foo3: @foo85.foo3, foo4: @foo85.foo4, foo5: @foo85.foo5 } }
    end

    assert_redirected_to foo85_url(Foo85.last)
  end

  test "should show foo85" do
    get foo85_url(@foo85)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo85_url(@foo85)
    assert_response :success
  end

  test "should update foo85" do
    patch foo85_url(@foo85), params: { foo85: { foo1: @foo85.foo1, foo2: @foo85.foo2, foo3: @foo85.foo3, foo4: @foo85.foo4, foo5: @foo85.foo5 } }
    assert_redirected_to foo85_url(@foo85)
  end

  test "should destroy foo85" do
    assert_difference('Foo85.count', -1) do
      delete foo85_url(@foo85)
    end

    assert_redirected_to foo85s_url
  end
end
