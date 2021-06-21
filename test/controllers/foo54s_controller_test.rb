require "test_helper"

class Foo54sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo54 = foo54s(:one)
  end

  test "should get index" do
    get foo54s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo54_url
    assert_response :success
  end

  test "should create foo54" do
    assert_difference('Foo54.count') do
      post foo54s_url, params: { foo54: { foo1: @foo54.foo1, foo2: @foo54.foo2, foo3: @foo54.foo3, foo4: @foo54.foo4, foo5: @foo54.foo5 } }
    end

    assert_redirected_to foo54_url(Foo54.last)
  end

  test "should show foo54" do
    get foo54_url(@foo54)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo54_url(@foo54)
    assert_response :success
  end

  test "should update foo54" do
    patch foo54_url(@foo54), params: { foo54: { foo1: @foo54.foo1, foo2: @foo54.foo2, foo3: @foo54.foo3, foo4: @foo54.foo4, foo5: @foo54.foo5 } }
    assert_redirected_to foo54_url(@foo54)
  end

  test "should destroy foo54" do
    assert_difference('Foo54.count', -1) do
      delete foo54_url(@foo54)
    end

    assert_redirected_to foo54s_url
  end
end
