require "test_helper"

class Foo62sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo62 = foo62s(:one)
  end

  test "should get index" do
    get foo62s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo62_url
    assert_response :success
  end

  test "should create foo62" do
    assert_difference('Foo62.count') do
      post foo62s_url, params: { foo62: { foo1: @foo62.foo1, foo2: @foo62.foo2, foo3: @foo62.foo3, foo4: @foo62.foo4, foo5: @foo62.foo5 } }
    end

    assert_redirected_to foo62_url(Foo62.last)
  end

  test "should show foo62" do
    get foo62_url(@foo62)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo62_url(@foo62)
    assert_response :success
  end

  test "should update foo62" do
    patch foo62_url(@foo62), params: { foo62: { foo1: @foo62.foo1, foo2: @foo62.foo2, foo3: @foo62.foo3, foo4: @foo62.foo4, foo5: @foo62.foo5 } }
    assert_redirected_to foo62_url(@foo62)
  end

  test "should destroy foo62" do
    assert_difference('Foo62.count', -1) do
      delete foo62_url(@foo62)
    end

    assert_redirected_to foo62s_url
  end
end
