require "application_system_test_case"

class Foo84sTest < ApplicationSystemTestCase
  setup do
    @foo84 = foo84s(:one)
  end

  test "visiting the index" do
    visit foo84s_url
    assert_selector "h1", text: "Foo84s"
  end

  test "creating a Foo84" do
    visit foo84s_url
    click_on "New Foo84"

    fill_in "Foo1", with: @foo84.foo1
    fill_in "Foo2", with: @foo84.foo2
    fill_in "Foo3", with: @foo84.foo3
    check "Foo4" if @foo84.foo4
    fill_in "Foo5", with: @foo84.foo5
    click_on "Create Foo84"

    assert_text "Foo84 was successfully created"
    click_on "Back"
  end

  test "updating a Foo84" do
    visit foo84s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo84.foo1
    fill_in "Foo2", with: @foo84.foo2
    fill_in "Foo3", with: @foo84.foo3
    check "Foo4" if @foo84.foo4
    fill_in "Foo5", with: @foo84.foo5
    click_on "Update Foo84"

    assert_text "Foo84 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo84" do
    visit foo84s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo84 was successfully destroyed"
  end
end
