require "application_system_test_case"

class Foo51sTest < ApplicationSystemTestCase
  setup do
    @foo51 = foo51s(:one)
  end

  test "visiting the index" do
    visit foo51s_url
    assert_selector "h1", text: "Foo51s"
  end

  test "creating a Foo51" do
    visit foo51s_url
    click_on "New Foo51"

    fill_in "Foo1", with: @foo51.foo1
    fill_in "Foo2", with: @foo51.foo2
    fill_in "Foo3", with: @foo51.foo3
    check "Foo4" if @foo51.foo4
    fill_in "Foo5", with: @foo51.foo5
    click_on "Create Foo51"

    assert_text "Foo51 was successfully created"
    click_on "Back"
  end

  test "updating a Foo51" do
    visit foo51s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo51.foo1
    fill_in "Foo2", with: @foo51.foo2
    fill_in "Foo3", with: @foo51.foo3
    check "Foo4" if @foo51.foo4
    fill_in "Foo5", with: @foo51.foo5
    click_on "Update Foo51"

    assert_text "Foo51 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo51" do
    visit foo51s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo51 was successfully destroyed"
  end
end
