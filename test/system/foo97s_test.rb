require "application_system_test_case"

class Foo97sTest < ApplicationSystemTestCase
  setup do
    @foo97 = foo97s(:one)
  end

  test "visiting the index" do
    visit foo97s_url
    assert_selector "h1", text: "Foo97s"
  end

  test "creating a Foo97" do
    visit foo97s_url
    click_on "New Foo97"

    fill_in "Foo1", with: @foo97.foo1
    fill_in "Foo2", with: @foo97.foo2
    fill_in "Foo3", with: @foo97.foo3
    check "Foo4" if @foo97.foo4
    fill_in "Foo5", with: @foo97.foo5
    click_on "Create Foo97"

    assert_text "Foo97 was successfully created"
    click_on "Back"
  end

  test "updating a Foo97" do
    visit foo97s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo97.foo1
    fill_in "Foo2", with: @foo97.foo2
    fill_in "Foo3", with: @foo97.foo3
    check "Foo4" if @foo97.foo4
    fill_in "Foo5", with: @foo97.foo5
    click_on "Update Foo97"

    assert_text "Foo97 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo97" do
    visit foo97s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo97 was successfully destroyed"
  end
end
