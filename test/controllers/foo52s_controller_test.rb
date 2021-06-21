require "test_helper"

class Foo52sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo52 = foo52s(:one)
  end

  test "should get index" do
    get foo52s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo52_url
    assert_response :success
  end

  test "should create foo52" do
    assert_difference('Foo52.count') do
      post foo52s_url, params: { foo52: { foo1: @foo52.foo1, foo2: @foo52.foo2, foo3: @foo52.foo3, foo4: @foo52.foo4, foo5: @foo52.foo5 } }
    end

    assert_redirected_to foo52_url(Foo52.last)
  end

  test "should show foo52" do
    get foo52_url(@foo52)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo52_url(@foo52)
    assert_response :success
  end

  test "should update foo52" do
    patch foo52_url(@foo52), params: { foo52: { foo1: @foo52.foo1, foo2: @foo52.foo2, foo3: @foo52.foo3, foo4: @foo52.foo4, foo5: @foo52.foo5 } }
    assert_redirected_to foo52_url(@foo52)
  end

  test "should destroy foo52" do
    assert_difference('Foo52.count', -1) do
      delete foo52_url(@foo52)
    end

    assert_redirected_to foo52s_url
  end
end
