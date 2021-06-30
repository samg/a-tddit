require 'rails_helper'

RSpec.describe "bar22s/edit", type: :view do
  before(:each) do
    @bar22 = assign(:bar22, Bar22.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar22 form" do
    render

    assert_select "form[action=?][method=?]", bar22_path(@bar22), "post" do

      assert_select "input[name=?]", "bar22[foo1]"

      assert_select "input[name=?]", "bar22[foo2]"

      assert_select "input[name=?]", "bar22[foo3]"

      assert_select "input[name=?]", "bar22[foo4]"

      assert_select "textarea[name=?]", "bar22[foo5]"
    end
  end
end
