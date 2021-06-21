require "application_system_test_case"

class Foo17sTest < ApplicationSystemTestCase
  setup do
    @foo17 = foo17s(:one)
  end

  test "visiting the index" do
    visit foo17s_url
    assert_selector "h1", text: "Foo17s"
  end

  test "creating a Foo17" do
    visit foo17s_url
    click_on "New Foo17"

    fill_in "Foo1", with: @foo17.foo1
    fill_in "Foo2", with: @foo17.foo2
    fill_in "Foo3", with: @foo17.foo3
    check "Foo4" if @foo17.foo4
    fill_in "Foo5", with: @foo17.foo5
    click_on "Create Foo17"

    assert_text "Foo17 was successfully created"
    click_on "Back"
  end

  test "updating a Foo17" do
    visit foo17s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo17.foo1
    fill_in "Foo2", with: @foo17.foo2
    fill_in "Foo3", with: @foo17.foo3
    check "Foo4" if @foo17.foo4
    fill_in "Foo5", with: @foo17.foo5
    click_on "Update Foo17"

    assert_text "Foo17 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo17" do
    visit foo17s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo17 was successfully destroyed"
  end
end
