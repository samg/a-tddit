require 'rails_helper'

RSpec.describe "baz5s/edit", type: :view do
  before(:each) do
    @baz5 = assign(:baz5, Baz5.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz5 form" do
    render

    assert_select "form[action=?][method=?]", baz5_path(@baz5), "post" do

      assert_select "input[name=?]", "baz5[foo1]"

      assert_select "input[name=?]", "baz5[foo2]"

      assert_select "input[name=?]", "baz5[foo3]"

      assert_select "input[name=?]", "baz5[foo4]"

      assert_select "textarea[name=?]", "baz5[foo5]"
    end
  end
end
