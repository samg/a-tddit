require "test_helper"

class Foo100sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo100 = foo100s(:one)
  end

  test "should get index" do
    get foo100s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo100_url
    assert_response :success
  end

  test "should create foo100" do
    assert_difference('Foo100.count') do
      post foo100s_url, params: { foo100: { foo1: @foo100.foo1, foo2: @foo100.foo2, foo3: @foo100.foo3, foo4: @foo100.foo4, foo5: @foo100.foo5 } }
    end

    assert_redirected_to foo100_url(Foo100.last)
  end

  test "should show foo100" do
    get foo100_url(@foo100)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo100_url(@foo100)
    assert_response :success
  end

  test "should update foo100" do
    patch foo100_url(@foo100), params: { foo100: { foo1: @foo100.foo1, foo2: @foo100.foo2, foo3: @foo100.foo3, foo4: @foo100.foo4, foo5: @foo100.foo5 } }
    assert_redirected_to foo100_url(@foo100)
  end

  test "should destroy foo100" do
    assert_difference('Foo100.count', -1) do
      delete foo100_url(@foo100)
    end

    assert_redirected_to foo100s_url
  end
end
