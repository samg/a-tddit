require "application_system_test_case"

class Foo83sTest < ApplicationSystemTestCase
  setup do
    @foo83 = foo83s(:one)
  end

  test "visiting the index" do
    visit foo83s_url
    assert_selector "h1", text: "Foo83s"
  end

  test "creating a Foo83" do
    visit foo83s_url
    click_on "New Foo83"

    fill_in "Foo1", with: @foo83.foo1
    fill_in "Foo2", with: @foo83.foo2
    fill_in "Foo3", with: @foo83.foo3
    check "Foo4" if @foo83.foo4
    fill_in "Foo5", with: @foo83.foo5
    click_on "Create Foo83"

    assert_text "Foo83 was successfully created"
    click_on "Back"
  end

  test "updating a Foo83" do
    visit foo83s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo83.foo1
    fill_in "Foo2", with: @foo83.foo2
    fill_in "Foo3", with: @foo83.foo3
    check "Foo4" if @foo83.foo4
    fill_in "Foo5", with: @foo83.foo5
    click_on "Update Foo83"

    assert_text "Foo83 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo83" do
    visit foo83s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo83 was successfully destroyed"
  end
end
