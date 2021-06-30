require 'rails_helper'

RSpec.describe "baz18s/new", type: :view do
  before(:each) do
    assign(:baz18, Baz18.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz18 form" do
    render

    assert_select "form[action=?][method=?]", baz18s_path, "post" do

      assert_select "input[name=?]", "baz18[foo1]"

      assert_select "input[name=?]", "baz18[foo2]"

      assert_select "input[name=?]", "baz18[foo3]"

      assert_select "input[name=?]", "baz18[foo4]"

      assert_select "textarea[name=?]", "baz18[foo5]"
    end
  end
end
