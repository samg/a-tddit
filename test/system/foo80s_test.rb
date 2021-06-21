require "application_system_test_case"

class Foo80sTest < ApplicationSystemTestCase
  setup do
    @foo80 = foo80s(:one)
  end

  test "visiting the index" do
    visit foo80s_url
    assert_selector "h1", text: "Foo80s"
  end

  test "creating a Foo80" do
    visit foo80s_url
    click_on "New Foo80"

    fill_in "Foo1", with: @foo80.foo1
    fill_in "Foo2", with: @foo80.foo2
    fill_in "Foo3", with: @foo80.foo3
    check "Foo4" if @foo80.foo4
    fill_in "Foo5", with: @foo80.foo5
    click_on "Create Foo80"

    assert_text "Foo80 was successfully created"
    click_on "Back"
  end

  test "updating a Foo80" do
    visit foo80s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo80.foo1
    fill_in "Foo2", with: @foo80.foo2
    fill_in "Foo3", with: @foo80.foo3
    check "Foo4" if @foo80.foo4
    fill_in "Foo5", with: @foo80.foo5
    click_on "Update Foo80"

    assert_text "Foo80 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo80" do
    visit foo80s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo80 was successfully destroyed"
  end
end
