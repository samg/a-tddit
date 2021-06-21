require "test_helper"

class Foo37sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo37 = foo37s(:one)
  end

  test "should get index" do
    get foo37s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo37_url
    assert_response :success
  end

  test "should create foo37" do
    assert_difference('Foo37.count') do
      post foo37s_url, params: { foo37: { foo1: @foo37.foo1, foo2: @foo37.foo2, foo3: @foo37.foo3, foo4: @foo37.foo4, foo5: @foo37.foo5 } }
    end

    assert_redirected_to foo37_url(Foo37.last)
  end

  test "should show foo37" do
    get foo37_url(@foo37)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo37_url(@foo37)
    assert_response :success
  end

  test "should update foo37" do
    patch foo37_url(@foo37), params: { foo37: { foo1: @foo37.foo1, foo2: @foo37.foo2, foo3: @foo37.foo3, foo4: @foo37.foo4, foo5: @foo37.foo5 } }
    assert_redirected_to foo37_url(@foo37)
  end

  test "should destroy foo37" do
    assert_difference('Foo37.count', -1) do
      delete foo37_url(@foo37)
    end

    assert_redirected_to foo37s_url
  end
end
