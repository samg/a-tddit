require "test_helper"

class Foo75sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo75 = foo75s(:one)
  end

  test "should get index" do
    get foo75s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo75_url
    assert_response :success
  end

  test "should create foo75" do
    assert_difference('Foo75.count') do
      post foo75s_url, params: { foo75: { foo1: @foo75.foo1, foo2: @foo75.foo2, foo3: @foo75.foo3, foo4: @foo75.foo4, foo5: @foo75.foo5 } }
    end

    assert_redirected_to foo75_url(Foo75.last)
  end

  test "should show foo75" do
    get foo75_url(@foo75)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo75_url(@foo75)
    assert_response :success
  end

  test "should update foo75" do
    patch foo75_url(@foo75), params: { foo75: { foo1: @foo75.foo1, foo2: @foo75.foo2, foo3: @foo75.foo3, foo4: @foo75.foo4, foo5: @foo75.foo5 } }
    assert_redirected_to foo75_url(@foo75)
  end

  test "should destroy foo75" do
    assert_difference('Foo75.count', -1) do
      delete foo75_url(@foo75)
    end

    assert_redirected_to foo75s_url
  end
end
