require "application_system_test_case"

class Foo18sTest < ApplicationSystemTestCase
  setup do
    @foo18 = foo18s(:one)
  end

  test "visiting the index" do
    visit foo18s_url
    assert_selector "h1", text: "Foo18s"
  end

  test "creating a Foo18" do
    visit foo18s_url
    click_on "New Foo18"

    fill_in "Foo1", with: @foo18.foo1
    fill_in "Foo2", with: @foo18.foo2
    fill_in "Foo3", with: @foo18.foo3
    check "Foo4" if @foo18.foo4
    fill_in "Foo5", with: @foo18.foo5
    click_on "Create Foo18"

    assert_text "Foo18 was successfully created"
    click_on "Back"
  end

  test "updating a Foo18" do
    visit foo18s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo18.foo1
    fill_in "Foo2", with: @foo18.foo2
    fill_in "Foo3", with: @foo18.foo3
    check "Foo4" if @foo18.foo4
    fill_in "Foo5", with: @foo18.foo5
    click_on "Update Foo18"

    assert_text "Foo18 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo18" do
    visit foo18s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo18 was successfully destroyed"
  end
end
