require "test_helper"

class Foo84sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo84 = foo84s(:one)
  end

  test "should get index" do
    get foo84s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo84_url
    assert_response :success
  end

  test "should create foo84" do
    assert_difference('Foo84.count') do
      post foo84s_url, params: { foo84: { foo1: @foo84.foo1, foo2: @foo84.foo2, foo3: @foo84.foo3, foo4: @foo84.foo4, foo5: @foo84.foo5 } }
    end

    assert_redirected_to foo84_url(Foo84.last)
  end

  test "should show foo84" do
    get foo84_url(@foo84)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo84_url(@foo84)
    assert_response :success
  end

  test "should update foo84" do
    patch foo84_url(@foo84), params: { foo84: { foo1: @foo84.foo1, foo2: @foo84.foo2, foo3: @foo84.foo3, foo4: @foo84.foo4, foo5: @foo84.foo5 } }
    assert_redirected_to foo84_url(@foo84)
  end

  test "should destroy foo84" do
    assert_difference('Foo84.count', -1) do
      delete foo84_url(@foo84)
    end

    assert_redirected_to foo84s_url
  end
end
