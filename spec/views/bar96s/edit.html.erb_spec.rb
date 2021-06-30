require 'rails_helper'

RSpec.describe "bar96s/edit", type: :view do
  before(:each) do
    @bar96 = assign(:bar96, Bar96.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar96 form" do
    render

    assert_select "form[action=?][method=?]", bar96_path(@bar96), "post" do

      assert_select "input[name=?]", "bar96[foo1]"

      assert_select "input[name=?]", "bar96[foo2]"

      assert_select "input[name=?]", "bar96[foo3]"

      assert_select "input[name=?]", "bar96[foo4]"

      assert_select "textarea[name=?]", "bar96[foo5]"
    end
  end
end
