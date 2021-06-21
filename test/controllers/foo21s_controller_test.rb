require "test_helper"

class Foo21sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo21 = foo21s(:one)
  end

  test "should get index" do
    get foo21s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo21_url
    assert_response :success
  end

  test "should create foo21" do
    assert_difference('Foo21.count') do
      post foo21s_url, params: { foo21: { foo1: @foo21.foo1, foo2: @foo21.foo2, foo3: @foo21.foo3, foo4: @foo21.foo4, foo5: @foo21.foo5 } }
    end

    assert_redirected_to foo21_url(Foo21.last)
  end

  test "should show foo21" do
    get foo21_url(@foo21)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo21_url(@foo21)
    assert_response :success
  end

  test "should update foo21" do
    patch foo21_url(@foo21), params: { foo21: { foo1: @foo21.foo1, foo2: @foo21.foo2, foo3: @foo21.foo3, foo4: @foo21.foo4, foo5: @foo21.foo5 } }
    assert_redirected_to foo21_url(@foo21)
  end

  test "should destroy foo21" do
    assert_difference('Foo21.count', -1) do
      delete foo21_url(@foo21)
    end

    assert_redirected_to foo21s_url
  end
end
