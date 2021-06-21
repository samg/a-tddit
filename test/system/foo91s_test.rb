require "application_system_test_case"

class Foo91sTest < ApplicationSystemTestCase
  setup do
    @foo91 = foo91s(:one)
  end

  test "visiting the index" do
    visit foo91s_url
    assert_selector "h1", text: "Foo91s"
  end

  test "creating a Foo91" do
    visit foo91s_url
    click_on "New Foo91"

    fill_in "Foo1", with: @foo91.foo1
    fill_in "Foo2", with: @foo91.foo2
    fill_in "Foo3", with: @foo91.foo3
    check "Foo4" if @foo91.foo4
    fill_in "Foo5", with: @foo91.foo5
    click_on "Create Foo91"

    assert_text "Foo91 was successfully created"
    click_on "Back"
  end

  test "updating a Foo91" do
    visit foo91s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo91.foo1
    fill_in "Foo2", with: @foo91.foo2
    fill_in "Foo3", with: @foo91.foo3
    check "Foo4" if @foo91.foo4
    fill_in "Foo5", with: @foo91.foo5
    click_on "Update Foo91"

    assert_text "Foo91 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo91" do
    visit foo91s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo91 was successfully destroyed"
  end
end
