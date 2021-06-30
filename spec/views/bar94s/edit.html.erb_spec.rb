require 'rails_helper'

RSpec.describe "bar94s/edit", type: :view do
  before(:each) do
    @bar94 = assign(:bar94, Bar94.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar94 form" do
    render

    assert_select "form[action=?][method=?]", bar94_path(@bar94), "post" do

      assert_select "input[name=?]", "bar94[foo1]"

      assert_select "input[name=?]", "bar94[foo2]"

      assert_select "input[name=?]", "bar94[foo3]"

      assert_select "input[name=?]", "bar94[foo4]"

      assert_select "textarea[name=?]", "bar94[foo5]"
    end
  end
end
