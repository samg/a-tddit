require "application_system_test_case"

class Foo11sTest < ApplicationSystemTestCase
  setup do
    @foo11 = foo11s(:one)
  end

  test "visiting the index" do
    visit foo11s_url
    assert_selector "h1", text: "Foo11s"
  end

  test "creating a Foo11" do
    visit foo11s_url
    click_on "New Foo11"

    fill_in "Foo1", with: @foo11.foo1
    fill_in "Foo2", with: @foo11.foo2
    fill_in "Foo3", with: @foo11.foo3
    check "Foo4" if @foo11.foo4
    fill_in "Foo5", with: @foo11.foo5
    click_on "Create Foo11"

    assert_text "Foo11 was successfully created"
    click_on "Back"
  end

  test "updating a Foo11" do
    visit foo11s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo11.foo1
    fill_in "Foo2", with: @foo11.foo2
    fill_in "Foo3", with: @foo11.foo3
    check "Foo4" if @foo11.foo4
    fill_in "Foo5", with: @foo11.foo5
    click_on "Update Foo11"

    assert_text "Foo11 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo11" do
    visit foo11s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo11 was successfully destroyed"
  end
end
