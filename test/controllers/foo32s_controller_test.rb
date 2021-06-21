require "test_helper"

class Foo32sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo32 = foo32s(:one)
  end

  test "should get index" do
    get foo32s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo32_url
    assert_response :success
  end

  test "should create foo32" do
    assert_difference('Foo32.count') do
      post foo32s_url, params: { foo32: { foo1: @foo32.foo1, foo2: @foo32.foo2, foo3: @foo32.foo3, foo4: @foo32.foo4, foo5: @foo32.foo5 } }
    end

    assert_redirected_to foo32_url(Foo32.last)
  end

  test "should show foo32" do
    get foo32_url(@foo32)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo32_url(@foo32)
    assert_response :success
  end

  test "should update foo32" do
    patch foo32_url(@foo32), params: { foo32: { foo1: @foo32.foo1, foo2: @foo32.foo2, foo3: @foo32.foo3, foo4: @foo32.foo4, foo5: @foo32.foo5 } }
    assert_redirected_to foo32_url(@foo32)
  end

  test "should destroy foo32" do
    assert_difference('Foo32.count', -1) do
      delete foo32_url(@foo32)
    end

    assert_redirected_to foo32s_url
  end
end
