require "application_system_test_case"

class Foo48sTest < ApplicationSystemTestCase
  setup do
    @foo48 = foo48s(:one)
  end

  test "visiting the index" do
    visit foo48s_url
    assert_selector "h1", text: "Foo48s"
  end

  test "creating a Foo48" do
    visit foo48s_url
    click_on "New Foo48"

    fill_in "Foo1", with: @foo48.foo1
    fill_in "Foo2", with: @foo48.foo2
    fill_in "Foo3", with: @foo48.foo3
    check "Foo4" if @foo48.foo4
    fill_in "Foo5", with: @foo48.foo5
    click_on "Create Foo48"

    assert_text "Foo48 was successfully created"
    click_on "Back"
  end

  test "updating a Foo48" do
    visit foo48s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo48.foo1
    fill_in "Foo2", with: @foo48.foo2
    fill_in "Foo3", with: @foo48.foo3
    check "Foo4" if @foo48.foo4
    fill_in "Foo5", with: @foo48.foo5
    click_on "Update Foo48"

    assert_text "Foo48 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo48" do
    visit foo48s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo48 was successfully destroyed"
  end
end
