require "test_helper"

class Foo97sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo97 = foo97s(:one)
  end

  test "should get index" do
    get foo97s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo97_url
    assert_response :success
  end

  test "should create foo97" do
    assert_difference('Foo97.count') do
      post foo97s_url, params: { foo97: { foo1: @foo97.foo1, foo2: @foo97.foo2, foo3: @foo97.foo3, foo4: @foo97.foo4, foo5: @foo97.foo5 } }
    end

    assert_redirected_to foo97_url(Foo97.last)
  end

  test "should show foo97" do
    get foo97_url(@foo97)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo97_url(@foo97)
    assert_response :success
  end

  test "should update foo97" do
    patch foo97_url(@foo97), params: { foo97: { foo1: @foo97.foo1, foo2: @foo97.foo2, foo3: @foo97.foo3, foo4: @foo97.foo4, foo5: @foo97.foo5 } }
    assert_redirected_to foo97_url(@foo97)
  end

  test "should destroy foo97" do
    assert_difference('Foo97.count', -1) do
      delete foo97_url(@foo97)
    end

    assert_redirected_to foo97s_url
  end
end
