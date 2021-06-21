require "test_helper"

class Foo95sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo95 = foo95s(:one)
  end

  test "should get index" do
    get foo95s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo95_url
    assert_response :success
  end

  test "should create foo95" do
    assert_difference('Foo95.count') do
      post foo95s_url, params: { foo95: { foo1: @foo95.foo1, foo2: @foo95.foo2, foo3: @foo95.foo3, foo4: @foo95.foo4, foo5: @foo95.foo5 } }
    end

    assert_redirected_to foo95_url(Foo95.last)
  end

  test "should show foo95" do
    get foo95_url(@foo95)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo95_url(@foo95)
    assert_response :success
  end

  test "should update foo95" do
    patch foo95_url(@foo95), params: { foo95: { foo1: @foo95.foo1, foo2: @foo95.foo2, foo3: @foo95.foo3, foo4: @foo95.foo4, foo5: @foo95.foo5 } }
    assert_redirected_to foo95_url(@foo95)
  end

  test "should destroy foo95" do
    assert_difference('Foo95.count', -1) do
      delete foo95_url(@foo95)
    end

    assert_redirected_to foo95s_url
  end
end
