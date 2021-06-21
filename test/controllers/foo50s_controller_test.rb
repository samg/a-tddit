require "test_helper"

class Foo50sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo50 = foo50s(:one)
  end

  test "should get index" do
    get foo50s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo50_url
    assert_response :success
  end

  test "should create foo50" do
    assert_difference('Foo50.count') do
      post foo50s_url, params: { foo50: { foo1: @foo50.foo1, foo2: @foo50.foo2, foo3: @foo50.foo3, foo4: @foo50.foo4, foo5: @foo50.foo5 } }
    end

    assert_redirected_to foo50_url(Foo50.last)
  end

  test "should show foo50" do
    get foo50_url(@foo50)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo50_url(@foo50)
    assert_response :success
  end

  test "should update foo50" do
    patch foo50_url(@foo50), params: { foo50: { foo1: @foo50.foo1, foo2: @foo50.foo2, foo3: @foo50.foo3, foo4: @foo50.foo4, foo5: @foo50.foo5 } }
    assert_redirected_to foo50_url(@foo50)
  end

  test "should destroy foo50" do
    assert_difference('Foo50.count', -1) do
      delete foo50_url(@foo50)
    end

    assert_redirected_to foo50s_url
  end
end
