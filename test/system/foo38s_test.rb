require "application_system_test_case"

class Foo38sTest < ApplicationSystemTestCase
  setup do
    @foo38 = foo38s(:one)
  end

  test "visiting the index" do
    visit foo38s_url
    assert_selector "h1", text: "Foo38s"
  end

  test "creating a Foo38" do
    visit foo38s_url
    click_on "New Foo38"

    fill_in "Foo1", with: @foo38.foo1
    fill_in "Foo2", with: @foo38.foo2
    fill_in "Foo3", with: @foo38.foo3
    check "Foo4" if @foo38.foo4
    fill_in "Foo5", with: @foo38.foo5
    click_on "Create Foo38"

    assert_text "Foo38 was successfully created"
    click_on "Back"
  end

  test "updating a Foo38" do
    visit foo38s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo38.foo1
    fill_in "Foo2", with: @foo38.foo2
    fill_in "Foo3", with: @foo38.foo3
    check "Foo4" if @foo38.foo4
    fill_in "Foo5", with: @foo38.foo5
    click_on "Update Foo38"

    assert_text "Foo38 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo38" do
    visit foo38s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo38 was successfully destroyed"
  end
end
