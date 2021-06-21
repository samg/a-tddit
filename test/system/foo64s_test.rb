require "application_system_test_case"

class Foo64sTest < ApplicationSystemTestCase
  setup do
    @foo64 = foo64s(:one)
  end

  test "visiting the index" do
    visit foo64s_url
    assert_selector "h1", text: "Foo64s"
  end

  test "creating a Foo64" do
    visit foo64s_url
    click_on "New Foo64"

    fill_in "Foo1", with: @foo64.foo1
    fill_in "Foo2", with: @foo64.foo2
    fill_in "Foo3", with: @foo64.foo3
    check "Foo4" if @foo64.foo4
    fill_in "Foo5", with: @foo64.foo5
    click_on "Create Foo64"

    assert_text "Foo64 was successfully created"
    click_on "Back"
  end

  test "updating a Foo64" do
    visit foo64s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo64.foo1
    fill_in "Foo2", with: @foo64.foo2
    fill_in "Foo3", with: @foo64.foo3
    check "Foo4" if @foo64.foo4
    fill_in "Foo5", with: @foo64.foo5
    click_on "Update Foo64"

    assert_text "Foo64 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo64" do
    visit foo64s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo64 was successfully destroyed"
  end
end
