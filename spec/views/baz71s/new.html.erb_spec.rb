require 'rails_helper'

RSpec.describe "baz71s/new", type: :view do
  before(:each) do
    assign(:baz71, Baz71.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz71 form" do
    render

    assert_select "form[action=?][method=?]", baz71s_path, "post" do

      assert_select "input[name=?]", "baz71[foo1]"

      assert_select "input[name=?]", "baz71[foo2]"

      assert_select "input[name=?]", "baz71[foo3]"

      assert_select "input[name=?]", "baz71[foo4]"

      assert_select "textarea[name=?]", "baz71[foo5]"
    end
  end
end
