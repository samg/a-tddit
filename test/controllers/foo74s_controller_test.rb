require "test_helper"

class Foo74sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo74 = foo74s(:one)
  end

  test "should get index" do
    get foo74s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo74_url
    assert_response :success
  end

  test "should create foo74" do
    assert_difference('Foo74.count') do
      post foo74s_url, params: { foo74: { foo1: @foo74.foo1, foo2: @foo74.foo2, foo3: @foo74.foo3, foo4: @foo74.foo4, foo5: @foo74.foo5 } }
    end

    assert_redirected_to foo74_url(Foo74.last)
  end

  test "should show foo74" do
    get foo74_url(@foo74)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo74_url(@foo74)
    assert_response :success
  end

  test "should update foo74" do
    patch foo74_url(@foo74), params: { foo74: { foo1: @foo74.foo1, foo2: @foo74.foo2, foo3: @foo74.foo3, foo4: @foo74.foo4, foo5: @foo74.foo5 } }
    assert_redirected_to foo74_url(@foo74)
  end

  test "should destroy foo74" do
    assert_difference('Foo74.count', -1) do
      delete foo74_url(@foo74)
    end

    assert_redirected_to foo74s_url
  end
end
