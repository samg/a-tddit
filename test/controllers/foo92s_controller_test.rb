require "test_helper"

class Foo92sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo92 = foo92s(:one)
  end

  test "should get index" do
    get foo92s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo92_url
    assert_response :success
  end

  test "should create foo92" do
    assert_difference('Foo92.count') do
      post foo92s_url, params: { foo92: { foo1: @foo92.foo1, foo2: @foo92.foo2, foo3: @foo92.foo3, foo4: @foo92.foo4, foo5: @foo92.foo5 } }
    end

    assert_redirected_to foo92_url(Foo92.last)
  end

  test "should show foo92" do
    get foo92_url(@foo92)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo92_url(@foo92)
    assert_response :success
  end

  test "should update foo92" do
    patch foo92_url(@foo92), params: { foo92: { foo1: @foo92.foo1, foo2: @foo92.foo2, foo3: @foo92.foo3, foo4: @foo92.foo4, foo5: @foo92.foo5 } }
    assert_redirected_to foo92_url(@foo92)
  end

  test "should destroy foo92" do
    assert_difference('Foo92.count', -1) do
      delete foo92_url(@foo92)
    end

    assert_redirected_to foo92s_url
  end
end
