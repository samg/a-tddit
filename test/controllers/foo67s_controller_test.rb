require "test_helper"

class Foo67sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo67 = foo67s(:one)
  end

  test "should get index" do
    get foo67s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo67_url
    assert_response :success
  end

  test "should create foo67" do
    assert_difference('Foo67.count') do
      post foo67s_url, params: { foo67: { foo1: @foo67.foo1, foo2: @foo67.foo2, foo3: @foo67.foo3, foo4: @foo67.foo4, foo5: @foo67.foo5 } }
    end

    assert_redirected_to foo67_url(Foo67.last)
  end

  test "should show foo67" do
    get foo67_url(@foo67)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo67_url(@foo67)
    assert_response :success
  end

  test "should update foo67" do
    patch foo67_url(@foo67), params: { foo67: { foo1: @foo67.foo1, foo2: @foo67.foo2, foo3: @foo67.foo3, foo4: @foo67.foo4, foo5: @foo67.foo5 } }
    assert_redirected_to foo67_url(@foo67)
  end

  test "should destroy foo67" do
    assert_difference('Foo67.count', -1) do
      delete foo67_url(@foo67)
    end

    assert_redirected_to foo67s_url
  end
end
