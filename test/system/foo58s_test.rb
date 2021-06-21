require "application_system_test_case"

class Foo58sTest < ApplicationSystemTestCase
  setup do
    @foo58 = foo58s(:one)
  end

  test "visiting the index" do
    visit foo58s_url
    assert_selector "h1", text: "Foo58s"
  end

  test "creating a Foo58" do
    visit foo58s_url
    click_on "New Foo58"

    fill_in "Foo1", with: @foo58.foo1
    fill_in "Foo2", with: @foo58.foo2
    fill_in "Foo3", with: @foo58.foo3
    check "Foo4" if @foo58.foo4
    fill_in "Foo5", with: @foo58.foo5
    click_on "Create Foo58"

    assert_text "Foo58 was successfully created"
    click_on "Back"
  end

  test "updating a Foo58" do
    visit foo58s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo58.foo1
    fill_in "Foo2", with: @foo58.foo2
    fill_in "Foo3", with: @foo58.foo3
    check "Foo4" if @foo58.foo4
    fill_in "Foo5", with: @foo58.foo5
    click_on "Update Foo58"

    assert_text "Foo58 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo58" do
    visit foo58s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo58 was successfully destroyed"
  end
end
