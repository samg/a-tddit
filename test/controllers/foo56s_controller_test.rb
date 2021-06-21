require "test_helper"

class Foo56sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo56 = foo56s(:one)
  end

  test "should get index" do
    get foo56s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo56_url
    assert_response :success
  end

  test "should create foo56" do
    assert_difference('Foo56.count') do
      post foo56s_url, params: { foo56: { foo1: @foo56.foo1, foo2: @foo56.foo2, foo3: @foo56.foo3, foo4: @foo56.foo4, foo5: @foo56.foo5 } }
    end

    assert_redirected_to foo56_url(Foo56.last)
  end

  test "should show foo56" do
    get foo56_url(@foo56)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo56_url(@foo56)
    assert_response :success
  end

  test "should update foo56" do
    patch foo56_url(@foo56), params: { foo56: { foo1: @foo56.foo1, foo2: @foo56.foo2, foo3: @foo56.foo3, foo4: @foo56.foo4, foo5: @foo56.foo5 } }
    assert_redirected_to foo56_url(@foo56)
  end

  test "should destroy foo56" do
    assert_difference('Foo56.count', -1) do
      delete foo56_url(@foo56)
    end

    assert_redirected_to foo56s_url
  end
end
