require "application_system_test_case"

class Foo15sTest < ApplicationSystemTestCase
  setup do
    @foo15 = foo15s(:one)
  end

  test "visiting the index" do
    visit foo15s_url
    assert_selector "h1", text: "Foo15s"
  end

  test "creating a Foo15" do
    visit foo15s_url
    click_on "New Foo15"

    fill_in "Foo1", with: @foo15.foo1
    fill_in "Foo2", with: @foo15.foo2
    fill_in "Foo3", with: @foo15.foo3
    check "Foo4" if @foo15.foo4
    fill_in "Foo5", with: @foo15.foo5
    click_on "Create Foo15"

    assert_text "Foo15 was successfully created"
    click_on "Back"
  end

  test "updating a Foo15" do
    visit foo15s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo15.foo1
    fill_in "Foo2", with: @foo15.foo2
    fill_in "Foo3", with: @foo15.foo3
    check "Foo4" if @foo15.foo4
    fill_in "Foo5", with: @foo15.foo5
    click_on "Update Foo15"

    assert_text "Foo15 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo15" do
    visit foo15s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo15 was successfully destroyed"
  end
end
