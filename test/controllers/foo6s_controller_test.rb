require "test_helper"

class Foo6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo6 = foo6s(:one)
  end

  test "should get index" do
    get foo6s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo6_url
    assert_response :success
  end

  test "should create foo6" do
    assert_difference('Foo6.count') do
      post foo6s_url, params: { foo6: { foo1: @foo6.foo1, foo2: @foo6.foo2, foo3: @foo6.foo3, foo4: @foo6.foo4, foo5: @foo6.foo5 } }
    end

    assert_redirected_to foo6_url(Foo6.last)
  end

  test "should show foo6" do
    get foo6_url(@foo6)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo6_url(@foo6)
    assert_response :success
  end

  test "should update foo6" do
    patch foo6_url(@foo6), params: { foo6: { foo1: @foo6.foo1, foo2: @foo6.foo2, foo3: @foo6.foo3, foo4: @foo6.foo4, foo5: @foo6.foo5 } }
    assert_redirected_to foo6_url(@foo6)
  end

  test "should destroy foo6" do
    assert_difference('Foo6.count', -1) do
      delete foo6_url(@foo6)
    end

    assert_redirected_to foo6s_url
  end
end
