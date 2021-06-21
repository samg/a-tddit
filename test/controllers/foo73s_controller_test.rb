require "test_helper"

class Foo73sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo73 = foo73s(:one)
  end

  test "should get index" do
    get foo73s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo73_url
    assert_response :success
  end

  test "should create foo73" do
    assert_difference('Foo73.count') do
      post foo73s_url, params: { foo73: { foo1: @foo73.foo1, foo2: @foo73.foo2, foo3: @foo73.foo3, foo4: @foo73.foo4, foo5: @foo73.foo5 } }
    end

    assert_redirected_to foo73_url(Foo73.last)
  end

  test "should show foo73" do
    get foo73_url(@foo73)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo73_url(@foo73)
    assert_response :success
  end

  test "should update foo73" do
    patch foo73_url(@foo73), params: { foo73: { foo1: @foo73.foo1, foo2: @foo73.foo2, foo3: @foo73.foo3, foo4: @foo73.foo4, foo5: @foo73.foo5 } }
    assert_redirected_to foo73_url(@foo73)
  end

  test "should destroy foo73" do
    assert_difference('Foo73.count', -1) do
      delete foo73_url(@foo73)
    end

    assert_redirected_to foo73s_url
  end
end
