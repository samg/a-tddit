require "test_helper"

class Foo22sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo22 = foo22s(:one)
  end

  test "should get index" do
    get foo22s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo22_url
    assert_response :success
  end

  test "should create foo22" do
    assert_difference('Foo22.count') do
      post foo22s_url, params: { foo22: { foo1: @foo22.foo1, foo2: @foo22.foo2, foo3: @foo22.foo3, foo4: @foo22.foo4, foo5: @foo22.foo5 } }
    end

    assert_redirected_to foo22_url(Foo22.last)
  end

  test "should show foo22" do
    get foo22_url(@foo22)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo22_url(@foo22)
    assert_response :success
  end

  test "should update foo22" do
    patch foo22_url(@foo22), params: { foo22: { foo1: @foo22.foo1, foo2: @foo22.foo2, foo3: @foo22.foo3, foo4: @foo22.foo4, foo5: @foo22.foo5 } }
    assert_redirected_to foo22_url(@foo22)
  end

  test "should destroy foo22" do
    assert_difference('Foo22.count', -1) do
      delete foo22_url(@foo22)
    end

    assert_redirected_to foo22s_url
  end
end
