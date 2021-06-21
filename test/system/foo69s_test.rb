require "application_system_test_case"

class Foo69sTest < ApplicationSystemTestCase
  setup do
    @foo69 = foo69s(:one)
  end

  test "visiting the index" do
    visit foo69s_url
    assert_selector "h1", text: "Foo69s"
  end

  test "creating a Foo69" do
    visit foo69s_url
    click_on "New Foo69"

    fill_in "Foo1", with: @foo69.foo1
    fill_in "Foo2", with: @foo69.foo2
    fill_in "Foo3", with: @foo69.foo3
    check "Foo4" if @foo69.foo4
    fill_in "Foo5", with: @foo69.foo5
    click_on "Create Foo69"

    assert_text "Foo69 was successfully created"
    click_on "Back"
  end

  test "updating a Foo69" do
    visit foo69s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo69.foo1
    fill_in "Foo2", with: @foo69.foo2
    fill_in "Foo3", with: @foo69.foo3
    check "Foo4" if @foo69.foo4
    fill_in "Foo5", with: @foo69.foo5
    click_on "Update Foo69"

    assert_text "Foo69 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo69" do
    visit foo69s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo69 was successfully destroyed"
  end
end
