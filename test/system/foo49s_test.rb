require "application_system_test_case"

class Foo49sTest < ApplicationSystemTestCase
  setup do
    @foo49 = foo49s(:one)
  end

  test "visiting the index" do
    visit foo49s_url
    assert_selector "h1", text: "Foo49s"
  end

  test "creating a Foo49" do
    visit foo49s_url
    click_on "New Foo49"

    fill_in "Foo1", with: @foo49.foo1
    fill_in "Foo2", with: @foo49.foo2
    fill_in "Foo3", with: @foo49.foo3
    check "Foo4" if @foo49.foo4
    fill_in "Foo5", with: @foo49.foo5
    click_on "Create Foo49"

    assert_text "Foo49 was successfully created"
    click_on "Back"
  end

  test "updating a Foo49" do
    visit foo49s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo49.foo1
    fill_in "Foo2", with: @foo49.foo2
    fill_in "Foo3", with: @foo49.foo3
    check "Foo4" if @foo49.foo4
    fill_in "Foo5", with: @foo49.foo5
    click_on "Update Foo49"

    assert_text "Foo49 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo49" do
    visit foo49s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo49 was successfully destroyed"
  end
end
