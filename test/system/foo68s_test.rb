require "application_system_test_case"

class Foo68sTest < ApplicationSystemTestCase
  setup do
    @foo68 = foo68s(:one)
  end

  test "visiting the index" do
    visit foo68s_url
    assert_selector "h1", text: "Foo68s"
  end

  test "creating a Foo68" do
    visit foo68s_url
    click_on "New Foo68"

    fill_in "Foo1", with: @foo68.foo1
    fill_in "Foo2", with: @foo68.foo2
    fill_in "Foo3", with: @foo68.foo3
    check "Foo4" if @foo68.foo4
    fill_in "Foo5", with: @foo68.foo5
    click_on "Create Foo68"

    assert_text "Foo68 was successfully created"
    click_on "Back"
  end

  test "updating a Foo68" do
    visit foo68s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo68.foo1
    fill_in "Foo2", with: @foo68.foo2
    fill_in "Foo3", with: @foo68.foo3
    check "Foo4" if @foo68.foo4
    fill_in "Foo5", with: @foo68.foo5
    click_on "Update Foo68"

    assert_text "Foo68 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo68" do
    visit foo68s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo68 was successfully destroyed"
  end
end
