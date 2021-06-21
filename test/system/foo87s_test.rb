require "application_system_test_case"

class Foo87sTest < ApplicationSystemTestCase
  setup do
    @foo87 = foo87s(:one)
  end

  test "visiting the index" do
    visit foo87s_url
    assert_selector "h1", text: "Foo87s"
  end

  test "creating a Foo87" do
    visit foo87s_url
    click_on "New Foo87"

    fill_in "Foo1", with: @foo87.foo1
    fill_in "Foo2", with: @foo87.foo2
    fill_in "Foo3", with: @foo87.foo3
    check "Foo4" if @foo87.foo4
    fill_in "Foo5", with: @foo87.foo5
    click_on "Create Foo87"

    assert_text "Foo87 was successfully created"
    click_on "Back"
  end

  test "updating a Foo87" do
    visit foo87s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo87.foo1
    fill_in "Foo2", with: @foo87.foo2
    fill_in "Foo3", with: @foo87.foo3
    check "Foo4" if @foo87.foo4
    fill_in "Foo5", with: @foo87.foo5
    click_on "Update Foo87"

    assert_text "Foo87 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo87" do
    visit foo87s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo87 was successfully destroyed"
  end
end
