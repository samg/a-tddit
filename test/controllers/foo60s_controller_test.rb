require "test_helper"

class Foo60sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo60 = foo60s(:one)
  end

  test "should get index" do
    get foo60s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo60_url
    assert_response :success
  end

  test "should create foo60" do
    assert_difference('Foo60.count') do
      post foo60s_url, params: { foo60: { foo1: @foo60.foo1, foo2: @foo60.foo2, foo3: @foo60.foo3, foo4: @foo60.foo4, foo5: @foo60.foo5 } }
    end

    assert_redirected_to foo60_url(Foo60.last)
  end

  test "should show foo60" do
    get foo60_url(@foo60)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo60_url(@foo60)
    assert_response :success
  end

  test "should update foo60" do
    patch foo60_url(@foo60), params: { foo60: { foo1: @foo60.foo1, foo2: @foo60.foo2, foo3: @foo60.foo3, foo4: @foo60.foo4, foo5: @foo60.foo5 } }
    assert_redirected_to foo60_url(@foo60)
  end

  test "should destroy foo60" do
    assert_difference('Foo60.count', -1) do
      delete foo60_url(@foo60)
    end

    assert_redirected_to foo60s_url
  end
end
