require "test_helper"

class Foo38sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo38 = foo38s(:one)
  end

  test "should get index" do
    get foo38s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo38_url
    assert_response :success
  end

  test "should create foo38" do
    assert_difference('Foo38.count') do
      post foo38s_url, params: { foo38: { foo1: @foo38.foo1, foo2: @foo38.foo2, foo3: @foo38.foo3, foo4: @foo38.foo4, foo5: @foo38.foo5 } }
    end

    assert_redirected_to foo38_url(Foo38.last)
  end

  test "should show foo38" do
    get foo38_url(@foo38)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo38_url(@foo38)
    assert_response :success
  end

  test "should update foo38" do
    patch foo38_url(@foo38), params: { foo38: { foo1: @foo38.foo1, foo2: @foo38.foo2, foo3: @foo38.foo3, foo4: @foo38.foo4, foo5: @foo38.foo5 } }
    assert_redirected_to foo38_url(@foo38)
  end

  test "should destroy foo38" do
    assert_difference('Foo38.count', -1) do
      delete foo38_url(@foo38)
    end

    assert_redirected_to foo38s_url
  end
end
