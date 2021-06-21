require "application_system_test_case"

class Foo16sTest < ApplicationSystemTestCase
  setup do
    @foo16 = foo16s(:one)
  end

  test "visiting the index" do
    visit foo16s_url
    assert_selector "h1", text: "Foo16s"
  end

  test "creating a Foo16" do
    visit foo16s_url
    click_on "New Foo16"

    fill_in "Foo1", with: @foo16.foo1
    fill_in "Foo2", with: @foo16.foo2
    fill_in "Foo3", with: @foo16.foo3
    check "Foo4" if @foo16.foo4
    fill_in "Foo5", with: @foo16.foo5
    click_on "Create Foo16"

    assert_text "Foo16 was successfully created"
    click_on "Back"
  end

  test "updating a Foo16" do
    visit foo16s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo16.foo1
    fill_in "Foo2", with: @foo16.foo2
    fill_in "Foo3", with: @foo16.foo3
    check "Foo4" if @foo16.foo4
    fill_in "Foo5", with: @foo16.foo5
    click_on "Update Foo16"

    assert_text "Foo16 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo16" do
    visit foo16s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo16 was successfully destroyed"
  end
end
