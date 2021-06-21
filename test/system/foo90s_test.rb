require "application_system_test_case"

class Foo90sTest < ApplicationSystemTestCase
  setup do
    @foo90 = foo90s(:one)
  end

  test "visiting the index" do
    visit foo90s_url
    assert_selector "h1", text: "Foo90s"
  end

  test "creating a Foo90" do
    visit foo90s_url
    click_on "New Foo90"

    fill_in "Foo1", with: @foo90.foo1
    fill_in "Foo2", with: @foo90.foo2
    fill_in "Foo3", with: @foo90.foo3
    check "Foo4" if @foo90.foo4
    fill_in "Foo5", with: @foo90.foo5
    click_on "Create Foo90"

    assert_text "Foo90 was successfully created"
    click_on "Back"
  end

  test "updating a Foo90" do
    visit foo90s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo90.foo1
    fill_in "Foo2", with: @foo90.foo2
    fill_in "Foo3", with: @foo90.foo3
    check "Foo4" if @foo90.foo4
    fill_in "Foo5", with: @foo90.foo5
    click_on "Update Foo90"

    assert_text "Foo90 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo90" do
    visit foo90s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo90 was successfully destroyed"
  end
end
