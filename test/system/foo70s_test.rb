require "application_system_test_case"

class Foo70sTest < ApplicationSystemTestCase
  setup do
    @foo70 = foo70s(:one)
  end

  test "visiting the index" do
    visit foo70s_url
    assert_selector "h1", text: "Foo70s"
  end

  test "creating a Foo70" do
    visit foo70s_url
    click_on "New Foo70"

    fill_in "Foo1", with: @foo70.foo1
    fill_in "Foo2", with: @foo70.foo2
    fill_in "Foo3", with: @foo70.foo3
    check "Foo4" if @foo70.foo4
    fill_in "Foo5", with: @foo70.foo5
    click_on "Create Foo70"

    assert_text "Foo70 was successfully created"
    click_on "Back"
  end

  test "updating a Foo70" do
    visit foo70s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo70.foo1
    fill_in "Foo2", with: @foo70.foo2
    fill_in "Foo3", with: @foo70.foo3
    check "Foo4" if @foo70.foo4
    fill_in "Foo5", with: @foo70.foo5
    click_on "Update Foo70"

    assert_text "Foo70 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo70" do
    visit foo70s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo70 was successfully destroyed"
  end
end
