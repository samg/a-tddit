require "test_helper"

class Foo10sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo10 = foo10s(:one)
  end

  test "should get index" do
    get foo10s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo10_url
    assert_response :success
  end

  test "should create foo10" do
    assert_difference('Foo10.count') do
      post foo10s_url, params: { foo10: { foo1: @foo10.foo1, foo2: @foo10.foo2, foo3: @foo10.foo3, foo4: @foo10.foo4, foo5: @foo10.foo5 } }
    end

    assert_redirected_to foo10_url(Foo10.last)
  end

  test "should show foo10" do
    get foo10_url(@foo10)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo10_url(@foo10)
    assert_response :success
  end

  test "should update foo10" do
    patch foo10_url(@foo10), params: { foo10: { foo1: @foo10.foo1, foo2: @foo10.foo2, foo3: @foo10.foo3, foo4: @foo10.foo4, foo5: @foo10.foo5 } }
    assert_redirected_to foo10_url(@foo10)
  end

  test "should destroy foo10" do
    assert_difference('Foo10.count', -1) do
      delete foo10_url(@foo10)
    end

    assert_redirected_to foo10s_url
  end
end
