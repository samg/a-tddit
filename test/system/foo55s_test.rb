require "application_system_test_case"

class Foo55sTest < ApplicationSystemTestCase
  setup do
    @foo55 = foo55s(:one)
  end

  test "visiting the index" do
    visit foo55s_url
    assert_selector "h1", text: "Foo55s"
  end

  test "creating a Foo55" do
    visit foo55s_url
    click_on "New Foo55"

    fill_in "Foo1", with: @foo55.foo1
    fill_in "Foo2", with: @foo55.foo2
    fill_in "Foo3", with: @foo55.foo3
    check "Foo4" if @foo55.foo4
    fill_in "Foo5", with: @foo55.foo5
    click_on "Create Foo55"

    assert_text "Foo55 was successfully created"
    click_on "Back"
  end

  test "updating a Foo55" do
    visit foo55s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo55.foo1
    fill_in "Foo2", with: @foo55.foo2
    fill_in "Foo3", with: @foo55.foo3
    check "Foo4" if @foo55.foo4
    fill_in "Foo5", with: @foo55.foo5
    click_on "Update Foo55"

    assert_text "Foo55 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo55" do
    visit foo55s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo55 was successfully destroyed"
  end
end
