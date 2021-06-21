require "application_system_test_case"

class Foo71sTest < ApplicationSystemTestCase
  setup do
    @foo71 = foo71s(:one)
  end

  test "visiting the index" do
    visit foo71s_url
    assert_selector "h1", text: "Foo71s"
  end

  test "creating a Foo71" do
    visit foo71s_url
    click_on "New Foo71"

    fill_in "Foo1", with: @foo71.foo1
    fill_in "Foo2", with: @foo71.foo2
    fill_in "Foo3", with: @foo71.foo3
    check "Foo4" if @foo71.foo4
    fill_in "Foo5", with: @foo71.foo5
    click_on "Create Foo71"

    assert_text "Foo71 was successfully created"
    click_on "Back"
  end

  test "updating a Foo71" do
    visit foo71s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo71.foo1
    fill_in "Foo2", with: @foo71.foo2
    fill_in "Foo3", with: @foo71.foo3
    check "Foo4" if @foo71.foo4
    fill_in "Foo5", with: @foo71.foo5
    click_on "Update Foo71"

    assert_text "Foo71 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo71" do
    visit foo71s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo71 was successfully destroyed"
  end
end
