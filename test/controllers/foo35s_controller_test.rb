require "test_helper"

class Foo35sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo35 = foo35s(:one)
  end

  test "should get index" do
    get foo35s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo35_url
    assert_response :success
  end

  test "should create foo35" do
    assert_difference('Foo35.count') do
      post foo35s_url, params: { foo35: { foo1: @foo35.foo1, foo2: @foo35.foo2, foo3: @foo35.foo3, foo4: @foo35.foo4, foo5: @foo35.foo5 } }
    end

    assert_redirected_to foo35_url(Foo35.last)
  end

  test "should show foo35" do
    get foo35_url(@foo35)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo35_url(@foo35)
    assert_response :success
  end

  test "should update foo35" do
    patch foo35_url(@foo35), params: { foo35: { foo1: @foo35.foo1, foo2: @foo35.foo2, foo3: @foo35.foo3, foo4: @foo35.foo4, foo5: @foo35.foo5 } }
    assert_redirected_to foo35_url(@foo35)
  end

  test "should destroy foo35" do
    assert_difference('Foo35.count', -1) do
      delete foo35_url(@foo35)
    end

    assert_redirected_to foo35s_url
  end
end
