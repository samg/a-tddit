require "test_helper"

class Foo28sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo28 = foo28s(:one)
  end

  test "should get index" do
    get foo28s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo28_url
    assert_response :success
  end

  test "should create foo28" do
    assert_difference('Foo28.count') do
      post foo28s_url, params: { foo28: { foo1: @foo28.foo1, foo2: @foo28.foo2, foo3: @foo28.foo3, foo4: @foo28.foo4, foo5: @foo28.foo5 } }
    end

    assert_redirected_to foo28_url(Foo28.last)
  end

  test "should show foo28" do
    get foo28_url(@foo28)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo28_url(@foo28)
    assert_response :success
  end

  test "should update foo28" do
    patch foo28_url(@foo28), params: { foo28: { foo1: @foo28.foo1, foo2: @foo28.foo2, foo3: @foo28.foo3, foo4: @foo28.foo4, foo5: @foo28.foo5 } }
    assert_redirected_to foo28_url(@foo28)
  end

  test "should destroy foo28" do
    assert_difference('Foo28.count', -1) do
      delete foo28_url(@foo28)
    end

    assert_redirected_to foo28s_url
  end
end
