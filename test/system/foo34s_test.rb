require "application_system_test_case"

class Foo34sTest < ApplicationSystemTestCase
  setup do
    @foo34 = foo34s(:one)
  end

  test "visiting the index" do
    visit foo34s_url
    assert_selector "h1", text: "Foo34s"
  end

  test "creating a Foo34" do
    visit foo34s_url
    click_on "New Foo34"

    fill_in "Foo1", with: @foo34.foo1
    fill_in "Foo2", with: @foo34.foo2
    fill_in "Foo3", with: @foo34.foo3
    check "Foo4" if @foo34.foo4
    fill_in "Foo5", with: @foo34.foo5
    click_on "Create Foo34"

    assert_text "Foo34 was successfully created"
    click_on "Back"
  end

  test "updating a Foo34" do
    visit foo34s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo34.foo1
    fill_in "Foo2", with: @foo34.foo2
    fill_in "Foo3", with: @foo34.foo3
    check "Foo4" if @foo34.foo4
    fill_in "Foo5", with: @foo34.foo5
    click_on "Update Foo34"

    assert_text "Foo34 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo34" do
    visit foo34s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo34 was successfully destroyed"
  end
end
