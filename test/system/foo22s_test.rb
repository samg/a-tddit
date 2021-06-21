require "application_system_test_case"

class Foo22sTest < ApplicationSystemTestCase
  setup do
    @foo22 = foo22s(:one)
  end

  test "visiting the index" do
    visit foo22s_url
    assert_selector "h1", text: "Foo22s"
  end

  test "creating a Foo22" do
    visit foo22s_url
    click_on "New Foo22"

    fill_in "Foo1", with: @foo22.foo1
    fill_in "Foo2", with: @foo22.foo2
    fill_in "Foo3", with: @foo22.foo3
    check "Foo4" if @foo22.foo4
    fill_in "Foo5", with: @foo22.foo5
    click_on "Create Foo22"

    assert_text "Foo22 was successfully created"
    click_on "Back"
  end

  test "updating a Foo22" do
    visit foo22s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo22.foo1
    fill_in "Foo2", with: @foo22.foo2
    fill_in "Foo3", with: @foo22.foo3
    check "Foo4" if @foo22.foo4
    fill_in "Foo5", with: @foo22.foo5
    click_on "Update Foo22"

    assert_text "Foo22 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo22" do
    visit foo22s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo22 was successfully destroyed"
  end
end
