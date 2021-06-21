require "test_helper"

class Foo14sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo14 = foo14s(:one)
  end

  test "should get index" do
    get foo14s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo14_url
    assert_response :success
  end

  test "should create foo14" do
    assert_difference('Foo14.count') do
      post foo14s_url, params: { foo14: { foo1: @foo14.foo1, foo2: @foo14.foo2, foo3: @foo14.foo3, foo4: @foo14.foo4, foo5: @foo14.foo5 } }
    end

    assert_redirected_to foo14_url(Foo14.last)
  end

  test "should show foo14" do
    get foo14_url(@foo14)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo14_url(@foo14)
    assert_response :success
  end

  test "should update foo14" do
    patch foo14_url(@foo14), params: { foo14: { foo1: @foo14.foo1, foo2: @foo14.foo2, foo3: @foo14.foo3, foo4: @foo14.foo4, foo5: @foo14.foo5 } }
    assert_redirected_to foo14_url(@foo14)
  end

  test "should destroy foo14" do
    assert_difference('Foo14.count', -1) do
      delete foo14_url(@foo14)
    end

    assert_redirected_to foo14s_url
  end
end
