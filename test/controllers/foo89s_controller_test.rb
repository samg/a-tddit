require "test_helper"

class Foo89sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo89 = foo89s(:one)
  end

  test "should get index" do
    get foo89s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo89_url
    assert_response :success
  end

  test "should create foo89" do
    assert_difference('Foo89.count') do
      post foo89s_url, params: { foo89: { foo1: @foo89.foo1, foo2: @foo89.foo2, foo3: @foo89.foo3, foo4: @foo89.foo4, foo5: @foo89.foo5 } }
    end

    assert_redirected_to foo89_url(Foo89.last)
  end

  test "should show foo89" do
    get foo89_url(@foo89)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo89_url(@foo89)
    assert_response :success
  end

  test "should update foo89" do
    patch foo89_url(@foo89), params: { foo89: { foo1: @foo89.foo1, foo2: @foo89.foo2, foo3: @foo89.foo3, foo4: @foo89.foo4, foo5: @foo89.foo5 } }
    assert_redirected_to foo89_url(@foo89)
  end

  test "should destroy foo89" do
    assert_difference('Foo89.count', -1) do
      delete foo89_url(@foo89)
    end

    assert_redirected_to foo89s_url
  end
end
