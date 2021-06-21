require "test_helper"

class Foo71sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo71 = foo71s(:one)
  end

  test "should get index" do
    get foo71s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo71_url
    assert_response :success
  end

  test "should create foo71" do
    assert_difference('Foo71.count') do
      post foo71s_url, params: { foo71: { foo1: @foo71.foo1, foo2: @foo71.foo2, foo3: @foo71.foo3, foo4: @foo71.foo4, foo5: @foo71.foo5 } }
    end

    assert_redirected_to foo71_url(Foo71.last)
  end

  test "should show foo71" do
    get foo71_url(@foo71)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo71_url(@foo71)
    assert_response :success
  end

  test "should update foo71" do
    patch foo71_url(@foo71), params: { foo71: { foo1: @foo71.foo1, foo2: @foo71.foo2, foo3: @foo71.foo3, foo4: @foo71.foo4, foo5: @foo71.foo5 } }
    assert_redirected_to foo71_url(@foo71)
  end

  test "should destroy foo71" do
    assert_difference('Foo71.count', -1) do
      delete foo71_url(@foo71)
    end

    assert_redirected_to foo71s_url
  end
end
