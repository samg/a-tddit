require "test_helper"

class Foo1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo1 = foo1s(:one)
  end

  test "should get index" do
    get foo1s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo1_url
    assert_response :success
  end

  test "should create foo1" do
    assert_difference('Foo1.count') do
      post foo1s_url, params: { foo1: { foo1: @foo1.foo1, foo2: @foo1.foo2, foo3: @foo1.foo3, foo4: @foo1.foo4, foo5: @foo1.foo5 } }
    end

    assert_redirected_to foo1_url(Foo1.last)
  end

  test "should show foo1" do
    get foo1_url(@foo1)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo1_url(@foo1)
    assert_response :success
  end

  test "should update foo1" do
    patch foo1_url(@foo1), params: { foo1: { foo1: @foo1.foo1, foo2: @foo1.foo2, foo3: @foo1.foo3, foo4: @foo1.foo4, foo5: @foo1.foo5 } }
    assert_redirected_to foo1_url(@foo1)
  end

  test "should destroy foo1" do
    assert_difference('Foo1.count', -1) do
      delete foo1_url(@foo1)
    end

    assert_redirected_to foo1s_url
  end
end
