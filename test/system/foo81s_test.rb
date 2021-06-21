require "application_system_test_case"

class Foo81sTest < ApplicationSystemTestCase
  setup do
    @foo81 = foo81s(:one)
  end

  test "visiting the index" do
    visit foo81s_url
    assert_selector "h1", text: "Foo81s"
  end

  test "creating a Foo81" do
    visit foo81s_url
    click_on "New Foo81"

    fill_in "Foo1", with: @foo81.foo1
    fill_in "Foo2", with: @foo81.foo2
    fill_in "Foo3", with: @foo81.foo3
    check "Foo4" if @foo81.foo4
    fill_in "Foo5", with: @foo81.foo5
    click_on "Create Foo81"

    assert_text "Foo81 was successfully created"
    click_on "Back"
  end

  test "updating a Foo81" do
    visit foo81s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo81.foo1
    fill_in "Foo2", with: @foo81.foo2
    fill_in "Foo3", with: @foo81.foo3
    check "Foo4" if @foo81.foo4
    fill_in "Foo5", with: @foo81.foo5
    click_on "Update Foo81"

    assert_text "Foo81 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo81" do
    visit foo81s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo81 was successfully destroyed"
  end
end
