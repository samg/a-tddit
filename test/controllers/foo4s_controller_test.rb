require "test_helper"

class Foo4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo4 = foo4s(:one)
  end

  test "should get index" do
    get foo4s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo4_url
    assert_response :success
  end

  test "should create foo4" do
    assert_difference('Foo4.count') do
      post foo4s_url, params: { foo4: { foo1: @foo4.foo1, foo2: @foo4.foo2, foo3: @foo4.foo3, foo4: @foo4.foo4, foo5: @foo4.foo5 } }
    end

    assert_redirected_to foo4_url(Foo4.last)
  end

  test "should show foo4" do
    get foo4_url(@foo4)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo4_url(@foo4)
    assert_response :success
  end

  test "should update foo4" do
    patch foo4_url(@foo4), params: { foo4: { foo1: @foo4.foo1, foo2: @foo4.foo2, foo3: @foo4.foo3, foo4: @foo4.foo4, foo5: @foo4.foo5 } }
    assert_redirected_to foo4_url(@foo4)
  end

  test "should destroy foo4" do
    assert_difference('Foo4.count', -1) do
      delete foo4_url(@foo4)
    end

    assert_redirected_to foo4s_url
  end
end
