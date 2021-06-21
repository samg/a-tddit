require "test_helper"

class Foo87sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo87 = foo87s(:one)
  end

  test "should get index" do
    get foo87s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo87_url
    assert_response :success
  end

  test "should create foo87" do
    assert_difference('Foo87.count') do
      post foo87s_url, params: { foo87: { foo1: @foo87.foo1, foo2: @foo87.foo2, foo3: @foo87.foo3, foo4: @foo87.foo4, foo5: @foo87.foo5 } }
    end

    assert_redirected_to foo87_url(Foo87.last)
  end

  test "should show foo87" do
    get foo87_url(@foo87)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo87_url(@foo87)
    assert_response :success
  end

  test "should update foo87" do
    patch foo87_url(@foo87), params: { foo87: { foo1: @foo87.foo1, foo2: @foo87.foo2, foo3: @foo87.foo3, foo4: @foo87.foo4, foo5: @foo87.foo5 } }
    assert_redirected_to foo87_url(@foo87)
  end

  test "should destroy foo87" do
    assert_difference('Foo87.count', -1) do
      delete foo87_url(@foo87)
    end

    assert_redirected_to foo87s_url
  end
end
