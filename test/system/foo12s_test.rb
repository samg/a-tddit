require "application_system_test_case"

class Foo12sTest < ApplicationSystemTestCase
  setup do
    @foo12 = foo12s(:one)
  end

  test "visiting the index" do
    visit foo12s_url
    assert_selector "h1", text: "Foo12s"
  end

  test "creating a Foo12" do
    visit foo12s_url
    click_on "New Foo12"

    fill_in "Foo1", with: @foo12.foo1
    fill_in "Foo2", with: @foo12.foo2
    fill_in "Foo3", with: @foo12.foo3
    check "Foo4" if @foo12.foo4
    fill_in "Foo5", with: @foo12.foo5
    click_on "Create Foo12"

    assert_text "Foo12 was successfully created"
    click_on "Back"
  end

  test "updating a Foo12" do
    visit foo12s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo12.foo1
    fill_in "Foo2", with: @foo12.foo2
    fill_in "Foo3", with: @foo12.foo3
    check "Foo4" if @foo12.foo4
    fill_in "Foo5", with: @foo12.foo5
    click_on "Update Foo12"

    assert_text "Foo12 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo12" do
    visit foo12s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo12 was successfully destroyed"
  end
end
