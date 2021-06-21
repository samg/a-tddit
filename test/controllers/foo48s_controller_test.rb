require "test_helper"

class Foo48sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo48 = foo48s(:one)
  end

  test "should get index" do
    get foo48s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo48_url
    assert_response :success
  end

  test "should create foo48" do
    assert_difference('Foo48.count') do
      post foo48s_url, params: { foo48: { foo1: @foo48.foo1, foo2: @foo48.foo2, foo3: @foo48.foo3, foo4: @foo48.foo4, foo5: @foo48.foo5 } }
    end

    assert_redirected_to foo48_url(Foo48.last)
  end

  test "should show foo48" do
    get foo48_url(@foo48)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo48_url(@foo48)
    assert_response :success
  end

  test "should update foo48" do
    patch foo48_url(@foo48), params: { foo48: { foo1: @foo48.foo1, foo2: @foo48.foo2, foo3: @foo48.foo3, foo4: @foo48.foo4, foo5: @foo48.foo5 } }
    assert_redirected_to foo48_url(@foo48)
  end

  test "should destroy foo48" do
    assert_difference('Foo48.count', -1) do
      delete foo48_url(@foo48)
    end

    assert_redirected_to foo48s_url
  end
end
