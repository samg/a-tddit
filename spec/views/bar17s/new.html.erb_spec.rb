require 'rails_helper'

RSpec.describe "bar17s/new", type: :view do
  before(:each) do
    assign(:bar17, Bar17.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar17 form" do
    render

    assert_select "form[action=?][method=?]", bar17s_path, "post" do

      assert_select "input[name=?]", "bar17[foo1]"

      assert_select "input[name=?]", "bar17[foo2]"

      assert_select "input[name=?]", "bar17[foo3]"

      assert_select "input[name=?]", "bar17[foo4]"

      assert_select "textarea[name=?]", "bar17[foo5]"
    end
  end
end
