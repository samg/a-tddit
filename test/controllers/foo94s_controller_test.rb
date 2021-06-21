require "test_helper"

class Foo94sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo94 = foo94s(:one)
  end

  test "should get index" do
    get foo94s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo94_url
    assert_response :success
  end

  test "should create foo94" do
    assert_difference('Foo94.count') do
      post foo94s_url, params: { foo94: { foo1: @foo94.foo1, foo2: @foo94.foo2, foo3: @foo94.foo3, foo4: @foo94.foo4, foo5: @foo94.foo5 } }
    end

    assert_redirected_to foo94_url(Foo94.last)
  end

  test "should show foo94" do
    get foo94_url(@foo94)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo94_url(@foo94)
    assert_response :success
  end

  test "should update foo94" do
    patch foo94_url(@foo94), params: { foo94: { foo1: @foo94.foo1, foo2: @foo94.foo2, foo3: @foo94.foo3, foo4: @foo94.foo4, foo5: @foo94.foo5 } }
    assert_redirected_to foo94_url(@foo94)
  end

  test "should destroy foo94" do
    assert_difference('Foo94.count', -1) do
      delete foo94_url(@foo94)
    end

    assert_redirected_to foo94s_url
  end
end
