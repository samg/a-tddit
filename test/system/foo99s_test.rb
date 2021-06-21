require "application_system_test_case"

class Foo99sTest < ApplicationSystemTestCase
  setup do
    @foo99 = foo99s(:one)
  end

  test "visiting the index" do
    visit foo99s_url
    assert_selector "h1", text: "Foo99s"
  end

  test "creating a Foo99" do
    visit foo99s_url
    click_on "New Foo99"

    fill_in "Foo1", with: @foo99.foo1
    fill_in "Foo2", with: @foo99.foo2
    fill_in "Foo3", with: @foo99.foo3
    check "Foo4" if @foo99.foo4
    fill_in "Foo5", with: @foo99.foo5
    click_on "Create Foo99"

    assert_text "Foo99 was successfully created"
    click_on "Back"
  end

  test "updating a Foo99" do
    visit foo99s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo99.foo1
    fill_in "Foo2", with: @foo99.foo2
    fill_in "Foo3", with: @foo99.foo3
    check "Foo4" if @foo99.foo4
    fill_in "Foo5", with: @foo99.foo5
    click_on "Update Foo99"

    assert_text "Foo99 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo99" do
    visit foo99s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo99 was successfully destroyed"
  end
end
