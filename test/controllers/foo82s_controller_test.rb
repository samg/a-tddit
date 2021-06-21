require "test_helper"

class Foo82sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo82 = foo82s(:one)
  end

  test "should get index" do
    get foo82s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo82_url
    assert_response :success
  end

  test "should create foo82" do
    assert_difference('Foo82.count') do
      post foo82s_url, params: { foo82: { foo1: @foo82.foo1, foo2: @foo82.foo2, foo3: @foo82.foo3, foo4: @foo82.foo4, foo5: @foo82.foo5 } }
    end

    assert_redirected_to foo82_url(Foo82.last)
  end

  test "should show foo82" do
    get foo82_url(@foo82)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo82_url(@foo82)
    assert_response :success
  end

  test "should update foo82" do
    patch foo82_url(@foo82), params: { foo82: { foo1: @foo82.foo1, foo2: @foo82.foo2, foo3: @foo82.foo3, foo4: @foo82.foo4, foo5: @foo82.foo5 } }
    assert_redirected_to foo82_url(@foo82)
  end

  test "should destroy foo82" do
    assert_difference('Foo82.count', -1) do
      delete foo82_url(@foo82)
    end

    assert_redirected_to foo82s_url
  end
end
