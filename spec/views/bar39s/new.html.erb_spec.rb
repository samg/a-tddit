require 'rails_helper'

RSpec.describe "bar39s/new", type: :view do
  before(:each) do
    assign(:bar39, Bar39.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar39 form" do
    render

    assert_select "form[action=?][method=?]", bar39s_path, "post" do

      assert_select "input[name=?]", "bar39[foo1]"

      assert_select "input[name=?]", "bar39[foo2]"

      assert_select "input[name=?]", "bar39[foo3]"

      assert_select "input[name=?]", "bar39[foo4]"

      assert_select "textarea[name=?]", "bar39[foo5]"
    end
  end
end
