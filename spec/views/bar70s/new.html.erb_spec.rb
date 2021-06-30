require 'rails_helper'

RSpec.describe "bar70s/new", type: :view do
  before(:each) do
    assign(:bar70, Bar70.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar70 form" do
    render

    assert_select "form[action=?][method=?]", bar70s_path, "post" do

      assert_select "input[name=?]", "bar70[foo1]"

      assert_select "input[name=?]", "bar70[foo2]"

      assert_select "input[name=?]", "bar70[foo3]"

      assert_select "input[name=?]", "bar70[foo4]"

      assert_select "textarea[name=?]", "bar70[foo5]"
    end
  end
end
