require "application_system_test_case"

class Foo65sTest < ApplicationSystemTestCase
  setup do
    @foo65 = foo65s(:one)
  end

  test "visiting the index" do
    visit foo65s_url
    assert_selector "h1", text: "Foo65s"
  end

  test "creating a Foo65" do
    visit foo65s_url
    click_on "New Foo65"

    fill_in "Foo1", with: @foo65.foo1
    fill_in "Foo2", with: @foo65.foo2
    fill_in "Foo3", with: @foo65.foo3
    check "Foo4" if @foo65.foo4
    fill_in "Foo5", with: @foo65.foo5
    click_on "Create Foo65"

    assert_text "Foo65 was successfully created"
    click_on "Back"
  end

  test "updating a Foo65" do
    visit foo65s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo65.foo1
    fill_in "Foo2", with: @foo65.foo2
    fill_in "Foo3", with: @foo65.foo3
    check "Foo4" if @foo65.foo4
    fill_in "Foo5", with: @foo65.foo5
    click_on "Update Foo65"

    assert_text "Foo65 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo65" do
    visit foo65s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo65 was successfully destroyed"
  end
end
