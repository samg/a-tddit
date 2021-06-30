require 'rails_helper'

RSpec.describe "bar52s/new", type: :view do
  before(:each) do
    assign(:bar52, Bar52.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar52 form" do
    render

    assert_select "form[action=?][method=?]", bar52s_path, "post" do

      assert_select "input[name=?]", "bar52[foo1]"

      assert_select "input[name=?]", "bar52[foo2]"

      assert_select "input[name=?]", "bar52[foo3]"

      assert_select "input[name=?]", "bar52[foo4]"

      assert_select "textarea[name=?]", "bar52[foo5]"
    end
  end
end
