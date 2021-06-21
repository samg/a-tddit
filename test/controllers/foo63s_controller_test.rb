require "test_helper"

class Foo63sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo63 = foo63s(:one)
  end

  test "should get index" do
    get foo63s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo63_url
    assert_response :success
  end

  test "should create foo63" do
    assert_difference('Foo63.count') do
      post foo63s_url, params: { foo63: { foo1: @foo63.foo1, foo2: @foo63.foo2, foo3: @foo63.foo3, foo4: @foo63.foo4, foo5: @foo63.foo5 } }
    end

    assert_redirected_to foo63_url(Foo63.last)
  end

  test "should show foo63" do
    get foo63_url(@foo63)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo63_url(@foo63)
    assert_response :success
  end

  test "should update foo63" do
    patch foo63_url(@foo63), params: { foo63: { foo1: @foo63.foo1, foo2: @foo63.foo2, foo3: @foo63.foo3, foo4: @foo63.foo4, foo5: @foo63.foo5 } }
    assert_redirected_to foo63_url(@foo63)
  end

  test "should destroy foo63" do
    assert_difference('Foo63.count', -1) do
      delete foo63_url(@foo63)
    end

    assert_redirected_to foo63s_url
  end
end
