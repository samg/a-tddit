require "test_helper"

class Foo76sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo76 = foo76s(:one)
  end

  test "should get index" do
    get foo76s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo76_url
    assert_response :success
  end

  test "should create foo76" do
    assert_difference('Foo76.count') do
      post foo76s_url, params: { foo76: { foo1: @foo76.foo1, foo2: @foo76.foo2, foo3: @foo76.foo3, foo4: @foo76.foo4, foo5: @foo76.foo5 } }
    end

    assert_redirected_to foo76_url(Foo76.last)
  end

  test "should show foo76" do
    get foo76_url(@foo76)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo76_url(@foo76)
    assert_response :success
  end

  test "should update foo76" do
    patch foo76_url(@foo76), params: { foo76: { foo1: @foo76.foo1, foo2: @foo76.foo2, foo3: @foo76.foo3, foo4: @foo76.foo4, foo5: @foo76.foo5 } }
    assert_redirected_to foo76_url(@foo76)
  end

  test "should destroy foo76" do
    assert_difference('Foo76.count', -1) do
      delete foo76_url(@foo76)
    end

    assert_redirected_to foo76s_url
  end
end
