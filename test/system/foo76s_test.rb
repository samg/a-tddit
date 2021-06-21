require "application_system_test_case"

class Foo76sTest < ApplicationSystemTestCase
  setup do
    @foo76 = foo76s(:one)
  end

  test "visiting the index" do
    visit foo76s_url
    assert_selector "h1", text: "Foo76s"
  end

  test "creating a Foo76" do
    visit foo76s_url
    click_on "New Foo76"

    fill_in "Foo1", with: @foo76.foo1
    fill_in "Foo2", with: @foo76.foo2
    fill_in "Foo3", with: @foo76.foo3
    check "Foo4" if @foo76.foo4
    fill_in "Foo5", with: @foo76.foo5
    click_on "Create Foo76"

    assert_text "Foo76 was successfully created"
    click_on "Back"
  end

  test "updating a Foo76" do
    visit foo76s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo76.foo1
    fill_in "Foo2", with: @foo76.foo2
    fill_in "Foo3", with: @foo76.foo3
    check "Foo4" if @foo76.foo4
    fill_in "Foo5", with: @foo76.foo5
    click_on "Update Foo76"

    assert_text "Foo76 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo76" do
    visit foo76s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo76 was successfully destroyed"
  end
end
