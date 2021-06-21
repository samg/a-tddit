require "test_helper"

class Foo16sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo16 = foo16s(:one)
  end

  test "should get index" do
    get foo16s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo16_url
    assert_response :success
  end

  test "should create foo16" do
    assert_difference('Foo16.count') do
      post foo16s_url, params: { foo16: { foo1: @foo16.foo1, foo2: @foo16.foo2, foo3: @foo16.foo3, foo4: @foo16.foo4, foo5: @foo16.foo5 } }
    end

    assert_redirected_to foo16_url(Foo16.last)
  end

  test "should show foo16" do
    get foo16_url(@foo16)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo16_url(@foo16)
    assert_response :success
  end

  test "should update foo16" do
    patch foo16_url(@foo16), params: { foo16: { foo1: @foo16.foo1, foo2: @foo16.foo2, foo3: @foo16.foo3, foo4: @foo16.foo4, foo5: @foo16.foo5 } }
    assert_redirected_to foo16_url(@foo16)
  end

  test "should destroy foo16" do
    assert_difference('Foo16.count', -1) do
      delete foo16_url(@foo16)
    end

    assert_redirected_to foo16s_url
  end
end
