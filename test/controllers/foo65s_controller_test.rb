require "test_helper"

class Foo65sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo65 = foo65s(:one)
  end

  test "should get index" do
    get foo65s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo65_url
    assert_response :success
  end

  test "should create foo65" do
    assert_difference('Foo65.count') do
      post foo65s_url, params: { foo65: { foo1: @foo65.foo1, foo2: @foo65.foo2, foo3: @foo65.foo3, foo4: @foo65.foo4, foo5: @foo65.foo5 } }
    end

    assert_redirected_to foo65_url(Foo65.last)
  end

  test "should show foo65" do
    get foo65_url(@foo65)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo65_url(@foo65)
    assert_response :success
  end

  test "should update foo65" do
    patch foo65_url(@foo65), params: { foo65: { foo1: @foo65.foo1, foo2: @foo65.foo2, foo3: @foo65.foo3, foo4: @foo65.foo4, foo5: @foo65.foo5 } }
    assert_redirected_to foo65_url(@foo65)
  end

  test "should destroy foo65" do
    assert_difference('Foo65.count', -1) do
      delete foo65_url(@foo65)
    end

    assert_redirected_to foo65s_url
  end
end
