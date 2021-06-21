require "application_system_test_case"

class Foo5sTest < ApplicationSystemTestCase
  setup do
    @foo5 = foo5s(:one)
  end

  test "visiting the index" do
    visit foo5s_url
    assert_selector "h1", text: "Foo5s"
  end

  test "creating a Foo5" do
    visit foo5s_url
    click_on "New Foo5"

    fill_in "Foo1", with: @foo5.foo1
    fill_in "Foo2", with: @foo5.foo2
    fill_in "Foo3", with: @foo5.foo3
    check "Foo4" if @foo5.foo4
    fill_in "Foo5", with: @foo5.foo5
    click_on "Create Foo5"

    assert_text "Foo5 was successfully created"
    click_on "Back"
  end

  test "updating a Foo5" do
    visit foo5s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo5.foo1
    fill_in "Foo2", with: @foo5.foo2
    fill_in "Foo3", with: @foo5.foo3
    check "Foo4" if @foo5.foo4
    fill_in "Foo5", with: @foo5.foo5
    click_on "Update Foo5"

    assert_text "Foo5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo5" do
    visit foo5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo5 was successfully destroyed"
  end
end
