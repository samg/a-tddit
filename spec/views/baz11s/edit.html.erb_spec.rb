require 'rails_helper'

RSpec.describe "baz11s/edit", type: :view do
  before(:each) do
    @baz11 = assign(:baz11, Baz11.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz11 form" do
    render

    assert_select "form[action=?][method=?]", baz11_path(@baz11), "post" do

      assert_select "input[name=?]", "baz11[foo1]"

      assert_select "input[name=?]", "baz11[foo2]"

      assert_select "input[name=?]", "baz11[foo3]"

      assert_select "input[name=?]", "baz11[foo4]"

      assert_select "textarea[name=?]", "baz11[foo5]"
    end
  end
end
