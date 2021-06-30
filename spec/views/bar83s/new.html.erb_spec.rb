require 'rails_helper'

RSpec.describe "bar83s/new", type: :view do
  before(:each) do
    assign(:bar83, Bar83.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar83 form" do
    render

    assert_select "form[action=?][method=?]", bar83s_path, "post" do

      assert_select "input[name=?]", "bar83[foo1]"

      assert_select "input[name=?]", "bar83[foo2]"

      assert_select "input[name=?]", "bar83[foo3]"

      assert_select "input[name=?]", "bar83[foo4]"

      assert_select "textarea[name=?]", "bar83[foo5]"
    end
  end
end
