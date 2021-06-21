require "application_system_test_case"

class Foo20sTest < ApplicationSystemTestCase
  setup do
    @foo20 = foo20s(:one)
  end

  test "visiting the index" do
    visit foo20s_url
    assert_selector "h1", text: "Foo20s"
  end

  test "creating a Foo20" do
    visit foo20s_url
    click_on "New Foo20"

    fill_in "Foo1", with: @foo20.foo1
    fill_in "Foo2", with: @foo20.foo2
    fill_in "Foo3", with: @foo20.foo3
    check "Foo4" if @foo20.foo4
    fill_in "Foo5", with: @foo20.foo5
    click_on "Create Foo20"

    assert_text "Foo20 was successfully created"
    click_on "Back"
  end

  test "updating a Foo20" do
    visit foo20s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo20.foo1
    fill_in "Foo2", with: @foo20.foo2
    fill_in "Foo3", with: @foo20.foo3
    check "Foo4" if @foo20.foo4
    fill_in "Foo5", with: @foo20.foo5
    click_on "Update Foo20"

    assert_text "Foo20 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo20" do
    visit foo20s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo20 was successfully destroyed"
  end
end
