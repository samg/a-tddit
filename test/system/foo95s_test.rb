require "application_system_test_case"

class Foo95sTest < ApplicationSystemTestCase
  setup do
    @foo95 = foo95s(:one)
  end

  test "visiting the index" do
    visit foo95s_url
    assert_selector "h1", text: "Foo95s"
  end

  test "creating a Foo95" do
    visit foo95s_url
    click_on "New Foo95"

    fill_in "Foo1", with: @foo95.foo1
    fill_in "Foo2", with: @foo95.foo2
    fill_in "Foo3", with: @foo95.foo3
    check "Foo4" if @foo95.foo4
    fill_in "Foo5", with: @foo95.foo5
    click_on "Create Foo95"

    assert_text "Foo95 was successfully created"
    click_on "Back"
  end

  test "updating a Foo95" do
    visit foo95s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo95.foo1
    fill_in "Foo2", with: @foo95.foo2
    fill_in "Foo3", with: @foo95.foo3
    check "Foo4" if @foo95.foo4
    fill_in "Foo5", with: @foo95.foo5
    click_on "Update Foo95"

    assert_text "Foo95 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo95" do
    visit foo95s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo95 was successfully destroyed"
  end
end
