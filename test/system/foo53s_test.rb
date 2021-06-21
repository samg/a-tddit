require "application_system_test_case"

class Foo53sTest < ApplicationSystemTestCase
  setup do
    @foo53 = foo53s(:one)
  end

  test "visiting the index" do
    visit foo53s_url
    assert_selector "h1", text: "Foo53s"
  end

  test "creating a Foo53" do
    visit foo53s_url
    click_on "New Foo53"

    fill_in "Foo1", with: @foo53.foo1
    fill_in "Foo2", with: @foo53.foo2
    fill_in "Foo3", with: @foo53.foo3
    check "Foo4" if @foo53.foo4
    fill_in "Foo5", with: @foo53.foo5
    click_on "Create Foo53"

    assert_text "Foo53 was successfully created"
    click_on "Back"
  end

  test "updating a Foo53" do
    visit foo53s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo53.foo1
    fill_in "Foo2", with: @foo53.foo2
    fill_in "Foo3", with: @foo53.foo3
    check "Foo4" if @foo53.foo4
    fill_in "Foo5", with: @foo53.foo5
    click_on "Update Foo53"

    assert_text "Foo53 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo53" do
    visit foo53s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo53 was successfully destroyed"
  end
end
