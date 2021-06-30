require 'rails_helper'

RSpec.describe "baz68s/new", type: :view do
  before(:each) do
    assign(:baz68, Baz68.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz68 form" do
    render

    assert_select "form[action=?][method=?]", baz68s_path, "post" do

      assert_select "input[name=?]", "baz68[foo1]"

      assert_select "input[name=?]", "baz68[foo2]"

      assert_select "input[name=?]", "baz68[foo3]"

      assert_select "input[name=?]", "baz68[foo4]"

      assert_select "textarea[name=?]", "baz68[foo5]"
    end
  end
end
