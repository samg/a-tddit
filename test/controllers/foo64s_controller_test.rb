require "test_helper"

class Foo64sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo64 = foo64s(:one)
  end

  test "should get index" do
    get foo64s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo64_url
    assert_response :success
  end

  test "should create foo64" do
    assert_difference('Foo64.count') do
      post foo64s_url, params: { foo64: { foo1: @foo64.foo1, foo2: @foo64.foo2, foo3: @foo64.foo3, foo4: @foo64.foo4, foo5: @foo64.foo5 } }
    end

    assert_redirected_to foo64_url(Foo64.last)
  end

  test "should show foo64" do
    get foo64_url(@foo64)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo64_url(@foo64)
    assert_response :success
  end

  test "should update foo64" do
    patch foo64_url(@foo64), params: { foo64: { foo1: @foo64.foo1, foo2: @foo64.foo2, foo3: @foo64.foo3, foo4: @foo64.foo4, foo5: @foo64.foo5 } }
    assert_redirected_to foo64_url(@foo64)
  end

  test "should destroy foo64" do
    assert_difference('Foo64.count', -1) do
      delete foo64_url(@foo64)
    end

    assert_redirected_to foo64s_url
  end
end
