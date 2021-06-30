require 'rails_helper'

RSpec.describe "baz69s/new", type: :view do
  before(:each) do
    assign(:baz69, Baz69.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz69 form" do
    render

    assert_select "form[action=?][method=?]", baz69s_path, "post" do

      assert_select "input[name=?]", "baz69[foo1]"

      assert_select "input[name=?]", "baz69[foo2]"

      assert_select "input[name=?]", "baz69[foo3]"

      assert_select "input[name=?]", "baz69[foo4]"

      assert_select "textarea[name=?]", "baz69[foo5]"
    end
  end
end
