require "application_system_test_case"

class Foo89sTest < ApplicationSystemTestCase
  setup do
    @foo89 = foo89s(:one)
  end

  test "visiting the index" do
    visit foo89s_url
    assert_selector "h1", text: "Foo89s"
  end

  test "creating a Foo89" do
    visit foo89s_url
    click_on "New Foo89"

    fill_in "Foo1", with: @foo89.foo1
    fill_in "Foo2", with: @foo89.foo2
    fill_in "Foo3", with: @foo89.foo3
    check "Foo4" if @foo89.foo4
    fill_in "Foo5", with: @foo89.foo5
    click_on "Create Foo89"

    assert_text "Foo89 was successfully created"
    click_on "Back"
  end

  test "updating a Foo89" do
    visit foo89s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo89.foo1
    fill_in "Foo2", with: @foo89.foo2
    fill_in "Foo3", with: @foo89.foo3
    check "Foo4" if @foo89.foo4
    fill_in "Foo5", with: @foo89.foo5
    click_on "Update Foo89"

    assert_text "Foo89 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo89" do
    visit foo89s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo89 was successfully destroyed"
  end
end
