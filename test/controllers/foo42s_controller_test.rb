require "test_helper"

class Foo42sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo42 = foo42s(:one)
  end

  test "should get index" do
    get foo42s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo42_url
    assert_response :success
  end

  test "should create foo42" do
    assert_difference('Foo42.count') do
      post foo42s_url, params: { foo42: { foo1: @foo42.foo1, foo2: @foo42.foo2, foo3: @foo42.foo3, foo4: @foo42.foo4, foo5: @foo42.foo5 } }
    end

    assert_redirected_to foo42_url(Foo42.last)
  end

  test "should show foo42" do
    get foo42_url(@foo42)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo42_url(@foo42)
    assert_response :success
  end

  test "should update foo42" do
    patch foo42_url(@foo42), params: { foo42: { foo1: @foo42.foo1, foo2: @foo42.foo2, foo3: @foo42.foo3, foo4: @foo42.foo4, foo5: @foo42.foo5 } }
    assert_redirected_to foo42_url(@foo42)
  end

  test "should destroy foo42" do
    assert_difference('Foo42.count', -1) do
      delete foo42_url(@foo42)
    end

    assert_redirected_to foo42s_url
  end
end
