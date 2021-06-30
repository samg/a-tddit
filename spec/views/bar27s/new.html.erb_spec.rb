require 'rails_helper'

RSpec.describe "bar27s/new", type: :view do
  before(:each) do
    assign(:bar27, Bar27.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar27 form" do
    render

    assert_select "form[action=?][method=?]", bar27s_path, "post" do

      assert_select "input[name=?]", "bar27[foo1]"

      assert_select "input[name=?]", "bar27[foo2]"

      assert_select "input[name=?]", "bar27[foo3]"

      assert_select "input[name=?]", "bar27[foo4]"

      assert_select "textarea[name=?]", "bar27[foo5]"
    end
  end
end
