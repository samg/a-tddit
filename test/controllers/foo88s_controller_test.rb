require "test_helper"

class Foo88sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo88 = foo88s(:one)
  end

  test "should get index" do
    get foo88s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo88_url
    assert_response :success
  end

  test "should create foo88" do
    assert_difference('Foo88.count') do
      post foo88s_url, params: { foo88: { foo1: @foo88.foo1, foo2: @foo88.foo2, foo3: @foo88.foo3, foo4: @foo88.foo4, foo5: @foo88.foo5 } }
    end

    assert_redirected_to foo88_url(Foo88.last)
  end

  test "should show foo88" do
    get foo88_url(@foo88)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo88_url(@foo88)
    assert_response :success
  end

  test "should update foo88" do
    patch foo88_url(@foo88), params: { foo88: { foo1: @foo88.foo1, foo2: @foo88.foo2, foo3: @foo88.foo3, foo4: @foo88.foo4, foo5: @foo88.foo5 } }
    assert_redirected_to foo88_url(@foo88)
  end

  test "should destroy foo88" do
    assert_difference('Foo88.count', -1) do
      delete foo88_url(@foo88)
    end

    assert_redirected_to foo88s_url
  end
end
