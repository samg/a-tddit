require "test_helper"

class Foo17sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo17 = foo17s(:one)
  end

  test "should get index" do
    get foo17s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo17_url
    assert_response :success
  end

  test "should create foo17" do
    assert_difference('Foo17.count') do
      post foo17s_url, params: { foo17: { foo1: @foo17.foo1, foo2: @foo17.foo2, foo3: @foo17.foo3, foo4: @foo17.foo4, foo5: @foo17.foo5 } }
    end

    assert_redirected_to foo17_url(Foo17.last)
  end

  test "should show foo17" do
    get foo17_url(@foo17)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo17_url(@foo17)
    assert_response :success
  end

  test "should update foo17" do
    patch foo17_url(@foo17), params: { foo17: { foo1: @foo17.foo1, foo2: @foo17.foo2, foo3: @foo17.foo3, foo4: @foo17.foo4, foo5: @foo17.foo5 } }
    assert_redirected_to foo17_url(@foo17)
  end

  test "should destroy foo17" do
    assert_difference('Foo17.count', -1) do
      delete foo17_url(@foo17)
    end

    assert_redirected_to foo17s_url
  end
end
