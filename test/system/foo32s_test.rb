require "application_system_test_case"

class Foo32sTest < ApplicationSystemTestCase
  setup do
    @foo32 = foo32s(:one)
  end

  test "visiting the index" do
    visit foo32s_url
    assert_selector "h1", text: "Foo32s"
  end

  test "creating a Foo32" do
    visit foo32s_url
    click_on "New Foo32"

    fill_in "Foo1", with: @foo32.foo1
    fill_in "Foo2", with: @foo32.foo2
    fill_in "Foo3", with: @foo32.foo3
    check "Foo4" if @foo32.foo4
    fill_in "Foo5", with: @foo32.foo5
    click_on "Create Foo32"

    assert_text "Foo32 was successfully created"
    click_on "Back"
  end

  test "updating a Foo32" do
    visit foo32s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo32.foo1
    fill_in "Foo2", with: @foo32.foo2
    fill_in "Foo3", with: @foo32.foo3
    check "Foo4" if @foo32.foo4
    fill_in "Foo5", with: @foo32.foo5
    click_on "Update Foo32"

    assert_text "Foo32 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo32" do
    visit foo32s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo32 was successfully destroyed"
  end
end
