require "application_system_test_case"

class Foo37sTest < ApplicationSystemTestCase
  setup do
    @foo37 = foo37s(:one)
  end

  test "visiting the index" do
    visit foo37s_url
    assert_selector "h1", text: "Foo37s"
  end

  test "creating a Foo37" do
    visit foo37s_url
    click_on "New Foo37"

    fill_in "Foo1", with: @foo37.foo1
    fill_in "Foo2", with: @foo37.foo2
    fill_in "Foo3", with: @foo37.foo3
    check "Foo4" if @foo37.foo4
    fill_in "Foo5", with: @foo37.foo5
    click_on "Create Foo37"

    assert_text "Foo37 was successfully created"
    click_on "Back"
  end

  test "updating a Foo37" do
    visit foo37s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo37.foo1
    fill_in "Foo2", with: @foo37.foo2
    fill_in "Foo3", with: @foo37.foo3
    check "Foo4" if @foo37.foo4
    fill_in "Foo5", with: @foo37.foo5
    click_on "Update Foo37"

    assert_text "Foo37 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo37" do
    visit foo37s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo37 was successfully destroyed"
  end
end
