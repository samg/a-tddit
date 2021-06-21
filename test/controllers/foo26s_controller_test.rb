require "test_helper"

class Foo26sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo26 = foo26s(:one)
  end

  test "should get index" do
    get foo26s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo26_url
    assert_response :success
  end

  test "should create foo26" do
    assert_difference('Foo26.count') do
      post foo26s_url, params: { foo26: { foo1: @foo26.foo1, foo2: @foo26.foo2, foo3: @foo26.foo3, foo4: @foo26.foo4, foo5: @foo26.foo5 } }
    end

    assert_redirected_to foo26_url(Foo26.last)
  end

  test "should show foo26" do
    get foo26_url(@foo26)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo26_url(@foo26)
    assert_response :success
  end

  test "should update foo26" do
    patch foo26_url(@foo26), params: { foo26: { foo1: @foo26.foo1, foo2: @foo26.foo2, foo3: @foo26.foo3, foo4: @foo26.foo4, foo5: @foo26.foo5 } }
    assert_redirected_to foo26_url(@foo26)
  end

  test "should destroy foo26" do
    assert_difference('Foo26.count', -1) do
      delete foo26_url(@foo26)
    end

    assert_redirected_to foo26s_url
  end
end
