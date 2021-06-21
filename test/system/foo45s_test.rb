require "application_system_test_case"

class Foo45sTest < ApplicationSystemTestCase
  setup do
    @foo45 = foo45s(:one)
  end

  test "visiting the index" do
    visit foo45s_url
    assert_selector "h1", text: "Foo45s"
  end

  test "creating a Foo45" do
    visit foo45s_url
    click_on "New Foo45"

    fill_in "Foo1", with: @foo45.foo1
    fill_in "Foo2", with: @foo45.foo2
    fill_in "Foo3", with: @foo45.foo3
    check "Foo4" if @foo45.foo4
    fill_in "Foo5", with: @foo45.foo5
    click_on "Create Foo45"

    assert_text "Foo45 was successfully created"
    click_on "Back"
  end

  test "updating a Foo45" do
    visit foo45s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo45.foo1
    fill_in "Foo2", with: @foo45.foo2
    fill_in "Foo3", with: @foo45.foo3
    check "Foo4" if @foo45.foo4
    fill_in "Foo5", with: @foo45.foo5
    click_on "Update Foo45"

    assert_text "Foo45 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo45" do
    visit foo45s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo45 was successfully destroyed"
  end
end
