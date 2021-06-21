require "application_system_test_case"

class Foo42sTest < ApplicationSystemTestCase
  setup do
    @foo42 = foo42s(:one)
  end

  test "visiting the index" do
    visit foo42s_url
    assert_selector "h1", text: "Foo42s"
  end

  test "creating a Foo42" do
    visit foo42s_url
    click_on "New Foo42"

    fill_in "Foo1", with: @foo42.foo1
    fill_in "Foo2", with: @foo42.foo2
    fill_in "Foo3", with: @foo42.foo3
    check "Foo4" if @foo42.foo4
    fill_in "Foo5", with: @foo42.foo5
    click_on "Create Foo42"

    assert_text "Foo42 was successfully created"
    click_on "Back"
  end

  test "updating a Foo42" do
    visit foo42s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo42.foo1
    fill_in "Foo2", with: @foo42.foo2
    fill_in "Foo3", with: @foo42.foo3
    check "Foo4" if @foo42.foo4
    fill_in "Foo5", with: @foo42.foo5
    click_on "Update Foo42"

    assert_text "Foo42 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo42" do
    visit foo42s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo42 was successfully destroyed"
  end
end
