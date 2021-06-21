require "application_system_test_case"

class Foo25sTest < ApplicationSystemTestCase
  setup do
    @foo25 = foo25s(:one)
  end

  test "visiting the index" do
    visit foo25s_url
    assert_selector "h1", text: "Foo25s"
  end

  test "creating a Foo25" do
    visit foo25s_url
    click_on "New Foo25"

    fill_in "Foo1", with: @foo25.foo1
    fill_in "Foo2", with: @foo25.foo2
    fill_in "Foo3", with: @foo25.foo3
    check "Foo4" if @foo25.foo4
    fill_in "Foo5", with: @foo25.foo5
    click_on "Create Foo25"

    assert_text "Foo25 was successfully created"
    click_on "Back"
  end

  test "updating a Foo25" do
    visit foo25s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo25.foo1
    fill_in "Foo2", with: @foo25.foo2
    fill_in "Foo3", with: @foo25.foo3
    check "Foo4" if @foo25.foo4
    fill_in "Foo5", with: @foo25.foo5
    click_on "Update Foo25"

    assert_text "Foo25 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo25" do
    visit foo25s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo25 was successfully destroyed"
  end
end
