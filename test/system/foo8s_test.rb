require "application_system_test_case"

class Foo8sTest < ApplicationSystemTestCase
  setup do
    @foo8 = foo8s(:one)
  end

  test "visiting the index" do
    visit foo8s_url
    assert_selector "h1", text: "Foo8s"
  end

  test "creating a Foo8" do
    visit foo8s_url
    click_on "New Foo8"

    fill_in "Foo1", with: @foo8.foo1
    fill_in "Foo2", with: @foo8.foo2
    fill_in "Foo3", with: @foo8.foo3
    check "Foo4" if @foo8.foo4
    fill_in "Foo5", with: @foo8.foo5
    click_on "Create Foo8"

    assert_text "Foo8 was successfully created"
    click_on "Back"
  end

  test "updating a Foo8" do
    visit foo8s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo8.foo1
    fill_in "Foo2", with: @foo8.foo2
    fill_in "Foo3", with: @foo8.foo3
    check "Foo4" if @foo8.foo4
    fill_in "Foo5", with: @foo8.foo5
    click_on "Update Foo8"

    assert_text "Foo8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo8" do
    visit foo8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo8 was successfully destroyed"
  end
end
