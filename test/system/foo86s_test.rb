require "application_system_test_case"

class Foo86sTest < ApplicationSystemTestCase
  setup do
    @foo86 = foo86s(:one)
  end

  test "visiting the index" do
    visit foo86s_url
    assert_selector "h1", text: "Foo86s"
  end

  test "creating a Foo86" do
    visit foo86s_url
    click_on "New Foo86"

    fill_in "Foo1", with: @foo86.foo1
    fill_in "Foo2", with: @foo86.foo2
    fill_in "Foo3", with: @foo86.foo3
    check "Foo4" if @foo86.foo4
    fill_in "Foo5", with: @foo86.foo5
    click_on "Create Foo86"

    assert_text "Foo86 was successfully created"
    click_on "Back"
  end

  test "updating a Foo86" do
    visit foo86s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo86.foo1
    fill_in "Foo2", with: @foo86.foo2
    fill_in "Foo3", with: @foo86.foo3
    check "Foo4" if @foo86.foo4
    fill_in "Foo5", with: @foo86.foo5
    click_on "Update Foo86"

    assert_text "Foo86 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo86" do
    visit foo86s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo86 was successfully destroyed"
  end
end
