require "test_helper"

class Foo96sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo96 = foo96s(:one)
  end

  test "should get index" do
    get foo96s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo96_url
    assert_response :success
  end

  test "should create foo96" do
    assert_difference('Foo96.count') do
      post foo96s_url, params: { foo96: { foo1: @foo96.foo1, foo2: @foo96.foo2, foo3: @foo96.foo3, foo4: @foo96.foo4, foo5: @foo96.foo5 } }
    end

    assert_redirected_to foo96_url(Foo96.last)
  end

  test "should show foo96" do
    get foo96_url(@foo96)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo96_url(@foo96)
    assert_response :success
  end

  test "should update foo96" do
    patch foo96_url(@foo96), params: { foo96: { foo1: @foo96.foo1, foo2: @foo96.foo2, foo3: @foo96.foo3, foo4: @foo96.foo4, foo5: @foo96.foo5 } }
    assert_redirected_to foo96_url(@foo96)
  end

  test "should destroy foo96" do
    assert_difference('Foo96.count', -1) do
      delete foo96_url(@foo96)
    end

    assert_redirected_to foo96s_url
  end
end
