require "test_helper"

class Foo15sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo15 = foo15s(:one)
  end

  test "should get index" do
    get foo15s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo15_url
    assert_response :success
  end

  test "should create foo15" do
    assert_difference('Foo15.count') do
      post foo15s_url, params: { foo15: { foo1: @foo15.foo1, foo2: @foo15.foo2, foo3: @foo15.foo3, foo4: @foo15.foo4, foo5: @foo15.foo5 } }
    end

    assert_redirected_to foo15_url(Foo15.last)
  end

  test "should show foo15" do
    get foo15_url(@foo15)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo15_url(@foo15)
    assert_response :success
  end

  test "should update foo15" do
    patch foo15_url(@foo15), params: { foo15: { foo1: @foo15.foo1, foo2: @foo15.foo2, foo3: @foo15.foo3, foo4: @foo15.foo4, foo5: @foo15.foo5 } }
    assert_redirected_to foo15_url(@foo15)
  end

  test "should destroy foo15" do
    assert_difference('Foo15.count', -1) do
      delete foo15_url(@foo15)
    end

    assert_redirected_to foo15s_url
  end
end
