require "application_system_test_case"

class Foo85sTest < ApplicationSystemTestCase
  setup do
    @foo85 = foo85s(:one)
  end

  test "visiting the index" do
    visit foo85s_url
    assert_selector "h1", text: "Foo85s"
  end

  test "creating a Foo85" do
    visit foo85s_url
    click_on "New Foo85"

    fill_in "Foo1", with: @foo85.foo1
    fill_in "Foo2", with: @foo85.foo2
    fill_in "Foo3", with: @foo85.foo3
    check "Foo4" if @foo85.foo4
    fill_in "Foo5", with: @foo85.foo5
    click_on "Create Foo85"

    assert_text "Foo85 was successfully created"
    click_on "Back"
  end

  test "updating a Foo85" do
    visit foo85s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo85.foo1
    fill_in "Foo2", with: @foo85.foo2
    fill_in "Foo3", with: @foo85.foo3
    check "Foo4" if @foo85.foo4
    fill_in "Foo5", with: @foo85.foo5
    click_on "Update Foo85"

    assert_text "Foo85 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo85" do
    visit foo85s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo85 was successfully destroyed"
  end
end
