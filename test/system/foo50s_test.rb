require "application_system_test_case"

class Foo50sTest < ApplicationSystemTestCase
  setup do
    @foo50 = foo50s(:one)
  end

  test "visiting the index" do
    visit foo50s_url
    assert_selector "h1", text: "Foo50s"
  end

  test "creating a Foo50" do
    visit foo50s_url
    click_on "New Foo50"

    fill_in "Foo1", with: @foo50.foo1
    fill_in "Foo2", with: @foo50.foo2
    fill_in "Foo3", with: @foo50.foo3
    check "Foo4" if @foo50.foo4
    fill_in "Foo5", with: @foo50.foo5
    click_on "Create Foo50"

    assert_text "Foo50 was successfully created"
    click_on "Back"
  end

  test "updating a Foo50" do
    visit foo50s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo50.foo1
    fill_in "Foo2", with: @foo50.foo2
    fill_in "Foo3", with: @foo50.foo3
    check "Foo4" if @foo50.foo4
    fill_in "Foo5", with: @foo50.foo5
    click_on "Update Foo50"

    assert_text "Foo50 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo50" do
    visit foo50s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo50 was successfully destroyed"
  end
end
