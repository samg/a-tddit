require "application_system_test_case"

class Foo13sTest < ApplicationSystemTestCase
  setup do
    @foo13 = foo13s(:one)
  end

  test "visiting the index" do
    visit foo13s_url
    assert_selector "h1", text: "Foo13s"
  end

  test "creating a Foo13" do
    visit foo13s_url
    click_on "New Foo13"

    fill_in "Foo1", with: @foo13.foo1
    fill_in "Foo2", with: @foo13.foo2
    fill_in "Foo3", with: @foo13.foo3
    check "Foo4" if @foo13.foo4
    fill_in "Foo5", with: @foo13.foo5
    click_on "Create Foo13"

    assert_text "Foo13 was successfully created"
    click_on "Back"
  end

  test "updating a Foo13" do
    visit foo13s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo13.foo1
    fill_in "Foo2", with: @foo13.foo2
    fill_in "Foo3", with: @foo13.foo3
    check "Foo4" if @foo13.foo4
    fill_in "Foo5", with: @foo13.foo5
    click_on "Update Foo13"

    assert_text "Foo13 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo13" do
    visit foo13s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo13 was successfully destroyed"
  end
end
