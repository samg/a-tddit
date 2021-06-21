require "test_helper"

class Foo80sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo80 = foo80s(:one)
  end

  test "should get index" do
    get foo80s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo80_url
    assert_response :success
  end

  test "should create foo80" do
    assert_difference('Foo80.count') do
      post foo80s_url, params: { foo80: { foo1: @foo80.foo1, foo2: @foo80.foo2, foo3: @foo80.foo3, foo4: @foo80.foo4, foo5: @foo80.foo5 } }
    end

    assert_redirected_to foo80_url(Foo80.last)
  end

  test "should show foo80" do
    get foo80_url(@foo80)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo80_url(@foo80)
    assert_response :success
  end

  test "should update foo80" do
    patch foo80_url(@foo80), params: { foo80: { foo1: @foo80.foo1, foo2: @foo80.foo2, foo3: @foo80.foo3, foo4: @foo80.foo4, foo5: @foo80.foo5 } }
    assert_redirected_to foo80_url(@foo80)
  end

  test "should destroy foo80" do
    assert_difference('Foo80.count', -1) do
      delete foo80_url(@foo80)
    end

    assert_redirected_to foo80s_url
  end
end
