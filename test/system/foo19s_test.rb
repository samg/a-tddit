require "application_system_test_case"

class Foo19sTest < ApplicationSystemTestCase
  setup do
    @foo19 = foo19s(:one)
  end

  test "visiting the index" do
    visit foo19s_url
    assert_selector "h1", text: "Foo19s"
  end

  test "creating a Foo19" do
    visit foo19s_url
    click_on "New Foo19"

    fill_in "Foo1", with: @foo19.foo1
    fill_in "Foo2", with: @foo19.foo2
    fill_in "Foo3", with: @foo19.foo3
    check "Foo4" if @foo19.foo4
    fill_in "Foo5", with: @foo19.foo5
    click_on "Create Foo19"

    assert_text "Foo19 was successfully created"
    click_on "Back"
  end

  test "updating a Foo19" do
    visit foo19s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo19.foo1
    fill_in "Foo2", with: @foo19.foo2
    fill_in "Foo3", with: @foo19.foo3
    check "Foo4" if @foo19.foo4
    fill_in "Foo5", with: @foo19.foo5
    click_on "Update Foo19"

    assert_text "Foo19 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo19" do
    visit foo19s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo19 was successfully destroyed"
  end
end
