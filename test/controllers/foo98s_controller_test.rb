require "test_helper"

class Foo98sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo98 = foo98s(:one)
  end

  test "should get index" do
    get foo98s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo98_url
    assert_response :success
  end

  test "should create foo98" do
    assert_difference('Foo98.count') do
      post foo98s_url, params: { foo98: { foo1: @foo98.foo1, foo2: @foo98.foo2, foo3: @foo98.foo3, foo4: @foo98.foo4, foo5: @foo98.foo5 } }
    end

    assert_redirected_to foo98_url(Foo98.last)
  end

  test "should show foo98" do
    get foo98_url(@foo98)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo98_url(@foo98)
    assert_response :success
  end

  test "should update foo98" do
    patch foo98_url(@foo98), params: { foo98: { foo1: @foo98.foo1, foo2: @foo98.foo2, foo3: @foo98.foo3, foo4: @foo98.foo4, foo5: @foo98.foo5 } }
    assert_redirected_to foo98_url(@foo98)
  end

  test "should destroy foo98" do
    assert_difference('Foo98.count', -1) do
      delete foo98_url(@foo98)
    end

    assert_redirected_to foo98s_url
  end
end
