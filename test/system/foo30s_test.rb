require "application_system_test_case"

class Foo30sTest < ApplicationSystemTestCase
  setup do
    @foo30 = foo30s(:one)
  end

  test "visiting the index" do
    visit foo30s_url
    assert_selector "h1", text: "Foo30s"
  end

  test "creating a Foo30" do
    visit foo30s_url
    click_on "New Foo30"

    fill_in "Foo1", with: @foo30.foo1
    fill_in "Foo2", with: @foo30.foo2
    fill_in "Foo3", with: @foo30.foo3
    check "Foo4" if @foo30.foo4
    fill_in "Foo5", with: @foo30.foo5
    click_on "Create Foo30"

    assert_text "Foo30 was successfully created"
    click_on "Back"
  end

  test "updating a Foo30" do
    visit foo30s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo30.foo1
    fill_in "Foo2", with: @foo30.foo2
    fill_in "Foo3", with: @foo30.foo3
    check "Foo4" if @foo30.foo4
    fill_in "Foo5", with: @foo30.foo5
    click_on "Update Foo30"

    assert_text "Foo30 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo30" do
    visit foo30s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo30 was successfully destroyed"
  end
end
