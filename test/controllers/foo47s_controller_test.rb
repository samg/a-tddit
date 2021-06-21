require "test_helper"

class Foo47sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo47 = foo47s(:one)
  end

  test "should get index" do
    get foo47s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo47_url
    assert_response :success
  end

  test "should create foo47" do
    assert_difference('Foo47.count') do
      post foo47s_url, params: { foo47: { foo1: @foo47.foo1, foo2: @foo47.foo2, foo3: @foo47.foo3, foo4: @foo47.foo4, foo5: @foo47.foo5 } }
    end

    assert_redirected_to foo47_url(Foo47.last)
  end

  test "should show foo47" do
    get foo47_url(@foo47)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo47_url(@foo47)
    assert_response :success
  end

  test "should update foo47" do
    patch foo47_url(@foo47), params: { foo47: { foo1: @foo47.foo1, foo2: @foo47.foo2, foo3: @foo47.foo3, foo4: @foo47.foo4, foo5: @foo47.foo5 } }
    assert_redirected_to foo47_url(@foo47)
  end

  test "should destroy foo47" do
    assert_difference('Foo47.count', -1) do
      delete foo47_url(@foo47)
    end

    assert_redirected_to foo47s_url
  end
end
