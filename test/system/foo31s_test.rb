require "application_system_test_case"

class Foo31sTest < ApplicationSystemTestCase
  setup do
    @foo31 = foo31s(:one)
  end

  test "visiting the index" do
    visit foo31s_url
    assert_selector "h1", text: "Foo31s"
  end

  test "creating a Foo31" do
    visit foo31s_url
    click_on "New Foo31"

    fill_in "Foo1", with: @foo31.foo1
    fill_in "Foo2", with: @foo31.foo2
    fill_in "Foo3", with: @foo31.foo3
    check "Foo4" if @foo31.foo4
    fill_in "Foo5", with: @foo31.foo5
    click_on "Create Foo31"

    assert_text "Foo31 was successfully created"
    click_on "Back"
  end

  test "updating a Foo31" do
    visit foo31s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo31.foo1
    fill_in "Foo2", with: @foo31.foo2
    fill_in "Foo3", with: @foo31.foo3
    check "Foo4" if @foo31.foo4
    fill_in "Foo5", with: @foo31.foo5
    click_on "Update Foo31"

    assert_text "Foo31 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo31" do
    visit foo31s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo31 was successfully destroyed"
  end
end
