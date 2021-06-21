require "application_system_test_case"

class FoosTest < ApplicationSystemTestCase
  setup do
    @foo = foos(:one)
  end

  test "visiting the index" do
    visit foos_url
    assert_selector "h1", text: "Foos"
  end

  test "creating a Foo" do
    visit foos_url
    click_on "New Foo"

    fill_in "Foo1", with: @foo.foo1
    fill_in "Foo2", with: @foo.foo2
    fill_in "Foo3", with: @foo.foo3
    check "Foo4" if @foo.foo4
    fill_in "Foo5", with: @foo.foo5
    click_on "Create Foo"

    assert_text "Foo was successfully created"
    click_on "Back"
  end

  test "updating a Foo" do
    visit foos_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo.foo1
    fill_in "Foo2", with: @foo.foo2
    fill_in "Foo3", with: @foo.foo3
    check "Foo4" if @foo.foo4
    fill_in "Foo5", with: @foo.foo5
    click_on "Update Foo"

    assert_text "Foo was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo" do
    visit foos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo was successfully destroyed"
  end
end
