require "application_system_test_case"

class Foo43sTest < ApplicationSystemTestCase
  setup do
    @foo43 = foo43s(:one)
  end

  test "visiting the index" do
    visit foo43s_url
    assert_selector "h1", text: "Foo43s"
  end

  test "creating a Foo43" do
    visit foo43s_url
    click_on "New Foo43"

    fill_in "Foo1", with: @foo43.foo1
    fill_in "Foo2", with: @foo43.foo2
    fill_in "Foo3", with: @foo43.foo3
    check "Foo4" if @foo43.foo4
    fill_in "Foo5", with: @foo43.foo5
    click_on "Create Foo43"

    assert_text "Foo43 was successfully created"
    click_on "Back"
  end

  test "updating a Foo43" do
    visit foo43s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo43.foo1
    fill_in "Foo2", with: @foo43.foo2
    fill_in "Foo3", with: @foo43.foo3
    check "Foo4" if @foo43.foo4
    fill_in "Foo5", with: @foo43.foo5
    click_on "Update Foo43"

    assert_text "Foo43 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo43" do
    visit foo43s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo43 was successfully destroyed"
  end
end
