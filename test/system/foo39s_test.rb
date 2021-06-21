require "application_system_test_case"

class Foo39sTest < ApplicationSystemTestCase
  setup do
    @foo39 = foo39s(:one)
  end

  test "visiting the index" do
    visit foo39s_url
    assert_selector "h1", text: "Foo39s"
  end

  test "creating a Foo39" do
    visit foo39s_url
    click_on "New Foo39"

    fill_in "Foo1", with: @foo39.foo1
    fill_in "Foo2", with: @foo39.foo2
    fill_in "Foo3", with: @foo39.foo3
    check "Foo4" if @foo39.foo4
    fill_in "Foo5", with: @foo39.foo5
    click_on "Create Foo39"

    assert_text "Foo39 was successfully created"
    click_on "Back"
  end

  test "updating a Foo39" do
    visit foo39s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo39.foo1
    fill_in "Foo2", with: @foo39.foo2
    fill_in "Foo3", with: @foo39.foo3
    check "Foo4" if @foo39.foo4
    fill_in "Foo5", with: @foo39.foo5
    click_on "Update Foo39"

    assert_text "Foo39 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo39" do
    visit foo39s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo39 was successfully destroyed"
  end
end
