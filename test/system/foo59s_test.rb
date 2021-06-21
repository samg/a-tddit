require "application_system_test_case"

class Foo59sTest < ApplicationSystemTestCase
  setup do
    @foo59 = foo59s(:one)
  end

  test "visiting the index" do
    visit foo59s_url
    assert_selector "h1", text: "Foo59s"
  end

  test "creating a Foo59" do
    visit foo59s_url
    click_on "New Foo59"

    fill_in "Foo1", with: @foo59.foo1
    fill_in "Foo2", with: @foo59.foo2
    fill_in "Foo3", with: @foo59.foo3
    check "Foo4" if @foo59.foo4
    fill_in "Foo5", with: @foo59.foo5
    click_on "Create Foo59"

    assert_text "Foo59 was successfully created"
    click_on "Back"
  end

  test "updating a Foo59" do
    visit foo59s_url
    click_on "Edit", match: :first

    fill_in "Foo1", with: @foo59.foo1
    fill_in "Foo2", with: @foo59.foo2
    fill_in "Foo3", with: @foo59.foo3
    check "Foo4" if @foo59.foo4
    fill_in "Foo5", with: @foo59.foo5
    click_on "Update Foo59"

    assert_text "Foo59 was successfully updated"
    click_on "Back"
  end

  test "destroying a Foo59" do
    visit foo59s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foo59 was successfully destroyed"
  end
end
