require "test_helper"

class Foo86sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo86 = foo86s(:one)
  end

  test "should get index" do
    get foo86s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo86_url
    assert_response :success
  end

  test "should create foo86" do
    assert_difference('Foo86.count') do
      post foo86s_url, params: { foo86: { foo1: @foo86.foo1, foo2: @foo86.foo2, foo3: @foo86.foo3, foo4: @foo86.foo4, foo5: @foo86.foo5 } }
    end

    assert_redirected_to foo86_url(Foo86.last)
  end

  test "should show foo86" do
    get foo86_url(@foo86)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo86_url(@foo86)
    assert_response :success
  end

  test "should update foo86" do
    patch foo86_url(@foo86), params: { foo86: { foo1: @foo86.foo1, foo2: @foo86.foo2, foo3: @foo86.foo3, foo4: @foo86.foo4, foo5: @foo86.foo5 } }
    assert_redirected_to foo86_url(@foo86)
  end

  test "should destroy foo86" do
    assert_difference('Foo86.count', -1) do
      delete foo86_url(@foo86)
    end

    assert_redirected_to foo86s_url
  end
end
