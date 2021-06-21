require "test_helper"

class Foo33sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo33 = foo33s(:one)
  end

  test "should get index" do
    get foo33s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo33_url
    assert_response :success
  end

  test "should create foo33" do
    assert_difference('Foo33.count') do
      post foo33s_url, params: { foo33: { foo1: @foo33.foo1, foo2: @foo33.foo2, foo3: @foo33.foo3, foo4: @foo33.foo4, foo5: @foo33.foo5 } }
    end

    assert_redirected_to foo33_url(Foo33.last)
  end

  test "should show foo33" do
    get foo33_url(@foo33)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo33_url(@foo33)
    assert_response :success
  end

  test "should update foo33" do
    patch foo33_url(@foo33), params: { foo33: { foo1: @foo33.foo1, foo2: @foo33.foo2, foo3: @foo33.foo3, foo4: @foo33.foo4, foo5: @foo33.foo5 } }
    assert_redirected_to foo33_url(@foo33)
  end

  test "should destroy foo33" do
    assert_difference('Foo33.count', -1) do
      delete foo33_url(@foo33)
    end

    assert_redirected_to foo33s_url
  end
end
