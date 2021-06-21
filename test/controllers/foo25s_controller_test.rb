require "test_helper"

class Foo25sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo25 = foo25s(:one)
  end

  test "should get index" do
    get foo25s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo25_url
    assert_response :success
  end

  test "should create foo25" do
    assert_difference('Foo25.count') do
      post foo25s_url, params: { foo25: { foo1: @foo25.foo1, foo2: @foo25.foo2, foo3: @foo25.foo3, foo4: @foo25.foo4, foo5: @foo25.foo5 } }
    end

    assert_redirected_to foo25_url(Foo25.last)
  end

  test "should show foo25" do
    get foo25_url(@foo25)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo25_url(@foo25)
    assert_response :success
  end

  test "should update foo25" do
    patch foo25_url(@foo25), params: { foo25: { foo1: @foo25.foo1, foo2: @foo25.foo2, foo3: @foo25.foo3, foo4: @foo25.foo4, foo5: @foo25.foo5 } }
    assert_redirected_to foo25_url(@foo25)
  end

  test "should destroy foo25" do
    assert_difference('Foo25.count', -1) do
      delete foo25_url(@foo25)
    end

    assert_redirected_to foo25s_url
  end
end
