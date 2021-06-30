require 'rails_helper'

RSpec.describe "baz63s/new", type: :view do
  before(:each) do
    assign(:baz63, Baz63.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz63 form" do
    render

    assert_select "form[action=?][method=?]", baz63s_path, "post" do

      assert_select "input[name=?]", "baz63[foo1]"

      assert_select "input[name=?]", "baz63[foo2]"

      assert_select "input[name=?]", "baz63[foo3]"

      assert_select "input[name=?]", "baz63[foo4]"

      assert_select "textarea[name=?]", "baz63[foo5]"
    end
  end
end
