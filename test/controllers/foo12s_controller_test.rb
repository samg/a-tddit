require "test_helper"

class Foo12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo12 = foo12s(:one)
  end

  test "should get index" do
    get foo12s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo12_url
    assert_response :success
  end

  test "should create foo12" do
    assert_difference('Foo12.count') do
      post foo12s_url, params: { foo12: { foo1: @foo12.foo1, foo2: @foo12.foo2, foo3: @foo12.foo3, foo4: @foo12.foo4, foo5: @foo12.foo5 } }
    end

    assert_redirected_to foo12_url(Foo12.last)
  end

  test "should show foo12" do
    get foo12_url(@foo12)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo12_url(@foo12)
    assert_response :success
  end

  test "should update foo12" do
    patch foo12_url(@foo12), params: { foo12: { foo1: @foo12.foo1, foo2: @foo12.foo2, foo3: @foo12.foo3, foo4: @foo12.foo4, foo5: @foo12.foo5 } }
    assert_redirected_to foo12_url(@foo12)
  end

  test "should destroy foo12" do
    assert_difference('Foo12.count', -1) do
      delete foo12_url(@foo12)
    end

    assert_redirected_to foo12s_url
  end
end
