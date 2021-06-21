require "application_system_test_case"

class Foo66sTest < ApplicationSystemTestCase
  setup do
    @foo66 = foo66s(:one)
  end

  test "visiting the index" do
    visit foo66s_url
    assert_selector "h1", text: "Foo66s"
  end

  test "creating a Foo66" do
    visit foo66s_url
    click_on "New Foo66"

    fill_in "Foo1", with: @foo66.foo1
    fill_in "Foo2", with: @foo66.foo2
    fill_in "Foo3", with: @foo66.foo3
    check "Foo4" if @foo66.foo4
    fill_in "Foo5", with: @foo66.foo5
    click_on "Create Foo66"

    assert_text "Foo66 was successfully created"
    click_on "Back"
  end

  test "updating a Foo66" do
    visit foo66s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo66.foo1
    fill_in "Foo2", with: @foo66.foo2
    fill_in "Foo3", with: @foo66.foo3
    check "Foo4" if @foo66.foo4
    fill_in "Foo5", with: @foo66.foo5
    click_on "Update Foo66"

    assert_text "Foo66 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo66" do
    visit foo66s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo66 was successfully destroyed"
  end
end
