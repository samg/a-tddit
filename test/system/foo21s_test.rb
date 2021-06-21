require "application_system_test_case"

class Foo21sTest < ApplicationSystemTestCase
  setup do
    @foo21 = foo21s(:one)
  end

  test "visiting the index" do
    visit foo21s_url
    assert_selector "h1", text: "Foo21s"
  end

  test "creating a Foo21" do
    visit foo21s_url
    click_on "New Foo21"

    fill_in "Foo1", with: @foo21.foo1
    fill_in "Foo2", with: @foo21.foo2
    fill_in "Foo3", with: @foo21.foo3
    check "Foo4" if @foo21.foo4
    fill_in "Foo5", with: @foo21.foo5
    click_on "Create Foo21"

    assert_text "Foo21 was successfully created"
    click_on "Back"
  end

  test "updating a Foo21" do
    visit foo21s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo21.foo1
    fill_in "Foo2", with: @foo21.foo2
    fill_in "Foo3", with: @foo21.foo3
    check "Foo4" if @foo21.foo4
    fill_in "Foo5", with: @foo21.foo5
    click_on "Update Foo21"

    assert_text "Foo21 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo21" do
    visit foo21s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo21 was successfully destroyed"
  end
end
