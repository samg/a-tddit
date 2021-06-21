require "application_system_test_case"

class Foo77sTest < ApplicationSystemTestCase
  setup do
    @foo77 = foo77s(:one)
  end

  test "visiting the index" do
    visit foo77s_url
    assert_selector "h1", text: "Foo77s"
  end

  test "creating a Foo77" do
    visit foo77s_url
    click_on "New Foo77"

    fill_in "Foo1", with: @foo77.foo1
    fill_in "Foo2", with: @foo77.foo2
    fill_in "Foo3", with: @foo77.foo3
    check "Foo4" if @foo77.foo4
    fill_in "Foo5", with: @foo77.foo5
    click_on "Create Foo77"

    assert_text "Foo77 was successfully created"
    click_on "Back"
  end

  test "updating a Foo77" do
    visit foo77s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo77.foo1
    fill_in "Foo2", with: @foo77.foo2
    fill_in "Foo3", with: @foo77.foo3
    check "Foo4" if @foo77.foo4
    fill_in "Foo5", with: @foo77.foo5
    click_on "Update Foo77"

    assert_text "Foo77 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo77" do
    visit foo77s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo77 was successfully destroyed"
  end
end
