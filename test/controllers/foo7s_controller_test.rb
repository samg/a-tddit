require "test_helper"

class Foo7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo7 = foo7s(:one)
  end

  test "should get index" do
    get foo7s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo7_url
    assert_response :success
  end

  test "should create foo7" do
    assert_difference('Foo7.count') do
      post foo7s_url, params: { foo7: { foo1: @foo7.foo1, foo2: @foo7.foo2, foo3: @foo7.foo3, foo4: @foo7.foo4, foo5: @foo7.foo5 } }
    end

    assert_redirected_to foo7_url(Foo7.last)
  end

  test "should show foo7" do
    get foo7_url(@foo7)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo7_url(@foo7)
    assert_response :success
  end

  test "should update foo7" do
    patch foo7_url(@foo7), params: { foo7: { foo1: @foo7.foo1, foo2: @foo7.foo2, foo3: @foo7.foo3, foo4: @foo7.foo4, foo5: @foo7.foo5 } }
    assert_redirected_to foo7_url(@foo7)
  end

  test "should destroy foo7" do
    assert_difference('Foo7.count', -1) do
      delete foo7_url(@foo7)
    end

    assert_redirected_to foo7s_url
  end
end
