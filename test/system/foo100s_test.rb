require "application_system_test_case"

class Foo100sTest < ApplicationSystemTestCase
  setup do
    @foo100 = foo100s(:one)
  end

  test "visiting the index" do
    visit foo100s_url
    assert_selector "h1", text: "Foo100s"
  end

  test "creating a Foo100" do
    visit foo100s_url
    click_on "New Foo100"

    fill_in "Foo1", with: @foo100.foo1
    fill_in "Foo2", with: @foo100.foo2
    fill_in "Foo3", with: @foo100.foo3
    check "Foo4" if @foo100.foo4
    fill_in "Foo5", with: @foo100.foo5
    click_on "Create Foo100"

    assert_text "Foo100 was successfully created"
    click_on "Back"
  end

  test "updating a Foo100" do
    visit foo100s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo100.foo1
    fill_in "Foo2", with: @foo100.foo2
    fill_in "Foo3", with: @foo100.foo3
    check "Foo4" if @foo100.foo4
    fill_in "Foo5", with: @foo100.foo5
    click_on "Update Foo100"

    assert_text "Foo100 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo100" do
    visit foo100s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo100 was successfully destroyed"
  end
end
