require 'rails_helper'

RSpec.describe "bar57s/edit", type: :view do
  before(:each) do
    @bar57 = assign(:bar57, Bar57.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar57 form" do
    render

    assert_select "form[action=?][method=?]", bar57_path(@bar57), "post" do

      assert_select "input[name=?]", "bar57[foo1]"

      assert_select "input[name=?]", "bar57[foo2]"

      assert_select "input[name=?]", "bar57[foo3]"

      assert_select "input[name=?]", "bar57[foo4]"

      assert_select "textarea[name=?]", "bar57[foo5]"
    end
  end
end
