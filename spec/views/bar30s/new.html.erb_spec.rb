require 'rails_helper'

RSpec.describe "bar30s/new", type: :view do
  before(:each) do
    assign(:bar30, Bar30.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar30 form" do
    render

    assert_select "form[action=?][method=?]", bar30s_path, "post" do

      assert_select "input[name=?]", "bar30[foo1]"

      assert_select "input[name=?]", "bar30[foo2]"

      assert_select "input[name=?]", "bar30[foo3]"

      assert_select "input[name=?]", "bar30[foo4]"

      assert_select "textarea[name=?]", "bar30[foo5]"
    end
  end
end
