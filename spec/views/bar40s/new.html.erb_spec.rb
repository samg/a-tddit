require 'rails_helper'

RSpec.describe "bar40s/new", type: :view do
  before(:each) do
    assign(:bar40, Bar40.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar40 form" do
    render

    assert_select "form[action=?][method=?]", bar40s_path, "post" do

      assert_select "input[name=?]", "bar40[foo1]"

      assert_select "input[name=?]", "bar40[foo2]"

      assert_select "input[name=?]", "bar40[foo3]"

      assert_select "input[name=?]", "bar40[foo4]"

      assert_select "textarea[name=?]", "bar40[foo5]"
    end
  end
end
