require "application_system_test_case"

class Foo41sTest < ApplicationSystemTestCase
  setup do
    @foo41 = foo41s(:one)
  end

  test "visiting the index" do
    visit foo41s_url
    assert_selector "h1", text: "Foo41s"
  end

  test "creating a Foo41" do
    visit foo41s_url
    click_on "New Foo41"

    fill_in "Foo1", with: @foo41.foo1
    fill_in "Foo2", with: @foo41.foo2
    fill_in "Foo3", with: @foo41.foo3
    check "Foo4" if @foo41.foo4
    fill_in "Foo5", with: @foo41.foo5
    click_on "Create Foo41"

    assert_text "Foo41 was successfully created"
    click_on "Back"
  end

  test "updating a Foo41" do
    visit foo41s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo41.foo1
    fill_in "Foo2", with: @foo41.foo2
    fill_in "Foo3", with: @foo41.foo3
    check "Foo4" if @foo41.foo4
    fill_in "Foo5", with: @foo41.foo5
    click_on "Update Foo41"

    assert_text "Foo41 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo41" do
    visit foo41s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo41 was successfully destroyed"
  end
end
