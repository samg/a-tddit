require "application_system_test_case"

class Foo93sTest < ApplicationSystemTestCase
  setup do
    @foo93 = foo93s(:one)
  end

  test "visiting the index" do
    visit foo93s_url
    assert_selector "h1", text: "Foo93s"
  end

  test "creating a Foo93" do
    visit foo93s_url
    click_on "New Foo93"

    fill_in "Foo1", with: @foo93.foo1
    fill_in "Foo2", with: @foo93.foo2
    fill_in "Foo3", with: @foo93.foo3
    check "Foo4" if @foo93.foo4
    fill_in "Foo5", with: @foo93.foo5
    click_on "Create Foo93"

    assert_text "Foo93 was successfully created"
    click_on "Back"
  end

  test "updating a Foo93" do
    visit foo93s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo93.foo1
    fill_in "Foo2", with: @foo93.foo2
    fill_in "Foo3", with: @foo93.foo3
    check "Foo4" if @foo93.foo4
    fill_in "Foo5", with: @foo93.foo5
    click_on "Update Foo93"

    assert_text "Foo93 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo93" do
    visit foo93s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo93 was successfully destroyed"
  end
end
