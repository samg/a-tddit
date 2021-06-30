require 'rails_helper'

RSpec.describe "baz66s/new", type: :view do
  before(:each) do
    assign(:baz66, Baz66.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz66 form" do
    render

    assert_select "form[action=?][method=?]", baz66s_path, "post" do

      assert_select "input[name=?]", "baz66[foo1]"

      assert_select "input[name=?]", "baz66[foo2]"

      assert_select "input[name=?]", "baz66[foo3]"

      assert_select "input[name=?]", "baz66[foo4]"

      assert_select "textarea[name=?]", "baz66[foo5]"
    end
  end
end
