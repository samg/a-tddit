require "test_helper"

class Foo36sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo36 = foo36s(:one)
  end

  test "should get index" do
    get foo36s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo36_url
    assert_response :success
  end

  test "should create foo36" do
    assert_difference('Foo36.count') do
      post foo36s_url, params: { foo36: { foo1: @foo36.foo1, foo2: @foo36.foo2, foo3: @foo36.foo3, foo4: @foo36.foo4, foo5: @foo36.foo5 } }
    end

    assert_redirected_to foo36_url(Foo36.last)
  end

  test "should show foo36" do
    get foo36_url(@foo36)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo36_url(@foo36)
    assert_response :success
  end

  test "should update foo36" do
    patch foo36_url(@foo36), params: { foo36: { foo1: @foo36.foo1, foo2: @foo36.foo2, foo3: @foo36.foo3, foo4: @foo36.foo4, foo5: @foo36.foo5 } }
    assert_redirected_to foo36_url(@foo36)
  end

  test "should destroy foo36" do
    assert_difference('Foo36.count', -1) do
      delete foo36_url(@foo36)
    end

    assert_redirected_to foo36s_url
  end
end
