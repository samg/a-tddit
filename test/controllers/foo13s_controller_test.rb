require "test_helper"

class Foo13sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo13 = foo13s(:one)
  end

  test "should get index" do
    get foo13s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo13_url
    assert_response :success
  end

  test "should create foo13" do
    assert_difference('Foo13.count') do
      post foo13s_url, params: { foo13: { foo1: @foo13.foo1, foo2: @foo13.foo2, foo3: @foo13.foo3, foo4: @foo13.foo4, foo5: @foo13.foo5 } }
    end

    assert_redirected_to foo13_url(Foo13.last)
  end

  test "should show foo13" do
    get foo13_url(@foo13)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo13_url(@foo13)
    assert_response :success
  end

  test "should update foo13" do
    patch foo13_url(@foo13), params: { foo13: { foo1: @foo13.foo1, foo2: @foo13.foo2, foo3: @foo13.foo3, foo4: @foo13.foo4, foo5: @foo13.foo5 } }
    assert_redirected_to foo13_url(@foo13)
  end

  test "should destroy foo13" do
    assert_difference('Foo13.count', -1) do
      delete foo13_url(@foo13)
    end

    assert_redirected_to foo13s_url
  end
end
