require 'rails_helper'

RSpec.describe "baz22s/new", type: :view do
  before(:each) do
    assign(:baz22, Baz22.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz22 form" do
    render

    assert_select "form[action=?][method=?]", baz22s_path, "post" do

      assert_select "input[name=?]", "baz22[foo1]"

      assert_select "input[name=?]", "baz22[foo2]"

      assert_select "input[name=?]", "baz22[foo3]"

      assert_select "input[name=?]", "baz22[foo4]"

      assert_select "textarea[name=?]", "baz22[foo5]"
    end
  end
end
