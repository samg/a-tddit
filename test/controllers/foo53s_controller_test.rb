require "test_helper"

class Foo53sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo53 = foo53s(:one)
  end

  test "should get index" do
    get foo53s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo53_url
    assert_response :success
  end

  test "should create foo53" do
    assert_difference('Foo53.count') do
      post foo53s_url, params: { foo53: { foo1: @foo53.foo1, foo2: @foo53.foo2, foo3: @foo53.foo3, foo4: @foo53.foo4, foo5: @foo53.foo5 } }
    end

    assert_redirected_to foo53_url(Foo53.last)
  end

  test "should show foo53" do
    get foo53_url(@foo53)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo53_url(@foo53)
    assert_response :success
  end

  test "should update foo53" do
    patch foo53_url(@foo53), params: { foo53: { foo1: @foo53.foo1, foo2: @foo53.foo2, foo3: @foo53.foo3, foo4: @foo53.foo4, foo5: @foo53.foo5 } }
    assert_redirected_to foo53_url(@foo53)
  end

  test "should destroy foo53" do
    assert_difference('Foo53.count', -1) do
      delete foo53_url(@foo53)
    end

    assert_redirected_to foo53s_url
  end
end
