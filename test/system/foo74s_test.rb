require "application_system_test_case"

class Foo74sTest < ApplicationSystemTestCase
  setup do
    @foo74 = foo74s(:one)
  end

  test "visiting the index" do
    visit foo74s_url
    assert_selector "h1", text: "Foo74s"
  end

  test "creating a Foo74" do
    visit foo74s_url
    click_on "New Foo74"

    fill_in "Foo1", with: @foo74.foo1
    fill_in "Foo2", with: @foo74.foo2
    fill_in "Foo3", with: @foo74.foo3
    check "Foo4" if @foo74.foo4
    fill_in "Foo5", with: @foo74.foo5
    click_on "Create Foo74"

    assert_text "Foo74 was successfully created"
    click_on "Back"
  end

  test "updating a Foo74" do
    visit foo74s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo74.foo1
    fill_in "Foo2", with: @foo74.foo2
    fill_in "Foo3", with: @foo74.foo3
    check "Foo4" if @foo74.foo4
    fill_in "Foo5", with: @foo74.foo5
    click_on "Update Foo74"

    assert_text "Foo74 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo74" do
    visit foo74s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo74 was successfully destroyed"
  end
end
