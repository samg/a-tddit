require "test_helper"

class Foo19sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo19 = foo19s(:one)
  end

  test "should get index" do
    get foo19s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo19_url
    assert_response :success
  end

  test "should create foo19" do
    assert_difference('Foo19.count') do
      post foo19s_url, params: { foo19: { foo1: @foo19.foo1, foo2: @foo19.foo2, foo3: @foo19.foo3, foo4: @foo19.foo4, foo5: @foo19.foo5 } }
    end

    assert_redirected_to foo19_url(Foo19.last)
  end

  test "should show foo19" do
    get foo19_url(@foo19)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo19_url(@foo19)
    assert_response :success
  end

  test "should update foo19" do
    patch foo19_url(@foo19), params: { foo19: { foo1: @foo19.foo1, foo2: @foo19.foo2, foo3: @foo19.foo3, foo4: @foo19.foo4, foo5: @foo19.foo5 } }
    assert_redirected_to foo19_url(@foo19)
  end

  test "should destroy foo19" do
    assert_difference('Foo19.count', -1) do
      delete foo19_url(@foo19)
    end

    assert_redirected_to foo19s_url
  end
end
