require "application_system_test_case"

class Foo36sTest < ApplicationSystemTestCase
  setup do
    @foo36 = foo36s(:one)
  end

  test "visiting the index" do
    visit foo36s_url
    assert_selector "h1", text: "Foo36s"
  end

  test "creating a Foo36" do
    visit foo36s_url
    click_on "New Foo36"

    fill_in "Foo1", with: @foo36.foo1
    fill_in "Foo2", with: @foo36.foo2
    fill_in "Foo3", with: @foo36.foo3
    check "Foo4" if @foo36.foo4
    fill_in "Foo5", with: @foo36.foo5
    click_on "Create Foo36"

    assert_text "Foo36 was successfully created"
    click_on "Back"
  end

  test "updating a Foo36" do
    visit foo36s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo36.foo1
    fill_in "Foo2", with: @foo36.foo2
    fill_in "Foo3", with: @foo36.foo3
    check "Foo4" if @foo36.foo4
    fill_in "Foo5", with: @foo36.foo5
    click_on "Update Foo36"

    assert_text "Foo36 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo36" do
    visit foo36s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo36 was successfully destroyed"
  end
end
