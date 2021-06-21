require "test_helper"

class Foo79sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo79 = foo79s(:one)
  end

  test "should get index" do
    get foo79s_url
    assert_response :success
  end

  test "should get new" do
    get new_foo79_url
    assert_response :success
  end

  test "should create foo79" do
    assert_difference('Foo79.count') do
      post foo79s_url, params: { foo79: { foo1: @foo79.foo1, foo2: @foo79.foo2, foo3: @foo79.foo3, foo4: @foo79.foo4, foo5: @foo79.foo5 } }
    end

    assert_redirected_to foo79_url(Foo79.last)
  end

  test "should show foo79" do
    get foo79_url(@foo79)
    assert_response :success
  end

  test "should get edit" do
    get edit_foo79_url(@foo79)
    assert_response :success
  end

  test "should update foo79" do
    patch foo79_url(@foo79), params: { foo79: { foo1: @foo79.foo1, foo2: @foo79.foo2, foo3: @foo79.foo3, foo4: @foo79.foo4, foo5: @foo79.foo5 } }
    assert_redirected_to foo79_url(@foo79)
  end

  test "should destroy foo79" do
    assert_difference('Foo79.count', -1) do
      delete foo79_url(@foo79)
    end

    assert_redirected_to foo79s_url
  end
end
