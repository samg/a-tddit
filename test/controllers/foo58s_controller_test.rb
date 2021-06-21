require "test_helper"

class Foo58sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo58 = foo58s(:one)
  end

  test "should get index" do
    get foo58s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo58_url
    assert_response :success
  end

  test "should create foo58" do
    assert_difference('Foo58.count') do
      post foo58s_url, params: { foo58: { foo1: @foo58.foo1, foo2: @foo58.foo2, foo3: @foo58.foo3, foo4: @foo58.foo4, foo5: @foo58.foo5 } }
    end

    assert_redirected_to foo58_url(Foo58.last)
  end

  test "should show foo58" do
    get foo58_url(@foo58)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo58_url(@foo58)
    assert_response :success
  end

  test "should update foo58" do
    patch foo58_url(@foo58), params: { foo58: { foo1: @foo58.foo1, foo2: @foo58.foo2, foo3: @foo58.foo3, foo4: @foo58.foo4, foo5: @foo58.foo5 } }
    assert_redirected_to foo58_url(@foo58)
  end

  test "should destroy foo58" do
    assert_difference('Foo58.count', -1) do
      delete foo58_url(@foo58)
    end

    assert_redirected_to foo58s_url
  end
end
