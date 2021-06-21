require "application_system_test_case"

class Foo60sTest < ApplicationSystemTestCase
  setup do
    @foo60 = foo60s(:one)
  end

  test "visiting the index" do
    visit foo60s_url
    assert_selector "h1", text: "Foo60s"
  end

  test "creating a Foo60" do
    visit foo60s_url
    click_on "New Foo60"

    fill_in "Foo1", with: @foo60.foo1
    fill_in "Foo2", with: @foo60.foo2
    fill_in "Foo3", with: @foo60.foo3
    check "Foo4" if @foo60.foo4
    fill_in "Foo5", with: @foo60.foo5
    click_on "Create Foo60"

    assert_text "Foo60 was successfully created"
    click_on "Back"
  end

  test "updating a Foo60" do
    visit foo60s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo60.foo1
    fill_in "Foo2", with: @foo60.foo2
    fill_in "Foo3", with: @foo60.foo3
    check "Foo4" if @foo60.foo4
    fill_in "Foo5", with: @foo60.foo5
    click_on "Update Foo60"

    assert_text "Foo60 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo60" do
    visit foo60s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo60 was successfully destroyed"
  end
end
