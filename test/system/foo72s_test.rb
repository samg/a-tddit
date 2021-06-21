require "application_system_test_case"

class Foo72sTest < ApplicationSystemTestCase
  setup do
    @foo72 = foo72s(:one)
  end

  test "visiting the index" do
    visit foo72s_url
    assert_selector "h1", text: "Foo72s"
  end

  test "creating a Foo72" do
    visit foo72s_url
    click_on "New Foo72"

    fill_in "Foo1", with: @foo72.foo1
    fill_in "Foo2", with: @foo72.foo2
    fill_in "Foo3", with: @foo72.foo3
    check "Foo4" if @foo72.foo4
    fill_in "Foo5", with: @foo72.foo5
    click_on "Create Foo72"

    assert_text "Foo72 was successfully created"
    click_on "Back"
  end

  test "updating a Foo72" do
    visit foo72s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo72.foo1
    fill_in "Foo2", with: @foo72.foo2
    fill_in "Foo3", with: @foo72.foo3
    check "Foo4" if @foo72.foo4
    fill_in "Foo5", with: @foo72.foo5
    click_on "Update Foo72"

    assert_text "Foo72 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo72" do
    visit foo72s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo72 was successfully destroyed"
  end
end
