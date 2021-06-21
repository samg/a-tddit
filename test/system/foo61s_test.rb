require "application_system_test_case"

class Foo61sTest < ApplicationSystemTestCase
  setup do
    @foo61 = foo61s(:one)
  end

  test "visiting the index" do
    visit foo61s_url
    assert_selector "h1", text: "Foo61s"
  end

  test "creating a Foo61" do
    visit foo61s_url
    click_on "New Foo61"

    fill_in "Foo1", with: @foo61.foo1
    fill_in "Foo2", with: @foo61.foo2
    fill_in "Foo3", with: @foo61.foo3
    check "Foo4" if @foo61.foo4
    fill_in "Foo5", with: @foo61.foo5
    click_on "Create Foo61"

    assert_text "Foo61 was successfully created"
    click_on "Back"
  end

  test "updating a Foo61" do
    visit foo61s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo61.foo1
    fill_in "Foo2", with: @foo61.foo2
    fill_in "Foo3", with: @foo61.foo3
    check "Foo4" if @foo61.foo4
    fill_in "Foo5", with: @foo61.foo5
    click_on "Update Foo61"

    assert_text "Foo61 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo61" do
    visit foo61s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo61 was successfully destroyed"
  end
end
