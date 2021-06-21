require "test_helper"

class Foo41sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo41 = foo41s(:one)
  end

  test "should get index" do
    get foo41s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo41_url
    assert_response :success
  end

  test "should create foo41" do
    assert_difference('Foo41.count') do
      post foo41s_url, params: { foo41: { foo1: @foo41.foo1, foo2: @foo41.foo2, foo3: @foo41.foo3, foo4: @foo41.foo4, foo5: @foo41.foo5 } }
    end

    assert_redirected_to foo41_url(Foo41.last)
  end

  test "should show foo41" do
    get foo41_url(@foo41)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo41_url(@foo41)
    assert_response :success
  end

  test "should update foo41" do
    patch foo41_url(@foo41), params: { foo41: { foo1: @foo41.foo1, foo2: @foo41.foo2, foo3: @foo41.foo3, foo4: @foo41.foo4, foo5: @foo41.foo5 } }
    assert_redirected_to foo41_url(@foo41)
  end

  test "should destroy foo41" do
    assert_difference('Foo41.count', -1) do
      delete foo41_url(@foo41)
    end

    assert_redirected_to foo41s_url
  end
end
