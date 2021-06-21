require "test_helper"

class Foo23sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo23 = foo23s(:one)
  end

  test "should get index" do
    get foo23s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo23_url
    assert_response :success
  end

  test "should create foo23" do
    assert_difference('Foo23.count') do
      post foo23s_url, params: { foo23: { foo1: @foo23.foo1, foo2: @foo23.foo2, foo3: @foo23.foo3, foo4: @foo23.foo4, foo5: @foo23.foo5 } }
    end

    assert_redirected_to foo23_url(Foo23.last)
  end

  test "should show foo23" do
    get foo23_url(@foo23)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo23_url(@foo23)
    assert_response :success
  end

  test "should update foo23" do
    patch foo23_url(@foo23), params: { foo23: { foo1: @foo23.foo1, foo2: @foo23.foo2, foo3: @foo23.foo3, foo4: @foo23.foo4, foo5: @foo23.foo5 } }
    assert_redirected_to foo23_url(@foo23)
  end

  test "should destroy foo23" do
    assert_difference('Foo23.count', -1) do
      delete foo23_url(@foo23)
    end

    assert_redirected_to foo23s_url
  end
end
