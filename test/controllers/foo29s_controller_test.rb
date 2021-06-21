require "test_helper"

class Foo29sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo29 = foo29s(:one)
  end

  test "should get index" do
    get foo29s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo29_url
    assert_response :success
  end

  test "should create foo29" do
    assert_difference('Foo29.count') do
      post foo29s_url, params: { foo29: { foo1: @foo29.foo1, foo2: @foo29.foo2, foo3: @foo29.foo3, foo4: @foo29.foo4, foo5: @foo29.foo5 } }
    end

    assert_redirected_to foo29_url(Foo29.last)
  end

  test "should show foo29" do
    get foo29_url(@foo29)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo29_url(@foo29)
    assert_response :success
  end

  test "should update foo29" do
    patch foo29_url(@foo29), params: { foo29: { foo1: @foo29.foo1, foo2: @foo29.foo2, foo3: @foo29.foo3, foo4: @foo29.foo4, foo5: @foo29.foo5 } }
    assert_redirected_to foo29_url(@foo29)
  end

  test "should destroy foo29" do
    assert_difference('Foo29.count', -1) do
      delete foo29_url(@foo29)
    end

    assert_redirected_to foo29s_url
  end
end
