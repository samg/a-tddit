require "application_system_test_case"

class Foo6sTest < ApplicationSystemTestCase
  setup do
    @foo6 = foo6s(:one)
  end

  test "visiting the index" do
    visit foo6s_url
    assert_selector "h1", text: "Foo6s"
  end

  test "creating a Foo6" do
    visit foo6s_url
    click_on "New Foo6"

    fill_in "Foo1", with: @foo6.foo1
    fill_in "Foo2", with: @foo6.foo2
    fill_in "Foo3", with: @foo6.foo3
    check "Foo4" if @foo6.foo4
    fill_in "Foo5", with: @foo6.foo5
    click_on "Create Foo6"

    assert_text "Foo6 was successfully created"
    click_on "Back"
  end

  test "updating a Foo6" do
    visit foo6s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo6.foo1
    fill_in "Foo2", with: @foo6.foo2
    fill_in "Foo3", with: @foo6.foo3
    check "Foo4" if @foo6.foo4
    fill_in "Foo5", with: @foo6.foo5
    click_on "Update Foo6"

    assert_text "Foo6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo6" do
    visit foo6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo6 was successfully destroyed"
  end
end
