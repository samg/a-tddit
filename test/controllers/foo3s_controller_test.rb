require "test_helper"

class Foo3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo3 = foo3s(:one)
  end

  test "should get index" do
    get foo3s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo3_url
    assert_response :success
  end

  test "should create foo3" do
    assert_difference('Foo3.count') do
      post foo3s_url, params: { foo3: { foo1: @foo3.foo1, foo2: @foo3.foo2, foo3: @foo3.foo3, foo4: @foo3.foo4, foo5: @foo3.foo5 } }
    end

    assert_redirected_to foo3_url(Foo3.last)
  end

  test "should show foo3" do
    get foo3_url(@foo3)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo3_url(@foo3)
    assert_response :success
  end

  test "should update foo3" do
    patch foo3_url(@foo3), params: { foo3: { foo1: @foo3.foo1, foo2: @foo3.foo2, foo3: @foo3.foo3, foo4: @foo3.foo4, foo5: @foo3.foo5 } }
    assert_redirected_to foo3_url(@foo3)
  end

  test "should destroy foo3" do
    assert_difference('Foo3.count', -1) do
      delete foo3_url(@foo3)
    end

    assert_redirected_to foo3s_url
  end
end
