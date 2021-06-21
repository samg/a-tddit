require "application_system_test_case"

class Foo9sTest < ApplicationSystemTestCase
  setup do
    @foo9 = foo9s(:one)
  end

  test "visiting the index" do
    visit foo9s_url
    assert_selector "h1", text: "Foo9s"
  end

  test "creating a Foo9" do
    visit foo9s_url
    click_on "New Foo9"

    fill_in "Foo1", with: @foo9.foo1
    fill_in "Foo2", with: @foo9.foo2
    fill_in "Foo3", with: @foo9.foo3
    check "Foo4" if @foo9.foo4
    fill_in "Foo5", with: @foo9.foo5
    click_on "Create Foo9"

    assert_text "Foo9 was successfully created"
    click_on "Back"
  end

  test "updating a Foo9" do
    visit foo9s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo9.foo1
    fill_in "Foo2", with: @foo9.foo2
    fill_in "Foo3", with: @foo9.foo3
    check "Foo4" if @foo9.foo4
    fill_in "Foo5", with: @foo9.foo5
    click_on "Update Foo9"

    assert_text "Foo9 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo9" do
    visit foo9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo9 was successfully destroyed"
  end
end
