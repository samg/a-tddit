require "test_helper"

class Foo31sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo31 = foo31s(:one)
  end

  test "should get index" do
    get foo31s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo31_url
    assert_response :success
  end

  test "should create foo31" do
    assert_difference('Foo31.count') do
      post foo31s_url, params: { foo31: { foo1: @foo31.foo1, foo2: @foo31.foo2, foo3: @foo31.foo3, foo4: @foo31.foo4, foo5: @foo31.foo5 } }
    end

    assert_redirected_to foo31_url(Foo31.last)
  end

  test "should show foo31" do
    get foo31_url(@foo31)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo31_url(@foo31)
    assert_response :success
  end

  test "should update foo31" do
    patch foo31_url(@foo31), params: { foo31: { foo1: @foo31.foo1, foo2: @foo31.foo2, foo3: @foo31.foo3, foo4: @foo31.foo4, foo5: @foo31.foo5 } }
    assert_redirected_to foo31_url(@foo31)
  end

  test "should destroy foo31" do
    assert_difference('Foo31.count', -1) do
      delete foo31_url(@foo31)
    end

    assert_redirected_to foo31s_url
  end
end
