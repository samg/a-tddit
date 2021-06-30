require 'rails_helper'

RSpec.describe "bar72s/new", type: :view do
  before(:each) do
    assign(:bar72, Bar72.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar72 form" do
    render

    assert_select "form[action=?][method=?]", bar72s_path, "post" do

      assert_select "input[name=?]", "bar72[foo1]"

      assert_select "input[name=?]", "bar72[foo2]"

      assert_select "input[name=?]", "bar72[foo3]"

      assert_select "input[name=?]", "bar72[foo4]"

      assert_select "textarea[name=?]", "bar72[foo5]"
    end
  end
end
