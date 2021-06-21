require "test_helper"

class Foo66sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo66 = foo66s(:one)
  end

  test "should get index" do
    get foo66s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo66_url
    assert_response :success
  end

  test "should create foo66" do
    assert_difference('Foo66.count') do
      post foo66s_url, params: { foo66: { foo1: @foo66.foo1, foo2: @foo66.foo2, foo3: @foo66.foo3, foo4: @foo66.foo4, foo5: @foo66.foo5 } }
    end

    assert_redirected_to foo66_url(Foo66.last)
  end

  test "should show foo66" do
    get foo66_url(@foo66)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo66_url(@foo66)
    assert_response :success
  end

  test "should update foo66" do
    patch foo66_url(@foo66), params: { foo66: { foo1: @foo66.foo1, foo2: @foo66.foo2, foo3: @foo66.foo3, foo4: @foo66.foo4, foo5: @foo66.foo5 } }
    assert_redirected_to foo66_url(@foo66)
  end

  test "should destroy foo66" do
    assert_difference('Foo66.count', -1) do
      delete foo66_url(@foo66)
    end

    assert_redirected_to foo66s_url
  end
end
