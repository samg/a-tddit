require "test_helper"

class Foo61sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo61 = foo61s(:one)
  end

  test "should get index" do
    get foo61s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo61_url
    assert_response :success
  end

  test "should create foo61" do
    assert_difference('Foo61.count') do
      post foo61s_url, params: { foo61: { foo1: @foo61.foo1, foo2: @foo61.foo2, foo3: @foo61.foo3, foo4: @foo61.foo4, foo5: @foo61.foo5 } }
    end

    assert_redirected_to foo61_url(Foo61.last)
  end

  test "should show foo61" do
    get foo61_url(@foo61)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo61_url(@foo61)
    assert_response :success
  end

  test "should update foo61" do
    patch foo61_url(@foo61), params: { foo61: { foo1: @foo61.foo1, foo2: @foo61.foo2, foo3: @foo61.foo3, foo4: @foo61.foo4, foo5: @foo61.foo5 } }
    assert_redirected_to foo61_url(@foo61)
  end

  test "should destroy foo61" do
    assert_difference('Foo61.count', -1) do
      delete foo61_url(@foo61)
    end

    assert_redirected_to foo61s_url
  end
end
