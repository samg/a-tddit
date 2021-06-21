require "application_system_test_case"

class Foo78sTest < ApplicationSystemTestCase
  setup do
    @foo78 = foo78s(:one)
  end

  test "visiting the index" do
    visit foo78s_url
    assert_selector "h1", text: "Foo78s"
  end

  test "creating a Foo78" do
    visit foo78s_url
    click_on "New Foo78"

    fill_in "Foo1", with: @foo78.foo1
    fill_in "Foo2", with: @foo78.foo2
    fill_in "Foo3", with: @foo78.foo3
    check "Foo4" if @foo78.foo4
    fill_in "Foo5", with: @foo78.foo5
    click_on "Create Foo78"

    assert_text "Foo78 was successfully created"
    click_on "Back"
  end

  test "updating a Foo78" do
    visit foo78s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo78.foo1
    fill_in "Foo2", with: @foo78.foo2
    fill_in "Foo3", with: @foo78.foo3
    check "Foo4" if @foo78.foo4
    fill_in "Foo5", with: @foo78.foo5
    click_on "Update Foo78"

    assert_text "Foo78 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo78" do
    visit foo78s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo78 was successfully destroyed"
  end
end
