require "test_helper"

class Foo59sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo59 = foo59s(:one)
  end

  test "should get index" do
    get foo59s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo59_url
    assert_response :success
  end

  test "should create foo59" do
    assert_difference('Foo59.count') do
      post foo59s_url, params: { foo59: { foo1: @foo59.foo1, foo2: @foo59.foo2, foo3: @foo59.foo3, foo4: @foo59.foo4, foo5: @foo59.foo5 } }
    end

    assert_redirected_to foo59_url(Foo59.last)
  end

  test "should show foo59" do
    get foo59_url(@foo59)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo59_url(@foo59)
    assert_response :success
  end

  test "should update foo59" do
    patch foo59_url(@foo59), params: { foo59: { foo1: @foo59.foo1, foo2: @foo59.foo2, foo3: @foo59.foo3, foo4: @foo59.foo4, foo5: @foo59.foo5 } }
    assert_redirected_to foo59_url(@foo59)
  end

  test "should destroy foo59" do
    assert_difference('Foo59.count', -1) do
      delete foo59_url(@foo59)
    end

    assert_redirected_to foo59s_url
  end
end
