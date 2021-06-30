require 'rails_helper'

RSpec.describe "baz73s/new", type: :view do
  before(:each) do
    assign(:baz73, Baz73.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz73 form" do
    render

    assert_select "form[action=?][method=?]", baz73s_path, "post" do

      assert_select "input[name=?]", "baz73[foo1]"

      assert_select "input[name=?]", "baz73[foo2]"

      assert_select "input[name=?]", "baz73[foo3]"

      assert_select "input[name=?]", "baz73[foo4]"

      assert_select "textarea[name=?]", "baz73[foo5]"
    end
  end
end
