require "application_system_test_case"

class Foo29sTest < ApplicationSystemTestCase
  setup do
    @foo29 = foo29s(:one)
  end

  test "visiting the index" do
    visit foo29s_url
    assert_selector "h1", text: "Foo29s"
  end

  test "creating a Foo29" do
    visit foo29s_url
    click_on "New Foo29"

    fill_in "Foo1", with: @foo29.foo1
    fill_in "Foo2", with: @foo29.foo2
    fill_in "Foo3", with: @foo29.foo3
    check "Foo4" if @foo29.foo4
    fill_in "Foo5", with: @foo29.foo5
    click_on "Create Foo29"

    assert_text "Foo29 was successfully created"
    click_on "Back"
  end

  test "updating a Foo29" do
    visit foo29s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo29.foo1
    fill_in "Foo2", with: @foo29.foo2
    fill_in "Foo3", with: @foo29.foo3
    check "Foo4" if @foo29.foo4
    fill_in "Foo5", with: @foo29.foo5
    click_on "Update Foo29"

    assert_text "Foo29 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo29" do
    visit foo29s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo29 was successfully destroyed"
  end
end
