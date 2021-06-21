require "application_system_test_case"

class Foo67sTest < ApplicationSystemTestCase
  setup do
    @foo67 = foo67s(:one)
  end

  test "visiting the index" do
    visit foo67s_url
    assert_selector "h1", text: "Foo67s"
  end

  test "creating a Foo67" do
    visit foo67s_url
    click_on "New Foo67"

    fill_in "Foo1", with: @foo67.foo1
    fill_in "Foo2", with: @foo67.foo2
    fill_in "Foo3", with: @foo67.foo3
    check "Foo4" if @foo67.foo4
    fill_in "Foo5", with: @foo67.foo5
    click_on "Create Foo67"

    assert_text "Foo67 was successfully created"
    click_on "Back"
  end

  test "updating a Foo67" do
    visit foo67s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo67.foo1
    fill_in "Foo2", with: @foo67.foo2
    fill_in "Foo3", with: @foo67.foo3
    check "Foo4" if @foo67.foo4
    fill_in "Foo5", with: @foo67.foo5
    click_on "Update Foo67"

    assert_text "Foo67 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo67" do
    visit foo67s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo67 was successfully destroyed"
  end
end
