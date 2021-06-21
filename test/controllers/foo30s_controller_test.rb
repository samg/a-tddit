require "test_helper"

class Foo30sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo30 = foo30s(:one)
  end

  test "should get index" do
    get foo30s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo30_url
    assert_response :success
  end

  test "should create foo30" do
    assert_difference('Foo30.count') do
      post foo30s_url, params: { foo30: { foo1: @foo30.foo1, foo2: @foo30.foo2, foo3: @foo30.foo3, foo4: @foo30.foo4, foo5: @foo30.foo5 } }
    end

    assert_redirected_to foo30_url(Foo30.last)
  end

  test "should show foo30" do
    get foo30_url(@foo30)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo30_url(@foo30)
    assert_response :success
  end

  test "should update foo30" do
    patch foo30_url(@foo30), params: { foo30: { foo1: @foo30.foo1, foo2: @foo30.foo2, foo3: @foo30.foo3, foo4: @foo30.foo4, foo5: @foo30.foo5 } }
    assert_redirected_to foo30_url(@foo30)
  end

  test "should destroy foo30" do
    assert_difference('Foo30.count', -1) do
      delete foo30_url(@foo30)
    end

    assert_redirected_to foo30s_url
  end
end
