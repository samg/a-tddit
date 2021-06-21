require "application_system_test_case"

class Foo88sTest < ApplicationSystemTestCase
  setup do
    @foo88 = foo88s(:one)
  end

  test "visiting the index" do
    visit foo88s_url
    assert_selector "h1", text: "Foo88s"
  end

  test "creating a Foo88" do
    visit foo88s_url
    click_on "New Foo88"

    fill_in "Foo1", with: @foo88.foo1
    fill_in "Foo2", with: @foo88.foo2
    fill_in "Foo3", with: @foo88.foo3
    check "Foo4" if @foo88.foo4
    fill_in "Foo5", with: @foo88.foo5
    click_on "Create Foo88"

    assert_text "Foo88 was successfully created"
    click_on "Back"
  end

  test "updating a Foo88" do
    visit foo88s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo88.foo1
    fill_in "Foo2", with: @foo88.foo2
    fill_in "Foo3", with: @foo88.foo3
    check "Foo4" if @foo88.foo4
    fill_in "Foo5", with: @foo88.foo5
    click_on "Update Foo88"

    assert_text "Foo88 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo88" do
    visit foo88s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo88 was successfully destroyed"
  end
end
