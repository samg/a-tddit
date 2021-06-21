require "application_system_test_case"

class Foo14sTest < ApplicationSystemTestCase
  setup do
    @foo14 = foo14s(:one)
  end

  test "visiting the index" do
    visit foo14s_url
    assert_selector "h1", text: "Foo14s"
  end

  test "creating a Foo14" do
    visit foo14s_url
    click_on "New Foo14"

    fill_in "Foo1", with: @foo14.foo1
    fill_in "Foo2", with: @foo14.foo2
    fill_in "Foo3", with: @foo14.foo3
    check "Foo4" if @foo14.foo4
    fill_in "Foo5", with: @foo14.foo5
    click_on "Create Foo14"

    assert_text "Foo14 was successfully created"
    click_on "Back"
  end

  test "updating a Foo14" do
    visit foo14s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo14.foo1
    fill_in "Foo2", with: @foo14.foo2
    fill_in "Foo3", with: @foo14.foo3
    check "Foo4" if @foo14.foo4
    fill_in "Foo5", with: @foo14.foo5
    click_on "Update Foo14"

    assert_text "Foo14 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo14" do
    visit foo14s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo14 was successfully destroyed"
  end
end
