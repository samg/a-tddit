require "test_helper"

class Foo5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo5 = foo5s(:one)
  end

  test "should get index" do
    get foo5s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo5_url
    assert_response :success
  end

  test "should create foo5" do
    assert_difference('Foo5.count') do
      post foo5s_url, params: { foo5: { foo1: @foo5.foo1, foo2: @foo5.foo2, foo3: @foo5.foo3, foo4: @foo5.foo4, foo5: @foo5.foo5 } }
    end

    assert_redirected_to foo5_url(Foo5.last)
  end

  test "should show foo5" do
    get foo5_url(@foo5)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo5_url(@foo5)
    assert_response :success
  end

  test "should update foo5" do
    patch foo5_url(@foo5), params: { foo5: { foo1: @foo5.foo1, foo2: @foo5.foo2, foo3: @foo5.foo3, foo4: @foo5.foo4, foo5: @foo5.foo5 } }
    assert_redirected_to foo5_url(@foo5)
  end

  test "should destroy foo5" do
    assert_difference('Foo5.count', -1) do
      delete foo5_url(@foo5)
    end

    assert_redirected_to foo5s_url
  end
end
