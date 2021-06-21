require "test_helper"

class Foo24sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo24 = foo24s(:one)
  end

  test "should get index" do
    get foo24s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo24_url
    assert_response :success
  end

  test "should create foo24" do
    assert_difference('Foo24.count') do
      post foo24s_url, params: { foo24: { foo1: @foo24.foo1, foo2: @foo24.foo2, foo3: @foo24.foo3, foo4: @foo24.foo4, foo5: @foo24.foo5 } }
    end

    assert_redirected_to foo24_url(Foo24.last)
  end

  test "should show foo24" do
    get foo24_url(@foo24)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo24_url(@foo24)
    assert_response :success
  end

  test "should update foo24" do
    patch foo24_url(@foo24), params: { foo24: { foo1: @foo24.foo1, foo2: @foo24.foo2, foo3: @foo24.foo3, foo4: @foo24.foo4, foo5: @foo24.foo5 } }
    assert_redirected_to foo24_url(@foo24)
  end

  test "should destroy foo24" do
    assert_difference('Foo24.count', -1) do
      delete foo24_url(@foo24)
    end

    assert_redirected_to foo24s_url
  end
end
