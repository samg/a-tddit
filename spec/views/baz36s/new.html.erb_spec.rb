require 'rails_helper'

RSpec.describe "baz36s/new", type: :view do
  before(:each) do
    assign(:baz36, Baz36.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz36 form" do
    render

    assert_select "form[action=?][method=?]", baz36s_path, "post" do

      assert_select "input[name=?]", "baz36[foo1]"

      assert_select "input[name=?]", "baz36[foo2]"

      assert_select "input[name=?]", "baz36[foo3]"

      assert_select "input[name=?]", "baz36[foo4]"

      assert_select "textarea[name=?]", "baz36[foo5]"
    end
  end
end
