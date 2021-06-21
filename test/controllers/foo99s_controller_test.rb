require "test_helper"

class Foo99sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo99 = foo99s(:one)
  end

  test "should get index" do
    get foo99s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo99_url
    assert_response :success
  end

  test "should create foo99" do
    assert_difference('Foo99.count') do
      post foo99s_url, params: { foo99: { foo1: @foo99.foo1, foo2: @foo99.foo2, foo3: @foo99.foo3, foo4: @foo99.foo4, foo5: @foo99.foo5 } }
    end

    assert_redirected_to foo99_url(Foo99.last)
  end

  test "should show foo99" do
    get foo99_url(@foo99)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo99_url(@foo99)
    assert_response :success
  end

  test "should update foo99" do
    patch foo99_url(@foo99), params: { foo99: { foo1: @foo99.foo1, foo2: @foo99.foo2, foo3: @foo99.foo3, foo4: @foo99.foo4, foo5: @foo99.foo5 } }
    assert_redirected_to foo99_url(@foo99)
  end

  test "should destroy foo99" do
    assert_difference('Foo99.count', -1) do
      delete foo99_url(@foo99)
    end

    assert_redirected_to foo99s_url
  end
end
