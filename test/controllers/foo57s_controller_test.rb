require "test_helper"

class Foo57sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo57 = foo57s(:one)
  end

  test "should get index" do
    get foo57s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo57_url
    assert_response :success
  end

  test "should create foo57" do
    assert_difference('Foo57.count') do
      post foo57s_url, params: { foo57: { foo1: @foo57.foo1, foo2: @foo57.foo2, foo3: @foo57.foo3, foo4: @foo57.foo4, foo5: @foo57.foo5 } }
    end

    assert_redirected_to foo57_url(Foo57.last)
  end

  test "should show foo57" do
    get foo57_url(@foo57)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo57_url(@foo57)
    assert_response :success
  end

  test "should update foo57" do
    patch foo57_url(@foo57), params: { foo57: { foo1: @foo57.foo1, foo2: @foo57.foo2, foo3: @foo57.foo3, foo4: @foo57.foo4, foo5: @foo57.foo5 } }
    assert_redirected_to foo57_url(@foo57)
  end

  test "should destroy foo57" do
    assert_difference('Foo57.count', -1) do
      delete foo57_url(@foo57)
    end

    assert_redirected_to foo57s_url
  end
end
