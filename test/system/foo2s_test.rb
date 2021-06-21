require "application_system_test_case"

class Foo2sTest < ApplicationSystemTestCase
  setup do
    @foo2 = foo2s(:one)
  end

  test "visiting the index" do
    visit foo2s_url
    assert_selector "h1", text: "Foo2s"
  end

  test "creating a Foo2" do
    visit foo2s_url
    click_on "New Foo2"

    fill_in "Foo1", with: @foo2.foo1
    fill_in "Foo2", with: @foo2.foo2
    fill_in "Foo3", with: @foo2.foo3
    check "Foo4" if @foo2.foo4
    fill_in "Foo5", with: @foo2.foo5
    click_on "Create Foo2"

    assert_text "Foo2 was successfully created"
    click_on "Back"
  end

  test "updating a Foo2" do
    visit foo2s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo2.foo1
    fill_in "Foo2", with: @foo2.foo2
    fill_in "Foo3", with: @foo2.foo3
    check "Foo4" if @foo2.foo4
    fill_in "Foo5", with: @foo2.foo5
    click_on "Update Foo2"

    assert_text "Foo2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo2" do
    visit foo2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo2 was successfully destroyed"
  end
end
