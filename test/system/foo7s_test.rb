require "application_system_test_case"

class Foo7sTest < ApplicationSystemTestCase
  setup do
    @foo7 = foo7s(:one)
  end

  test "visiting the index" do
    visit foo7s_url
    assert_selector "h1", text: "Foo7s"
  end

  test "creating a Foo7" do
    visit foo7s_url
    click_on "New Foo7"

    fill_in "Foo1", with: @foo7.foo1
    fill_in "Foo2", with: @foo7.foo2
    fill_in "Foo3", with: @foo7.foo3
    check "Foo4" if @foo7.foo4
    fill_in "Foo5", with: @foo7.foo5
    click_on "Create Foo7"

    assert_text "Foo7 was successfully created"
    click_on "Back"
  end

  test "updating a Foo7" do
    visit foo7s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo7.foo1
    fill_in "Foo2", with: @foo7.foo2
    fill_in "Foo3", with: @foo7.foo3
    check "Foo4" if @foo7.foo4
    fill_in "Foo5", with: @foo7.foo5
    click_on "Update Foo7"

    assert_text "Foo7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo7" do
    visit foo7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo7 was successfully destroyed"
  end
end
