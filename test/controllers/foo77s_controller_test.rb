require "test_helper"

class Foo77sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo77 = foo77s(:one)
  end

  test "should get index" do
    get foo77s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo77_url
    assert_response :success
  end

  test "should create foo77" do
    assert_difference('Foo77.count') do
      post foo77s_url, params: { foo77: { foo1: @foo77.foo1, foo2: @foo77.foo2, foo3: @foo77.foo3, foo4: @foo77.foo4, foo5: @foo77.foo5 } }
    end

    assert_redirected_to foo77_url(Foo77.last)
  end

  test "should show foo77" do
    get foo77_url(@foo77)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo77_url(@foo77)
    assert_response :success
  end

  test "should update foo77" do
    patch foo77_url(@foo77), params: { foo77: { foo1: @foo77.foo1, foo2: @foo77.foo2, foo3: @foo77.foo3, foo4: @foo77.foo4, foo5: @foo77.foo5 } }
    assert_redirected_to foo77_url(@foo77)
  end

  test "should destroy foo77" do
    assert_difference('Foo77.count', -1) do
      delete foo77_url(@foo77)
    end

    assert_redirected_to foo77s_url
  end
end
