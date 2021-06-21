require "test_helper"

class Foo81sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo81 = foo81s(:one)
  end

  test "should get index" do
    get foo81s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo81_url
    assert_response :success
  end

  test "should create foo81" do
    assert_difference('Foo81.count') do
      post foo81s_url, params: { foo81: { foo1: @foo81.foo1, foo2: @foo81.foo2, foo3: @foo81.foo3, foo4: @foo81.foo4, foo5: @foo81.foo5 } }
    end

    assert_redirected_to foo81_url(Foo81.last)
  end

  test "should show foo81" do
    get foo81_url(@foo81)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo81_url(@foo81)
    assert_response :success
  end

  test "should update foo81" do
    patch foo81_url(@foo81), params: { foo81: { foo1: @foo81.foo1, foo2: @foo81.foo2, foo3: @foo81.foo3, foo4: @foo81.foo4, foo5: @foo81.foo5 } }
    assert_redirected_to foo81_url(@foo81)
  end

  test "should destroy foo81" do
    assert_difference('Foo81.count', -1) do
      delete foo81_url(@foo81)
    end

    assert_redirected_to foo81s_url
  end
end
