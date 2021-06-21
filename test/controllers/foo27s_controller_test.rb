require "test_helper"

class Foo27sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo27 = foo27s(:one)
  end

  test "should get index" do
    get foo27s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo27_url
    assert_response :success
  end

  test "should create foo27" do
    assert_difference('Foo27.count') do
      post foo27s_url, params: { foo27: { foo1: @foo27.foo1, foo2: @foo27.foo2, foo3: @foo27.foo3, foo4: @foo27.foo4, foo5: @foo27.foo5 } }
    end

    assert_redirected_to foo27_url(Foo27.last)
  end

  test "should show foo27" do
    get foo27_url(@foo27)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo27_url(@foo27)
    assert_response :success
  end

  test "should update foo27" do
    patch foo27_url(@foo27), params: { foo27: { foo1: @foo27.foo1, foo2: @foo27.foo2, foo3: @foo27.foo3, foo4: @foo27.foo4, foo5: @foo27.foo5 } }
    assert_redirected_to foo27_url(@foo27)
  end

  test "should destroy foo27" do
    assert_difference('Foo27.count', -1) do
      delete foo27_url(@foo27)
    end

    assert_redirected_to foo27s_url
  end
end
