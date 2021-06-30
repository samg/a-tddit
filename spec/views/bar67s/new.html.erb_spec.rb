require 'rails_helper'

RSpec.describe "bar67s/new", type: :view do
  before(:each) do
    assign(:bar67, Bar67.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar67 form" do
    render

    assert_select "form[action=?][method=?]", bar67s_path, "post" do

      assert_select "input[name=?]", "bar67[foo1]"

      assert_select "input[name=?]", "bar67[foo2]"

      assert_select "input[name=?]", "bar67[foo3]"

      assert_select "input[name=?]", "bar67[foo4]"

      assert_select "textarea[name=?]", "bar67[foo5]"
    end
  end
end
