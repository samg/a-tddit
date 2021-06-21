require "test_helper"

class Foo20sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo20 = foo20s(:one)
  end

  test "should get index" do
    get foo20s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo20_url
    assert_response :success
  end

  test "should create foo20" do
    assert_difference('Foo20.count') do
      post foo20s_url, params: { foo20: { foo1: @foo20.foo1, foo2: @foo20.foo2, foo3: @foo20.foo3, foo4: @foo20.foo4, foo5: @foo20.foo5 } }
    end

    assert_redirected_to foo20_url(Foo20.last)
  end

  test "should show foo20" do
    get foo20_url(@foo20)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo20_url(@foo20)
    assert_response :success
  end

  test "should update foo20" do
    patch foo20_url(@foo20), params: { foo20: { foo1: @foo20.foo1, foo2: @foo20.foo2, foo3: @foo20.foo3, foo4: @foo20.foo4, foo5: @foo20.foo5 } }
    assert_redirected_to foo20_url(@foo20)
  end

  test "should destroy foo20" do
    assert_difference('Foo20.count', -1) do
      delete foo20_url(@foo20)
    end

    assert_redirected_to foo20s_url
  end
end
