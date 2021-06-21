require "application_system_test_case"

class Foo24sTest < ApplicationSystemTestCase
  setup do
    @foo24 = foo24s(:one)
  end

  test "visiting the index" do
    visit foo24s_url
    assert_selector "h1", text: "Foo24s"
  end

  test "creating a Foo24" do
    visit foo24s_url
    click_on "New Foo24"

    fill_in "Foo1", with: @foo24.foo1
    fill_in "Foo2", with: @foo24.foo2
    fill_in "Foo3", with: @foo24.foo3
    check "Foo4" if @foo24.foo4
    fill_in "Foo5", with: @foo24.foo5
    click_on "Create Foo24"

    assert_text "Foo24 was successfully created"
    click_on "Back"
  end

  test "updating a Foo24" do
    visit foo24s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo24.foo1
    fill_in "Foo2", with: @foo24.foo2
    fill_in "Foo3", with: @foo24.foo3
    check "Foo4" if @foo24.foo4
    fill_in "Foo5", with: @foo24.foo5
    click_on "Update Foo24"

    assert_text "Foo24 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo24" do
    visit foo24s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo24 was successfully destroyed"
  end
end
