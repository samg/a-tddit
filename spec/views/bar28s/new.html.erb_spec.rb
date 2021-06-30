require 'rails_helper'

RSpec.describe "bar28s/new", type: :view do
  before(:each) do
    assign(:bar28, Bar28.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar28 form" do
    render

    assert_select "form[action=?][method=?]", bar28s_path, "post" do

      assert_select "input[name=?]", "bar28[foo1]"

      assert_select "input[name=?]", "bar28[foo2]"

      assert_select "input[name=?]", "bar28[foo3]"

      assert_select "input[name=?]", "bar28[foo4]"

      assert_select "textarea[name=?]", "bar28[foo5]"
    end
  end
end
