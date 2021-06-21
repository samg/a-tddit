require "test_helper"

class Foo43sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo43 = foo43s(:one)
  end

  test "should get index" do
    get foo43s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo43_url
    assert_response :success
  end

  test "should create foo43" do
    assert_difference('Foo43.count') do
      post foo43s_url, params: { foo43: { foo1: @foo43.foo1, foo2: @foo43.foo2, foo3: @foo43.foo3, foo4: @foo43.foo4, foo5: @foo43.foo5 } }
    end

    assert_redirected_to foo43_url(Foo43.last)
  end

  test "should show foo43" do
    get foo43_url(@foo43)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo43_url(@foo43)
    assert_response :success
  end

  test "should update foo43" do
    patch foo43_url(@foo43), params: { foo43: { foo1: @foo43.foo1, foo2: @foo43.foo2, foo3: @foo43.foo3, foo4: @foo43.foo4, foo5: @foo43.foo5 } }
    assert_redirected_to foo43_url(@foo43)
  end

  test "should destroy foo43" do
    assert_difference('Foo43.count', -1) do
      delete foo43_url(@foo43)
    end

    assert_redirected_to foo43s_url
  end
end
