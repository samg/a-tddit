require "test_helper"

class Foo46sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo46 = foo46s(:one)
  end

  test "should get index" do
    get foo46s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo46_url
    assert_response :success
  end

  test "should create foo46" do
    assert_difference('Foo46.count') do
      post foo46s_url, params: { foo46: { foo1: @foo46.foo1, foo2: @foo46.foo2, foo3: @foo46.foo3, foo4: @foo46.foo4, foo5: @foo46.foo5 } }
    end

    assert_redirected_to foo46_url(Foo46.last)
  end

  test "should show foo46" do
    get foo46_url(@foo46)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo46_url(@foo46)
    assert_response :success
  end

  test "should update foo46" do
    patch foo46_url(@foo46), params: { foo46: { foo1: @foo46.foo1, foo2: @foo46.foo2, foo3: @foo46.foo3, foo4: @foo46.foo4, foo5: @foo46.foo5 } }
    assert_redirected_to foo46_url(@foo46)
  end

  test "should destroy foo46" do
    assert_difference('Foo46.count', -1) do
      delete foo46_url(@foo46)
    end

    assert_redirected_to foo46s_url
  end
end
