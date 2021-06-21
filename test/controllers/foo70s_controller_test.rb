require "test_helper"

class Foo70sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo70 = foo70s(:one)
  end

  test "should get index" do
    get foo70s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo70_url
    assert_response :success
  end

  test "should create foo70" do
    assert_difference('Foo70.count') do
      post foo70s_url, params: { foo70: { foo1: @foo70.foo1, foo2: @foo70.foo2, foo3: @foo70.foo3, foo4: @foo70.foo4, foo5: @foo70.foo5 } }
    end

    assert_redirected_to foo70_url(Foo70.last)
  end

  test "should show foo70" do
    get foo70_url(@foo70)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo70_url(@foo70)
    assert_response :success
  end

  test "should update foo70" do
    patch foo70_url(@foo70), params: { foo70: { foo1: @foo70.foo1, foo2: @foo70.foo2, foo3: @foo70.foo3, foo4: @foo70.foo4, foo5: @foo70.foo5 } }
    assert_redirected_to foo70_url(@foo70)
  end

  test "should destroy foo70" do
    assert_difference('Foo70.count', -1) do
      delete foo70_url(@foo70)
    end

    assert_redirected_to foo70s_url
  end
end
