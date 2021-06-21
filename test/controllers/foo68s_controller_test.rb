require "test_helper"

class Foo68sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo68 = foo68s(:one)
  end

  test "should get index" do
    get foo68s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo68_url
    assert_response :success
  end

  test "should create foo68" do
    assert_difference('Foo68.count') do
      post foo68s_url, params: { foo68: { foo1: @foo68.foo1, foo2: @foo68.foo2, foo3: @foo68.foo3, foo4: @foo68.foo4, foo5: @foo68.foo5 } }
    end

    assert_redirected_to foo68_url(Foo68.last)
  end

  test "should show foo68" do
    get foo68_url(@foo68)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo68_url(@foo68)
    assert_response :success
  end

  test "should update foo68" do
    patch foo68_url(@foo68), params: { foo68: { foo1: @foo68.foo1, foo2: @foo68.foo2, foo3: @foo68.foo3, foo4: @foo68.foo4, foo5: @foo68.foo5 } }
    assert_redirected_to foo68_url(@foo68)
  end

  test "should destroy foo68" do
    assert_difference('Foo68.count', -1) do
      delete foo68_url(@foo68)
    end

    assert_redirected_to foo68s_url
  end
end
