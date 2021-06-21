require "application_system_test_case"

class Foo35sTest < ApplicationSystemTestCase
  setup do
    @foo35 = foo35s(:one)
  end

  test "visiting the index" do
    visit foo35s_url
    assert_selector "h1", text: "Foo35s"
  end

  test "creating a Foo35" do
    visit foo35s_url
    click_on "New Foo35"

    fill_in "Foo1", with: @foo35.foo1
    fill_in "Foo2", with: @foo35.foo2
    fill_in "Foo3", with: @foo35.foo3
    check "Foo4" if @foo35.foo4
    fill_in "Foo5", with: @foo35.foo5
    click_on "Create Foo35"

    assert_text "Foo35 was successfully created"
    click_on "Back"
  end

  test "updating a Foo35" do
    visit foo35s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo35.foo1
    fill_in "Foo2", with: @foo35.foo2
    fill_in "Foo3", with: @foo35.foo3
    check "Foo4" if @foo35.foo4
    fill_in "Foo5", with: @foo35.foo5
    click_on "Update Foo35"

    assert_text "Foo35 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo35" do
    visit foo35s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo35 was successfully destroyed"
  end
end
