require 'rails_helper'

RSpec.describe "baz82s/new", type: :view do
  before(:each) do
    assign(:baz82, Baz82.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz82 form" do
    render

    assert_select "form[action=?][method=?]", baz82s_path, "post" do

      assert_select "input[name=?]", "baz82[foo1]"

      assert_select "input[name=?]", "baz82[foo2]"

      assert_select "input[name=?]", "baz82[foo3]"

      assert_select "input[name=?]", "baz82[foo4]"

      assert_select "textarea[name=?]", "baz82[foo5]"
    end
  end
end
