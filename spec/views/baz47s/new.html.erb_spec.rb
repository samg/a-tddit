require 'rails_helper'

RSpec.describe "baz47s/new", type: :view do
  before(:each) do
    assign(:baz47, Baz47.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz47 form" do
    render

    assert_select "form[action=?][method=?]", baz47s_path, "post" do

      assert_select "input[name=?]", "baz47[foo1]"

      assert_select "input[name=?]", "baz47[foo2]"

      assert_select "input[name=?]", "baz47[foo3]"

      assert_select "input[name=?]", "baz47[foo4]"

      assert_select "textarea[name=?]", "baz47[foo5]"
    end
  end
end
