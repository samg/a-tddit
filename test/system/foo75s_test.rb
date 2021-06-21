require "application_system_test_case"

class Foo75sTest < ApplicationSystemTestCase
  setup do
    @foo75 = foo75s(:one)
  end

  test "visiting the index" do
    visit foo75s_url
    assert_selector "h1", text: "Foo75s"
  end

  test "creating a Foo75" do
    visit foo75s_url
    click_on "New Foo75"

    fill_in "Foo1", with: @foo75.foo1
    fill_in "Foo2", with: @foo75.foo2
    fill_in "Foo3", with: @foo75.foo3
    check "Foo4" if @foo75.foo4
    fill_in "Foo5", with: @foo75.foo5
    click_on "Create Foo75"

    assert_text "Foo75 was successfully created"
    click_on "Back"
  end

  test "updating a Foo75" do
    visit foo75s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo75.foo1
    fill_in "Foo2", with: @foo75.foo2
    fill_in "Foo3", with: @foo75.foo3
    check "Foo4" if @foo75.foo4
    fill_in "Foo5", with: @foo75.foo5
    click_on "Update Foo75"

    assert_text "Foo75 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo75" do
    visit foo75s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo75 was successfully destroyed"
  end
end
