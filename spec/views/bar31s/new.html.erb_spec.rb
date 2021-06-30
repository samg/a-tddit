require 'rails_helper'

RSpec.describe "bar31s/new", type: :view do
  before(:each) do
    assign(:bar31, Bar31.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar31 form" do
    render

    assert_select "form[action=?][method=?]", bar31s_path, "post" do

      assert_select "input[name=?]", "bar31[foo1]"

      assert_select "input[name=?]", "bar31[foo2]"

      assert_select "input[name=?]", "bar31[foo3]"

      assert_select "input[name=?]", "bar31[foo4]"

      assert_select "textarea[name=?]", "bar31[foo5]"
    end
  end
end
