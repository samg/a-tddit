require "application_system_test_case"

class Foo47sTest < ApplicationSystemTestCase
  setup do
    @foo47 = foo47s(:one)
  end

  test "visiting the index" do
    visit foo47s_url
    assert_selector "h1", text: "Foo47s"
  end

  test "creating a Foo47" do
    visit foo47s_url
    click_on "New Foo47"

    fill_in "Foo1", with: @foo47.foo1
    fill_in "Foo2", with: @foo47.foo2
    fill_in "Foo3", with: @foo47.foo3
    check "Foo4" if @foo47.foo4
    fill_in "Foo5", with: @foo47.foo5
    click_on "Create Foo47"

    assert_text "Foo47 was successfully created"
    click_on "Back"
  end

  test "updating a Foo47" do
    visit foo47s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo47.foo1
    fill_in "Foo2", with: @foo47.foo2
    fill_in "Foo3", with: @foo47.foo3
    check "Foo4" if @foo47.foo4
    fill_in "Foo5", with: @foo47.foo5
    click_on "Update Foo47"

    assert_text "Foo47 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo47" do
    visit foo47s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo47 was successfully destroyed"
  end
end
