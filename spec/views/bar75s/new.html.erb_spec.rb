require 'rails_helper'

RSpec.describe "bar75s/new", type: :view do
  before(:each) do
    assign(:bar75, Bar75.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar75 form" do
    render

    assert_select "form[action=?][method=?]", bar75s_path, "post" do

      assert_select "input[name=?]", "bar75[foo1]"

      assert_select "input[name=?]", "bar75[foo2]"

      assert_select "input[name=?]", "bar75[foo3]"

      assert_select "input[name=?]", "bar75[foo4]"

      assert_select "textarea[name=?]", "bar75[foo5]"
    end
  end
end
