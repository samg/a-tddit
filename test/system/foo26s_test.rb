require "application_system_test_case"

class Foo26sTest < ApplicationSystemTestCase
  setup do
    @foo26 = foo26s(:one)
  end

  test "visiting the index" do
    visit foo26s_url
    assert_selector "h1", text: "Foo26s"
  end

  test "creating a Foo26" do
    visit foo26s_url
    click_on "New Foo26"

    fill_in "Foo1", with: @foo26.foo1
    fill_in "Foo2", with: @foo26.foo2
    fill_in "Foo3", with: @foo26.foo3
    check "Foo4" if @foo26.foo4
    fill_in "Foo5", with: @foo26.foo5
    click_on "Create Foo26"

    assert_text "Foo26 was successfully created"
    click_on "Back"
  end

  test "updating a Foo26" do
    visit foo26s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo26.foo1
    fill_in "Foo2", with: @foo26.foo2
    fill_in "Foo3", with: @foo26.foo3
    check "Foo4" if @foo26.foo4
    fill_in "Foo5", with: @foo26.foo5
    click_on "Update Foo26"

    assert_text "Foo26 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo26" do
    visit foo26s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo26 was successfully destroyed"
  end
end
