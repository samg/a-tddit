require "test_helper"

class Foo93sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo93 = foo93s(:one)
  end

  test "should get index" do
    get foo93s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo93_url
    assert_response :success
  end

  test "should create foo93" do
    assert_difference('Foo93.count') do
      post foo93s_url, params: { foo93: { foo1: @foo93.foo1, foo2: @foo93.foo2, foo3: @foo93.foo3, foo4: @foo93.foo4, foo5: @foo93.foo5 } }
    end

    assert_redirected_to foo93_url(Foo93.last)
  end

  test "should show foo93" do
    get foo93_url(@foo93)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo93_url(@foo93)
    assert_response :success
  end

  test "should update foo93" do
    patch foo93_url(@foo93), params: { foo93: { foo1: @foo93.foo1, foo2: @foo93.foo2, foo3: @foo93.foo3, foo4: @foo93.foo4, foo5: @foo93.foo5 } }
    assert_redirected_to foo93_url(@foo93)
  end

  test "should destroy foo93" do
    assert_difference('Foo93.count', -1) do
      delete foo93_url(@foo93)
    end

    assert_redirected_to foo93s_url
  end
end
