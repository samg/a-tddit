require 'rails_helper'

RSpec.describe "bar95s/new", type: :view do
  before(:each) do
    assign(:bar95, Bar95.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar95 form" do
    render

    assert_select "form[action=?][method=?]", bar95s_path, "post" do

      assert_select "input[name=?]", "bar95[foo1]"

      assert_select "input[name=?]", "bar95[foo2]"

      assert_select "input[name=?]", "bar95[foo3]"

      assert_select "input[name=?]", "bar95[foo4]"

      assert_select "textarea[name=?]", "bar95[foo5]"
    end
  end
end
