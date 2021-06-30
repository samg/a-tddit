require 'rails_helper'

RSpec.describe "baz76s/new", type: :view do
  before(:each) do
    assign(:baz76, Baz76.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz76 form" do
    render

    assert_select "form[action=?][method=?]", baz76s_path, "post" do

      assert_select "input[name=?]", "baz76[foo1]"

      assert_select "input[name=?]", "baz76[foo2]"

      assert_select "input[name=?]", "baz76[foo3]"

      assert_select "input[name=?]", "baz76[foo4]"

      assert_select "textarea[name=?]", "baz76[foo5]"
    end
  end
end
