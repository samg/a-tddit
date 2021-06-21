require "test_helper"

class Foo45sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo45 = foo45s(:one)
  end

  test "should get index" do
    get foo45s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo45_url
    assert_response :success
  end

  test "should create foo45" do
    assert_difference('Foo45.count') do
      post foo45s_url, params: { foo45: { foo1: @foo45.foo1, foo2: @foo45.foo2, foo3: @foo45.foo3, foo4: @foo45.foo4, foo5: @foo45.foo5 } }
    end

    assert_redirected_to foo45_url(Foo45.last)
  end

  test "should show foo45" do
    get foo45_url(@foo45)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo45_url(@foo45)
    assert_response :success
  end

  test "should update foo45" do
    patch foo45_url(@foo45), params: { foo45: { foo1: @foo45.foo1, foo2: @foo45.foo2, foo3: @foo45.foo3, foo4: @foo45.foo4, foo5: @foo45.foo5 } }
    assert_redirected_to foo45_url(@foo45)
  end

  test "should destroy foo45" do
    assert_difference('Foo45.count', -1) do
      delete foo45_url(@foo45)
    end

    assert_redirected_to foo45s_url
  end
end
