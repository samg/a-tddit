require "application_system_test_case"

class Foo10sTest < ApplicationSystemTestCase
  setup do
    @foo10 = foo10s(:one)
  end

  test "visiting the index" do
    visit foo10s_url
    assert_selector "h1", text: "Foo10s"
  end

  test "creating a Foo10" do
    visit foo10s_url
    click_on "New Foo10"

    fill_in "Foo1", with: @foo10.foo1
    fill_in "Foo2", with: @foo10.foo2
    fill_in "Foo3", with: @foo10.foo3
    check "Foo4" if @foo10.foo4
    fill_in "Foo5", with: @foo10.foo5
    click_on "Create Foo10"

    assert_text "Foo10 was successfully created"
    click_on "Back"
  end

  test "updating a Foo10" do
    visit foo10s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo10.foo1
    fill_in "Foo2", with: @foo10.foo2
    fill_in "Foo3", with: @foo10.foo3
    check "Foo4" if @foo10.foo4
    fill_in "Foo5", with: @foo10.foo5
    click_on "Update Foo10"

    assert_text "Foo10 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo10" do
    visit foo10s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo10 was successfully destroyed"
  end
end
