require "test_helper"

class Foo39sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo39 = foo39s(:one)
  end

  test "should get index" do
    get foo39s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo39_url
    assert_response :success
  end

  test "should create foo39" do
    assert_difference('Foo39.count') do
      post foo39s_url, params: { foo39: { foo1: @foo39.foo1, foo2: @foo39.foo2, foo3: @foo39.foo3, foo4: @foo39.foo4, foo5: @foo39.foo5 } }
    end

    assert_redirected_to foo39_url(Foo39.last)
  end

  test "should show foo39" do
    get foo39_url(@foo39)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo39_url(@foo39)
    assert_response :success
  end

  test "should update foo39" do
    patch foo39_url(@foo39), params: { foo39: { foo1: @foo39.foo1, foo2: @foo39.foo2, foo3: @foo39.foo3, foo4: @foo39.foo4, foo5: @foo39.foo5 } }
    assert_redirected_to foo39_url(@foo39)
  end

  test "should destroy foo39" do
    assert_difference('Foo39.count', -1) do
      delete foo39_url(@foo39)
    end

    assert_redirected_to foo39s_url
  end
end
