require "test_helper"

class Foo2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo2 = foo2s(:one)
  end

  test "should get index" do
    get foo2s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo2_url
    assert_response :success
  end

  test "should create foo2" do
    assert_difference('Foo2.count') do
      post foo2s_url, params: { foo2: { foo1: @foo2.foo1, foo2: @foo2.foo2, foo3: @foo2.foo3, foo4: @foo2.foo4, foo5: @foo2.foo5 } }
    end

    assert_redirected_to foo2_url(Foo2.last)
  end

  test "should show foo2" do
    get foo2_url(@foo2)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo2_url(@foo2)
    assert_response :success
  end

  test "should update foo2" do
    patch foo2_url(@foo2), params: { foo2: { foo1: @foo2.foo1, foo2: @foo2.foo2, foo3: @foo2.foo3, foo4: @foo2.foo4, foo5: @foo2.foo5 } }
    assert_redirected_to foo2_url(@foo2)
  end

  test "should destroy foo2" do
    assert_difference('Foo2.count', -1) do
      delete foo2_url(@foo2)
    end

    assert_redirected_to foo2s_url
  end
end
