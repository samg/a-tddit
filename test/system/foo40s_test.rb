require "application_system_test_case"

class Foo40sTest < ApplicationSystemTestCase
  setup do
    @foo40 = foo40s(:one)
  end

  test "visiting the index" do
    visit foo40s_url
    assert_selector "h1", text: "Foo40s"
  end

  test "creating a Foo40" do
    visit foo40s_url
    click_on "New Foo40"

    fill_in "Foo1", with: @foo40.foo1
    fill_in "Foo2", with: @foo40.foo2
    fill_in "Foo3", with: @foo40.foo3
    check "Foo4" if @foo40.foo4
    fill_in "Foo5", with: @foo40.foo5
    click_on "Create Foo40"

    assert_text "Foo40 was successfully created"
    click_on "Back"
  end

  test "updating a Foo40" do
    visit foo40s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo40.foo1
    fill_in "Foo2", with: @foo40.foo2
    fill_in "Foo3", with: @foo40.foo3
    check "Foo4" if @foo40.foo4
    fill_in "Foo5", with: @foo40.foo5
    click_on "Update Foo40"

    assert_text "Foo40 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo40" do
    visit foo40s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo40 was successfully destroyed"
  end
end
