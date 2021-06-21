require "test_helper"

class Foo34sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo34 = foo34s(:one)
  end

  test "should get index" do
    get foo34s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo34_url
    assert_response :success
  end

  test "should create foo34" do
    assert_difference('Foo34.count') do
      post foo34s_url, params: { foo34: { foo1: @foo34.foo1, foo2: @foo34.foo2, foo3: @foo34.foo3, foo4: @foo34.foo4, foo5: @foo34.foo5 } }
    end

    assert_redirected_to foo34_url(Foo34.last)
  end

  test "should show foo34" do
    get foo34_url(@foo34)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo34_url(@foo34)
    assert_response :success
  end

  test "should update foo34" do
    patch foo34_url(@foo34), params: { foo34: { foo1: @foo34.foo1, foo2: @foo34.foo2, foo3: @foo34.foo3, foo4: @foo34.foo4, foo5: @foo34.foo5 } }
    assert_redirected_to foo34_url(@foo34)
  end

  test "should destroy foo34" do
    assert_difference('Foo34.count', -1) do
      delete foo34_url(@foo34)
    end

    assert_redirected_to foo34s_url
  end
end
