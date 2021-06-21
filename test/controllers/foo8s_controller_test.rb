require "test_helper"

class Foo8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo8 = foo8s(:one)
  end

  test "should get index" do
    get foo8s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo8_url
    assert_response :success
  end

  test "should create foo8" do
    assert_difference('Foo8.count') do
      post foo8s_url, params: { foo8: { foo1: @foo8.foo1, foo2: @foo8.foo2, foo3: @foo8.foo3, foo4: @foo8.foo4, foo5: @foo8.foo5 } }
    end

    assert_redirected_to foo8_url(Foo8.last)
  end

  test "should show foo8" do
    get foo8_url(@foo8)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo8_url(@foo8)
    assert_response :success
  end

  test "should update foo8" do
    patch foo8_url(@foo8), params: { foo8: { foo1: @foo8.foo1, foo2: @foo8.foo2, foo3: @foo8.foo3, foo4: @foo8.foo4, foo5: @foo8.foo5 } }
    assert_redirected_to foo8_url(@foo8)
  end

  test "should destroy foo8" do
    assert_difference('Foo8.count', -1) do
      delete foo8_url(@foo8)
    end

    assert_redirected_to foo8s_url
  end
end
