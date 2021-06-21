require "test_helper"

class Foo55sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo55 = foo55s(:one)
  end

  test "should get index" do
    get foo55s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo55_url
    assert_response :success
  end

  test "should create foo55" do
    assert_difference('Foo55.count') do
      post foo55s_url, params: { foo55: { foo1: @foo55.foo1, foo2: @foo55.foo2, foo3: @foo55.foo3, foo4: @foo55.foo4, foo5: @foo55.foo5 } }
    end

    assert_redirected_to foo55_url(Foo55.last)
  end

  test "should show foo55" do
    get foo55_url(@foo55)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo55_url(@foo55)
    assert_response :success
  end

  test "should update foo55" do
    patch foo55_url(@foo55), params: { foo55: { foo1: @foo55.foo1, foo2: @foo55.foo2, foo3: @foo55.foo3, foo4: @foo55.foo4, foo5: @foo55.foo5 } }
    assert_redirected_to foo55_url(@foo55)
  end

  test "should destroy foo55" do
    assert_difference('Foo55.count', -1) do
      delete foo55_url(@foo55)
    end

    assert_redirected_to foo55s_url
  end
end
