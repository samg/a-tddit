require 'rails_helper'

RSpec.describe "baz53s/edit", type: :view do
  before(:each) do
    @baz53 = assign(:baz53, Baz53.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz53 form" do
    render

    assert_select "form[action=?][method=?]", baz53_path(@baz53), "post" do

      assert_select "input[name=?]", "baz53[foo1]"

      assert_select "input[name=?]", "baz53[foo2]"

      assert_select "input[name=?]", "baz53[foo3]"

      assert_select "input[name=?]", "baz53[foo4]"

      assert_select "textarea[name=?]", "baz53[foo5]"
    end
  end
end
