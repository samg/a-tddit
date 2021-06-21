require "application_system_test_case"

class Foo23sTest < ApplicationSystemTestCase
  setup do
    @foo23 = foo23s(:one)
  end

  test "visiting the index" do
    visit foo23s_url
    assert_selector "h1", text: "Foo23s"
  end

  test "creating a Foo23" do
    visit foo23s_url
    click_on "New Foo23"

    fill_in "Foo1", with: @foo23.foo1
    fill_in "Foo2", with: @foo23.foo2
    fill_in "Foo3", with: @foo23.foo3
    check "Foo4" if @foo23.foo4
    fill_in "Foo5", with: @foo23.foo5
    click_on "Create Foo23"

    assert_text "Foo23 was successfully created"
    click_on "Back"
  end

  test "updating a Foo23" do
    visit foo23s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo23.foo1
    fill_in "Foo2", with: @foo23.foo2
    fill_in "Foo3", with: @foo23.foo3
    check "Foo4" if @foo23.foo4
    fill_in "Foo5", with: @foo23.foo5
    click_on "Update Foo23"

    assert_text "Foo23 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo23" do
    visit foo23s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo23 was successfully destroyed"
  end
end
