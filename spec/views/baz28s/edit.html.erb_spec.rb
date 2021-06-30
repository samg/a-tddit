require 'rails_helper'

RSpec.describe "baz28s/edit", type: :view do
  before(:each) do
    @baz28 = assign(:baz28, Baz28.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz28 form" do
    render

    assert_select "form[action=?][method=?]", baz28_path(@baz28), "post" do

      assert_select "input[name=?]", "baz28[foo1]"

      assert_select "input[name=?]", "baz28[foo2]"

      assert_select "input[name=?]", "baz28[foo3]"

      assert_select "input[name=?]", "baz28[foo4]"

      assert_select "textarea[name=?]", "baz28[foo5]"
    end
  end
end
