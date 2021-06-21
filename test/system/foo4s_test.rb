require "application_system_test_case"

class Foo4sTest < ApplicationSystemTestCase
  setup do
    @foo4 = foo4s(:one)
  end

  test "visiting the index" do
    visit foo4s_url
    assert_selector "h1", text: "Foo4s"
  end

  test "creating a Foo4" do
    visit foo4s_url
    click_on "New Foo4"

    fill_in "Foo1", with: @foo4.foo1
    fill_in "Foo2", with: @foo4.foo2
    fill_in "Foo3", with: @foo4.foo3
    check "Foo4" if @foo4.foo4
    fill_in "Foo5", with: @foo4.foo5
    click_on "Create Foo4"

    assert_text "Foo4 was successfully created"
    click_on "Back"
  end

  test "updating a Foo4" do
    visit foo4s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo4.foo1
    fill_in "Foo2", with: @foo4.foo2
    fill_in "Foo3", with: @foo4.foo3
    check "Foo4" if @foo4.foo4
    fill_in "Foo5", with: @foo4.foo5
    click_on "Update Foo4"

    assert_text "Foo4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo4" do
    visit foo4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo4 was successfully destroyed"
  end
end
