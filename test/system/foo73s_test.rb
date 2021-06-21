require "application_system_test_case"

class Foo73sTest < ApplicationSystemTestCase
  setup do
    @foo73 = foo73s(:one)
  end

  test "visiting the index" do
    visit foo73s_url
    assert_selector "h1", text: "Foo73s"
  end

  test "creating a Foo73" do
    visit foo73s_url
    click_on "New Foo73"

    fill_in "Foo1", with: @foo73.foo1
    fill_in "Foo2", with: @foo73.foo2
    fill_in "Foo3", with: @foo73.foo3
    check "Foo4" if @foo73.foo4
    fill_in "Foo5", with: @foo73.foo5
    click_on "Create Foo73"

    assert_text "Foo73 was successfully created"
    click_on "Back"
  end

  test "updating a Foo73" do
    visit foo73s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo73.foo1
    fill_in "Foo2", with: @foo73.foo2
    fill_in "Foo3", with: @foo73.foo3
    check "Foo4" if @foo73.foo4
    fill_in "Foo5", with: @foo73.foo5
    click_on "Update Foo73"

    assert_text "Foo73 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo73" do
    visit foo73s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo73 was successfully destroyed"
  end
end
