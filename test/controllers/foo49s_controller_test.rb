require "test_helper"

class Foo49sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo49 = foo49s(:one)
  end

  test "should get index" do
    get foo49s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo49_url
    assert_response :success
  end

  test "should create foo49" do
    assert_difference('Foo49.count') do
      post foo49s_url, params: { foo49: { foo1: @foo49.foo1, foo2: @foo49.foo2, foo3: @foo49.foo3, foo4: @foo49.foo4, foo5: @foo49.foo5 } }
    end

    assert_redirected_to foo49_url(Foo49.last)
  end

  test "should show foo49" do
    get foo49_url(@foo49)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo49_url(@foo49)
    assert_response :success
  end

  test "should update foo49" do
    patch foo49_url(@foo49), params: { foo49: { foo1: @foo49.foo1, foo2: @foo49.foo2, foo3: @foo49.foo3, foo4: @foo49.foo4, foo5: @foo49.foo5 } }
    assert_redirected_to foo49_url(@foo49)
  end

  test "should destroy foo49" do
    assert_difference('Foo49.count', -1) do
      delete foo49_url(@foo49)
    end

    assert_redirected_to foo49s_url
  end
end
