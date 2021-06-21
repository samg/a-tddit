require "test_helper"

class Foo18sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo18 = foo18s(:one)
  end

  test "should get index" do
    get foo18s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo18_url
    assert_response :success
  end

  test "should create foo18" do
    assert_difference('Foo18.count') do
      post foo18s_url, params: { foo18: { foo1: @foo18.foo1, foo2: @foo18.foo2, foo3: @foo18.foo3, foo4: @foo18.foo4, foo5: @foo18.foo5 } }
    end

    assert_redirected_to foo18_url(Foo18.last)
  end

  test "should show foo18" do
    get foo18_url(@foo18)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo18_url(@foo18)
    assert_response :success
  end

  test "should update foo18" do
    patch foo18_url(@foo18), params: { foo18: { foo1: @foo18.foo1, foo2: @foo18.foo2, foo3: @foo18.foo3, foo4: @foo18.foo4, foo5: @foo18.foo5 } }
    assert_redirected_to foo18_url(@foo18)
  end

  test "should destroy foo18" do
    assert_difference('Foo18.count', -1) do
      delete foo18_url(@foo18)
    end

    assert_redirected_to foo18s_url
  end
end
