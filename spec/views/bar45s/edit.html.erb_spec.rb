require 'rails_helper'

RSpec.describe "bar45s/edit", type: :view do
  before(:each) do
    @bar45 = assign(:bar45, Bar45.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar45 form" do
    render

    assert_select "form[action=?][method=?]", bar45_path(@bar45), "post" do

      assert_select "input[name=?]", "bar45[foo1]"

      assert_select "input[name=?]", "bar45[foo2]"

      assert_select "input[name=?]", "bar45[foo3]"

      assert_select "input[name=?]", "bar45[foo4]"

      assert_select "textarea[name=?]", "bar45[foo5]"
    end
  end
end
