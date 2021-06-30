require 'rails_helper'

RSpec.describe "bar52s/edit", type: :view do
  before(:each) do
    @bar52 = assign(:bar52, Bar52.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar52 form" do
    render

    assert_select "form[action=?][method=?]", bar52_path(@bar52), "post" do

      assert_select "input[name=?]", "bar52[foo1]"

      assert_select "input[name=?]", "bar52[foo2]"

      assert_select "input[name=?]", "bar52[foo3]"

      assert_select "input[name=?]", "bar52[foo4]"

      assert_select "textarea[name=?]", "bar52[foo5]"
    end
  end
end
