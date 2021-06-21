require "test_helper"

class Foo90sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo90 = foo90s(:one)
  end

  test "should get index" do
    get foo90s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo90_url
    assert_response :success
  end

  test "should create foo90" do
    assert_difference('Foo90.count') do
      post foo90s_url, params: { foo90: { foo1: @foo90.foo1, foo2: @foo90.foo2, foo3: @foo90.foo3, foo4: @foo90.foo4, foo5: @foo90.foo5 } }
    end

    assert_redirected_to foo90_url(Foo90.last)
  end

  test "should show foo90" do
    get foo90_url(@foo90)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo90_url(@foo90)
    assert_response :success
  end

  test "should update foo90" do
    patch foo90_url(@foo90), params: { foo90: { foo1: @foo90.foo1, foo2: @foo90.foo2, foo3: @foo90.foo3, foo4: @foo90.foo4, foo5: @foo90.foo5 } }
    assert_redirected_to foo90_url(@foo90)
  end

  test "should destroy foo90" do
    assert_difference('Foo90.count', -1) do
      delete foo90_url(@foo90)
    end

    assert_redirected_to foo90s_url
  end
end
