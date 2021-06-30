require 'rails_helper'

RSpec.describe "baz77s/new", type: :view do
  before(:each) do
    assign(:baz77, Baz77.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz77 form" do
    render

    assert_select "form[action=?][method=?]", baz77s_path, "post" do

      assert_select "input[name=?]", "baz77[foo1]"

      assert_select "input[name=?]", "baz77[foo2]"

      assert_select "input[name=?]", "baz77[foo3]"

      assert_select "input[name=?]", "baz77[foo4]"

      assert_select "textarea[name=?]", "baz77[foo5]"
    end
  end
end
