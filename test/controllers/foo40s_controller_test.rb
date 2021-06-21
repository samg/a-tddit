require "test_helper"

class Foo40sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo40 = foo40s(:one)
  end

  test "should get index" do
    get foo40s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo40_url
    assert_response :success
  end

  test "should create foo40" do
    assert_difference('Foo40.count') do
      post foo40s_url, params: { foo40: { foo1: @foo40.foo1, foo2: @foo40.foo2, foo3: @foo40.foo3, foo4: @foo40.foo4, foo5: @foo40.foo5 } }
    end

    assert_redirected_to foo40_url(Foo40.last)
  end

  test "should show foo40" do
    get foo40_url(@foo40)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo40_url(@foo40)
    assert_response :success
  end

  test "should update foo40" do
    patch foo40_url(@foo40), params: { foo40: { foo1: @foo40.foo1, foo2: @foo40.foo2, foo3: @foo40.foo3, foo4: @foo40.foo4, foo5: @foo40.foo5 } }
    assert_redirected_to foo40_url(@foo40)
  end

  test "should destroy foo40" do
    assert_difference('Foo40.count', -1) do
      delete foo40_url(@foo40)
    end

    assert_redirected_to foo40s_url
  end
end
