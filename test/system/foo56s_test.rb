require "application_system_test_case"

class Foo56sTest < ApplicationSystemTestCase
  setup do
    @foo56 = foo56s(:one)
  end

  test "visiting the index" do
    visit foo56s_url
    assert_selector "h1", text: "Foo56s"
  end

  test "creating a Foo56" do
    visit foo56s_url
    click_on "New Foo56"

    fill_in "Foo1", with: @foo56.foo1
    fill_in "Foo2", with: @foo56.foo2
    fill_in "Foo3", with: @foo56.foo3
    check "Foo4" if @foo56.foo4
    fill_in "Foo5", with: @foo56.foo5
    click_on "Create Foo56"

    assert_text "Foo56 was successfully created"
    click_on "Back"
  end

  test "updating a Foo56" do
    visit foo56s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo56.foo1
    fill_in "Foo2", with: @foo56.foo2
    fill_in "Foo3", with: @foo56.foo3
    check "Foo4" if @foo56.foo4
    fill_in "Foo5", with: @foo56.foo5
    click_on "Update Foo56"

    assert_text "Foo56 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo56" do
    visit foo56s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo56 was successfully destroyed"
  end
end
