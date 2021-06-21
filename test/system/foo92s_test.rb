require "application_system_test_case"

class Foo92sTest < ApplicationSystemTestCase
  setup do
    @foo92 = foo92s(:one)
  end

  test "visiting the index" do
    visit foo92s_url
    assert_selector "h1", text: "Foo92s"
  end

  test "creating a Foo92" do
    visit foo92s_url
    click_on "New Foo92"

    fill_in "Foo1", with: @foo92.foo1
    fill_in "Foo2", with: @foo92.foo2
    fill_in "Foo3", with: @foo92.foo3
    check "Foo4" if @foo92.foo4
    fill_in "Foo5", with: @foo92.foo5
    click_on "Create Foo92"

    assert_text "Foo92 was successfully created"
    click_on "Back"
  end

  test "updating a Foo92" do
    visit foo92s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo92.foo1
    fill_in "Foo2", with: @foo92.foo2
    fill_in "Foo3", with: @foo92.foo3
    check "Foo4" if @foo92.foo4
    fill_in "Foo5", with: @foo92.foo5
    click_on "Update Foo92"

    assert_text "Foo92 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo92" do
    visit foo92s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo92 was successfully destroyed"
  end
end
