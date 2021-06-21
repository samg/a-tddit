require "test_helper"

class Foo72sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo72 = foo72s(:one)
  end

  test "should get index" do
    get foo72s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo72_url
    assert_response :success
  end

  test "should create foo72" do
    assert_difference('Foo72.count') do
      post foo72s_url, params: { foo72: { foo1: @foo72.foo1, foo2: @foo72.foo2, foo3: @foo72.foo3, foo4: @foo72.foo4, foo5: @foo72.foo5 } }
    end

    assert_redirected_to foo72_url(Foo72.last)
  end

  test "should show foo72" do
    get foo72_url(@foo72)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo72_url(@foo72)
    assert_response :success
  end

  test "should update foo72" do
    patch foo72_url(@foo72), params: { foo72: { foo1: @foo72.foo1, foo2: @foo72.foo2, foo3: @foo72.foo3, foo4: @foo72.foo4, foo5: @foo72.foo5 } }
    assert_redirected_to foo72_url(@foo72)
  end

  test "should destroy foo72" do
    assert_difference('Foo72.count', -1) do
      delete foo72_url(@foo72)
    end

    assert_redirected_to foo72s_url
  end
end
