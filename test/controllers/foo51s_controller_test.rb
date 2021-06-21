require "test_helper"

class Foo51sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo51 = foo51s(:one)
  end

  test "should get index" do
    get foo51s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo51_url
    assert_response :success
  end

  test "should create foo51" do
    assert_difference('Foo51.count') do
      post foo51s_url, params: { foo51: { foo1: @foo51.foo1, foo2: @foo51.foo2, foo3: @foo51.foo3, foo4: @foo51.foo4, foo5: @foo51.foo5 } }
    end

    assert_redirected_to foo51_url(Foo51.last)
  end

  test "should show foo51" do
    get foo51_url(@foo51)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo51_url(@foo51)
    assert_response :success
  end

  test "should update foo51" do
    patch foo51_url(@foo51), params: { foo51: { foo1: @foo51.foo1, foo2: @foo51.foo2, foo3: @foo51.foo3, foo4: @foo51.foo4, foo5: @foo51.foo5 } }
    assert_redirected_to foo51_url(@foo51)
  end

  test "should destroy foo51" do
    assert_difference('Foo51.count', -1) do
      delete foo51_url(@foo51)
    end

    assert_redirected_to foo51s_url
  end
end
