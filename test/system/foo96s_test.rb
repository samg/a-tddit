require "application_system_test_case"

class Foo96sTest < ApplicationSystemTestCase
  setup do
    @foo96 = foo96s(:one)
  end

  test "visiting the index" do
    visit foo96s_url
    assert_selector "h1", text: "Foo96s"
  end

  test "creating a Foo96" do
    visit foo96s_url
    click_on "New Foo96"

    fill_in "Foo1", with: @foo96.foo1
    fill_in "Foo2", with: @foo96.foo2
    fill_in "Foo3", with: @foo96.foo3
    check "Foo4" if @foo96.foo4
    fill_in "Foo5", with: @foo96.foo5
    click_on "Create Foo96"

    assert_text "Foo96 was successfully created"
    click_on "Back"
  end

  test "updating a Foo96" do
    visit foo96s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo96.foo1
    fill_in "Foo2", with: @foo96.foo2
    fill_in "Foo3", with: @foo96.foo3
    check "Foo4" if @foo96.foo4
    fill_in "Foo5", with: @foo96.foo5
    click_on "Update Foo96"

    assert_text "Foo96 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo96" do
    visit foo96s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo96 was successfully destroyed"
  end
end
