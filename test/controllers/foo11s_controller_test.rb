require "test_helper"

class Foo11sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo11 = foo11s(:one)
  end

  test "should get index" do
    get foo11s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo11_url
    assert_response :success
  end

  test "should create foo11" do
    assert_difference('Foo11.count') do
      post foo11s_url, params: { foo11: { foo1: @foo11.foo1, foo2: @foo11.foo2, foo3: @foo11.foo3, foo4: @foo11.foo4, foo5: @foo11.foo5 } }
    end

    assert_redirected_to foo11_url(Foo11.last)
  end

  test "should show foo11" do
    get foo11_url(@foo11)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo11_url(@foo11)
    assert_response :success
  end

  test "should update foo11" do
    patch foo11_url(@foo11), params: { foo11: { foo1: @foo11.foo1, foo2: @foo11.foo2, foo3: @foo11.foo3, foo4: @foo11.foo4, foo5: @foo11.foo5 } }
    assert_redirected_to foo11_url(@foo11)
  end

  test "should destroy foo11" do
    assert_difference('Foo11.count', -1) do
      delete foo11_url(@foo11)
    end

    assert_redirected_to foo11s_url
  end
end
