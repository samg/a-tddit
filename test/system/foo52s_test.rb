require "application_system_test_case"

class Foo52sTest < ApplicationSystemTestCase
  setup do
    @foo52 = foo52s(:one)
  end

  test "visiting the index" do
    visit foo52s_url
    assert_selector "h1", text: "Foo52s"
  end

  test "creating a Foo52" do
    visit foo52s_url
    click_on "New Foo52"

    fill_in "Foo1", with: @foo52.foo1
    fill_in "Foo2", with: @foo52.foo2
    fill_in "Foo3", with: @foo52.foo3
    check "Foo4" if @foo52.foo4
    fill_in "Foo5", with: @foo52.foo5
    click_on "Create Foo52"

    assert_text "Foo52 was successfully created"
    click_on "Back"
  end

  test "updating a Foo52" do
    visit foo52s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo52.foo1
    fill_in "Foo2", with: @foo52.foo2
    fill_in "Foo3", with: @foo52.foo3
    check "Foo4" if @foo52.foo4
    fill_in "Foo5", with: @foo52.foo5
    click_on "Update Foo52"

    assert_text "Foo52 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo52" do
    visit foo52s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo52 was successfully destroyed"
  end
end
