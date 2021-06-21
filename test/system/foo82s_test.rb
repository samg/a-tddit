require "application_system_test_case"

class Foo82sTest < ApplicationSystemTestCase
  setup do
    @foo82 = foo82s(:one)
  end

  test "visiting the index" do
    visit foo82s_url
    assert_selector "h1", text: "Foo82s"
  end

  test "creating a Foo82" do
    visit foo82s_url
    click_on "New Foo82"

    fill_in "Foo1", with: @foo82.foo1
    fill_in "Foo2", with: @foo82.foo2
    fill_in "Foo3", with: @foo82.foo3
    check "Foo4" if @foo82.foo4
    fill_in "Foo5", with: @foo82.foo5
    click_on "Create Foo82"

    assert_text "Foo82 was successfully created"
    click_on "Back"
  end

  test "updating a Foo82" do
    visit foo82s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo82.foo1
    fill_in "Foo2", with: @foo82.foo2
    fill_in "Foo3", with: @foo82.foo3
    check "Foo4" if @foo82.foo4
    fill_in "Foo5", with: @foo82.foo5
    click_on "Update Foo82"

    assert_text "Foo82 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo82" do
    visit foo82s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo82 was successfully destroyed"
  end
end
