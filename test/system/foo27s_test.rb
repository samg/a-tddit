require "application_system_test_case"

class Foo27sTest < ApplicationSystemTestCase
  setup do
    @foo27 = foo27s(:one)
  end

  test "visiting the index" do
    visit foo27s_url
    assert_selector "h1", text: "Foo27s"
  end

  test "creating a Foo27" do
    visit foo27s_url
    click_on "New Foo27"

    fill_in "Foo1", with: @foo27.foo1
    fill_in "Foo2", with: @foo27.foo2
    fill_in "Foo3", with: @foo27.foo3
    check "Foo4" if @foo27.foo4
    fill_in "Foo5", with: @foo27.foo5
    click_on "Create Foo27"

    assert_text "Foo27 was successfully created"
    click_on "Back"
  end

  test "updating a Foo27" do
    visit foo27s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo27.foo1
    fill_in "Foo2", with: @foo27.foo2
    fill_in "Foo3", with: @foo27.foo3
    check "Foo4" if @foo27.foo4
    fill_in "Foo5", with: @foo27.foo5
    click_on "Update Foo27"

    assert_text "Foo27 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo27" do
    visit foo27s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo27 was successfully destroyed"
  end
end
