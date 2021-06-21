require "application_system_test_case"

class Foo63sTest < ApplicationSystemTestCase
  setup do
    @foo63 = foo63s(:one)
  end

  test "visiting the index" do
    visit foo63s_url
    assert_selector "h1", text: "Foo63s"
  end

  test "creating a Foo63" do
    visit foo63s_url
    click_on "New Foo63"

    fill_in "Foo1", with: @foo63.foo1
    fill_in "Foo2", with: @foo63.foo2
    fill_in "Foo3", with: @foo63.foo3
    check "Foo4" if @foo63.foo4
    fill_in "Foo5", with: @foo63.foo5
    click_on "Create Foo63"

    assert_text "Foo63 was successfully created"
    click_on "Back"
  end

  test "updating a Foo63" do
    visit foo63s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo63.foo1
    fill_in "Foo2", with: @foo63.foo2
    fill_in "Foo3", with: @foo63.foo3
    check "Foo4" if @foo63.foo4
    fill_in "Foo5", with: @foo63.foo5
    click_on "Update Foo63"

    assert_text "Foo63 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo63" do
    visit foo63s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo63 was successfully destroyed"
  end
end
