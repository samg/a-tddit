require 'rails_helper'

RSpec.describe "bar54s/new", type: :view do
  before(:each) do
    assign(:bar54, Bar54.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar54 form" do
    render

    assert_select "form[action=?][method=?]", bar54s_path, "post" do

      assert_select "input[name=?]", "bar54[foo1]"

      assert_select "input[name=?]", "bar54[foo2]"

      assert_select "input[name=?]", "bar54[foo3]"

      assert_select "input[name=?]", "bar54[foo4]"

      assert_select "textarea[name=?]", "bar54[foo5]"
    end
  end
end
