require 'rails_helper'

RSpec.describe "baz69s/edit", type: :view do
  before(:each) do
    @baz69 = assign(:baz69, Baz69.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz69 form" do
    render

    assert_select "form[action=?][method=?]", baz69_path(@baz69), "post" do

      assert_select "input[name=?]", "baz69[foo1]"

      assert_select "input[name=?]", "baz69[foo2]"

      assert_select "input[name=?]", "baz69[foo3]"

      assert_select "input[name=?]", "baz69[foo4]"

      assert_select "textarea[name=?]", "baz69[foo5]"
    end
  end
end
