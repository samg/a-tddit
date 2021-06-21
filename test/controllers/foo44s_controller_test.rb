require "test_helper"

class Foo44sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo44 = foo44s(:one)
  end

  test "should get index" do
    get foo44s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo44_url
    assert_response :success
  end

  test "should create foo44" do
    assert_difference('Foo44.count') do
      post foo44s_url, params: { foo44: { foo1: @foo44.foo1, foo2: @foo44.foo2, foo3: @foo44.foo3, foo4: @foo44.foo4, foo5: @foo44.foo5 } }
    end

    assert_redirected_to foo44_url(Foo44.last)
  end

  test "should show foo44" do
    get foo44_url(@foo44)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo44_url(@foo44)
    assert_response :success
  end

  test "should update foo44" do
    patch foo44_url(@foo44), params: { foo44: { foo1: @foo44.foo1, foo2: @foo44.foo2, foo3: @foo44.foo3, foo4: @foo44.foo4, foo5: @foo44.foo5 } }
    assert_redirected_to foo44_url(@foo44)
  end

  test "should destroy foo44" do
    assert_difference('Foo44.count', -1) do
      delete foo44_url(@foo44)
    end

    assert_redirected_to foo44s_url
  end
end
