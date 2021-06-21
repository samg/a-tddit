require "test_helper"

class Foo83sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo83 = foo83s(:one)
  end

  test "should get index" do
    get foo83s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo83_url
    assert_response :success
  end

  test "should create foo83" do
    assert_difference('Foo83.count') do
      post foo83s_url, params: { foo83: { foo1: @foo83.foo1, foo2: @foo83.foo2, foo3: @foo83.foo3, foo4: @foo83.foo4, foo5: @foo83.foo5 } }
    end

    assert_redirected_to foo83_url(Foo83.last)
  end

  test "should show foo83" do
    get foo83_url(@foo83)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo83_url(@foo83)
    assert_response :success
  end

  test "should update foo83" do
    patch foo83_url(@foo83), params: { foo83: { foo1: @foo83.foo1, foo2: @foo83.foo2, foo3: @foo83.foo3, foo4: @foo83.foo4, foo5: @foo83.foo5 } }
    assert_redirected_to foo83_url(@foo83)
  end

  test "should destroy foo83" do
    assert_difference('Foo83.count', -1) do
      delete foo83_url(@foo83)
    end

    assert_redirected_to foo83s_url
  end
end
