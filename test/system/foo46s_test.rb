require "application_system_test_case"

class Foo46sTest < ApplicationSystemTestCase
  setup do
    @foo46 = foo46s(:one)
  end

  test "visiting the index" do
    visit foo46s_url
    assert_selector "h1", text: "Foo46s"
  end

  test "creating a Foo46" do
    visit foo46s_url
    click_on "New Foo46"

    fill_in "Foo1", with: @foo46.foo1
    fill_in "Foo2", with: @foo46.foo2
    fill_in "Foo3", with: @foo46.foo3
    check "Foo4" if @foo46.foo4
    fill_in "Foo5", with: @foo46.foo5
    click_on "Create Foo46"

    assert_text "Foo46 was successfully created"
    click_on "Back"
  end

  test "updating a Foo46" do
    visit foo46s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo46.foo1
    fill_in "Foo2", with: @foo46.foo2
    fill_in "Foo3", with: @foo46.foo3
    check "Foo4" if @foo46.foo4
    fill_in "Foo5", with: @foo46.foo5
    click_on "Update Foo46"

    assert_text "Foo46 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo46" do
    visit foo46s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo46 was successfully destroyed"
  end
end
