require "test_helper"

class Foo69sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo69 = foo69s(:one)
  end

  test "should get index" do
    get foo69s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo69_url
    assert_response :success
  end

  test "should create foo69" do
    assert_difference('Foo69.count') do
      post foo69s_url, params: { foo69: { foo1: @foo69.foo1, foo2: @foo69.foo2, foo3: @foo69.foo3, foo4: @foo69.foo4, foo5: @foo69.foo5 } }
    end

    assert_redirected_to foo69_url(Foo69.last)
  end

  test "should show foo69" do
    get foo69_url(@foo69)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo69_url(@foo69)
    assert_response :success
  end

  test "should update foo69" do
    patch foo69_url(@foo69), params: { foo69: { foo1: @foo69.foo1, foo2: @foo69.foo2, foo3: @foo69.foo3, foo4: @foo69.foo4, foo5: @foo69.foo5 } }
    assert_redirected_to foo69_url(@foo69)
  end

  test "should destroy foo69" do
    assert_difference('Foo69.count', -1) do
      delete foo69_url(@foo69)
    end

    assert_redirected_to foo69s_url
  end
end
