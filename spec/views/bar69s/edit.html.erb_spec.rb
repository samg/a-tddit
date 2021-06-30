require 'rails_helper'

RSpec.describe "bar69s/edit", type: :view do
  before(:each) do
    @bar69 = assign(:bar69, Bar69.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar69 form" do
    render

    assert_select "form[action=?][method=?]", bar69_path(@bar69), "post" do

      assert_select "input[name=?]", "bar69[foo1]"

      assert_select "input[name=?]", "bar69[foo2]"

      assert_select "input[name=?]", "bar69[foo3]"

      assert_select "input[name=?]", "bar69[foo4]"

      assert_select "textarea[name=?]", "bar69[foo5]"
    end
  end
end
