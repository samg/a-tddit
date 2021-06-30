require 'rails_helper'

RSpec.describe "bar80s/new", type: :view do
  before(:each) do
    assign(:bar80, Bar80.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar80 form" do
    render

    assert_select "form[action=?][method=?]", bar80s_path, "post" do

      assert_select "input[name=?]", "bar80[foo1]"

      assert_select "input[name=?]", "bar80[foo2]"

      assert_select "input[name=?]", "bar80[foo3]"

      assert_select "input[name=?]", "bar80[foo4]"

      assert_select "textarea[name=?]", "bar80[foo5]"
    end
  end
end
