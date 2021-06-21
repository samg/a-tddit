require "test_helper"

class Foo91sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo91 = foo91s(:one)
  end

  test "should get index" do
    get foo91s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo91_url
    assert_response :success
  end

  test "should create foo91" do
    assert_difference('Foo91.count') do
      post foo91s_url, params: { foo91: { foo1: @foo91.foo1, foo2: @foo91.foo2, foo3: @foo91.foo3, foo4: @foo91.foo4, foo5: @foo91.foo5 } }
    end

    assert_redirected_to foo91_url(Foo91.last)
  end

  test "should show foo91" do
    get foo91_url(@foo91)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo91_url(@foo91)
    assert_response :success
  end

  test "should update foo91" do
    patch foo91_url(@foo91), params: { foo91: { foo1: @foo91.foo1, foo2: @foo91.foo2, foo3: @foo91.foo3, foo4: @foo91.foo4, foo5: @foo91.foo5 } }
    assert_redirected_to foo91_url(@foo91)
  end

  test "should destroy foo91" do
    assert_difference('Foo91.count', -1) do
      delete foo91_url(@foo91)
    end

    assert_redirected_to foo91s_url
  end
end
