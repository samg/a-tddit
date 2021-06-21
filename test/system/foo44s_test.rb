require "application_system_test_case"

class Foo44sTest < ApplicationSystemTestCase
  setup do
    @foo44 = foo44s(:one)
  end

  test "visiting the index" do
    visit foo44s_url
    assert_selector "h1", text: "Foo44s"
  end

  test "creating a Foo44" do
    visit foo44s_url
    click_on "New Foo44"

    fill_in "Foo1", with: @foo44.foo1
    fill_in "Foo2", with: @foo44.foo2
    fill_in "Foo3", with: @foo44.foo3
    check "Foo4" if @foo44.foo4
    fill_in "Foo5", with: @foo44.foo5
    click_on "Create Foo44"

    assert_text "Foo44 was successfully created"
    click_on "Back"
  end

  test "updating a Foo44" do
    visit foo44s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo44.foo1
    fill_in "Foo2", with: @foo44.foo2
    fill_in "Foo3", with: @foo44.foo3
    check "Foo4" if @foo44.foo4
    fill_in "Foo5", with: @foo44.foo5
    click_on "Update Foo44"

    assert_text "Foo44 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo44" do
    visit foo44s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo44 was successfully destroyed"
  end
end
