require "application_system_test_case"

class Foo79sTest < ApplicationSystemTestCase
  setup do
    @foo79 = foo79s(:one)
  end

  test "visiting the index" do
    visit foo79s_url
    assert_selector "h1", text: "Foo79s"
  end

  test "creating a Foo79" do
    visit foo79s_url
    click_on "New Foo79"

    fill_in "Foo1", with: @foo79.foo1
    fill_in "Foo2", with: @foo79.foo2
    fill_in "Foo3", with: @foo79.foo3
    check "Foo4" if @foo79.foo4
    fill_in "Foo5", with: @foo79.foo5
    click_on "Create Foo79"

    assert_text "Foo79 was successfully created"
    click_on "Back"
  end

  test "updating a Foo79" do
    visit foo79s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo79.foo1
    fill_in "Foo2", with: @foo79.foo2
    fill_in "Foo3", with: @foo79.foo3
    check "Foo4" if @foo79.foo4
    fill_in "Foo5", with: @foo79.foo5
    click_on "Update Foo79"

    assert_text "Foo79 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo79" do
    visit foo79s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo79 was successfully destroyed"
  end
end
