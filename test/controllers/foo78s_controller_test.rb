require "test_helper"

class Foo78sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo78 = foo78s(:one)
  end

  test "should get index" do
    get foo78s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo78_url
    assert_response :success
  end

  test "should create foo78" do
    assert_difference('Foo78.count') do
      post foo78s_url, params: { foo78: { foo1: @foo78.foo1, foo2: @foo78.foo2, foo3: @foo78.foo3, foo4: @foo78.foo4, foo5: @foo78.foo5 } }
    end

    assert_redirected_to foo78_url(Foo78.last)
  end

  test "should show foo78" do
    get foo78_url(@foo78)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo78_url(@foo78)
    assert_response :success
  end

  test "should update foo78" do
    patch foo78_url(@foo78), params: { foo78: { foo1: @foo78.foo1, foo2: @foo78.foo2, foo3: @foo78.foo3, foo4: @foo78.foo4, foo5: @foo78.foo5 } }
    assert_redirected_to foo78_url(@foo78)
  end

  test "should destroy foo78" do
    assert_difference('Foo78.count', -1) do
      delete foo78_url(@foo78)
    end

    assert_redirected_to foo78s_url
  end
end
