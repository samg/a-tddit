require "application_system_test_case"

class Foo28sTest < ApplicationSystemTestCase
  setup do
    @foo28 = foo28s(:one)
  end

  test "visiting the index" do
    visit foo28s_url
    assert_selector "h1", text: "Foo28s"
  end

  test "creating a Foo28" do
    visit foo28s_url
    click_on "New Foo28"

    fill_in "Foo1", with: @foo28.foo1
    fill_in "Foo2", with: @foo28.foo2
    fill_in "Foo3", with: @foo28.foo3
    check "Foo4" if @foo28.foo4
    fill_in "Foo5", with: @foo28.foo5
    click_on "Create Foo28"

    assert_text "Foo28 was successfully created"
    click_on "Back"
  end

  test "updating a Foo28" do
    visit foo28s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo28.foo1
    fill_in "Foo2", with: @foo28.foo2
    fill_in "Foo3", with: @foo28.foo3
    check "Foo4" if @foo28.foo4
    fill_in "Foo5", with: @foo28.foo5
    click_on "Update Foo28"

    assert_text "Foo28 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo28" do
    visit foo28s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo28 was successfully destroyed"
  end
end
