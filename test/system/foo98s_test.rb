require "application_system_test_case"

class Foo98sTest < ApplicationSystemTestCase
  setup do
    @foo98 = foo98s(:one)
  end

  test "visiting the index" do
    visit foo98s_url
    assert_selector "h1", text: "Foo98s"
  end

  test "creating a Foo98" do
    visit foo98s_url
    click_on "New Foo98"

    fill_in "Foo1", with: @foo98.foo1
    fill_in "Foo2", with: @foo98.foo2
    fill_in "Foo3", with: @foo98.foo3
    check "Foo4" if @foo98.foo4
    fill_in "Foo5", with: @foo98.foo5
    click_on "Create Foo98"

    assert_text "Foo98 was successfully created"
    click_on "Back"
  end

  test "updating a Foo98" do
    visit foo98s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo98.foo1
    fill_in "Foo2", with: @foo98.foo2
    fill_in "Foo3", with: @foo98.foo3
    check "Foo4" if @foo98.foo4
    fill_in "Foo5", with: @foo98.foo5
    click_on "Update Foo98"

    assert_text "Foo98 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo98" do
    visit foo98s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo98 was successfully destroyed"
  end
end
