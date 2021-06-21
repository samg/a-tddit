require "application_system_test_case"

class Foo62sTest < ApplicationSystemTestCase
  setup do
    @foo62 = foo62s(:one)
  end

  test "visiting the index" do
    visit foo62s_url
    assert_selector "h1", text: "Foo62s"
  end

  test "creating a Foo62" do
    visit foo62s_url
    click_on "New Foo62"

    fill_in "Foo1", with: @foo62.foo1
    fill_in "Foo2", with: @foo62.foo2
    fill_in "Foo3", with: @foo62.foo3
    check "Foo4" if @foo62.foo4
    fill_in "Foo5", with: @foo62.foo5
    click_on "Create Foo62"

    assert_text "Foo62 was successfully created"
    click_on "Back"
  end

  test "updating a Foo62" do
    visit foo62s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo62.foo1
    fill_in "Foo2", with: @foo62.foo2
    fill_in "Foo3", with: @foo62.foo3
    check "Foo4" if @foo62.foo4
    fill_in "Foo5", with: @foo62.foo5
    click_on "Update Foo62"

    assert_text "Foo62 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo62" do
    visit foo62s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo62 was successfully destroyed"
  end
end
