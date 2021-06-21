require "test_helper"

class Foo9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo9 = foo9s(:one)
  end

  test "should get index" do
    get foo9s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo9_url
    assert_response :success
  end

  test "should create foo9" do
    assert_difference('Foo9.count') do
      post foo9s_url, params: { foo9: { foo1: @foo9.foo1, foo2: @foo9.foo2, foo3: @foo9.foo3, foo4: @foo9.foo4, foo5: @foo9.foo5 } }
    end

    assert_redirected_to foo9_url(Foo9.last)
  end

  test "should show foo9" do
    get foo9_url(@foo9)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo9_url(@foo9)
    assert_response :success
  end

  test "should update foo9" do
    patch foo9_url(@foo9), params: { foo9: { foo1: @foo9.foo1, foo2: @foo9.foo2, foo3: @foo9.foo3, foo4: @foo9.foo4, foo5: @foo9.foo5 } }
    assert_redirected_to foo9_url(@foo9)
  end

  test "should destroy foo9" do
    assert_difference('Foo9.count', -1) do
      delete foo9_url(@foo9)
    end

    assert_redirected_to foo9s_url
  end
end
