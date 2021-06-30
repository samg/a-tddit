require 'rails_helper'

RSpec.describe "bar59s/edit", type: :view do
  before(:each) do
    @bar59 = assign(:bar59, Bar59.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar59 form" do
    render

    assert_select "form[action=?][method=?]", bar59_path(@bar59), "post" do

      assert_select "input[name=?]", "bar59[foo1]"

      assert_select "input[name=?]", "bar59[foo2]"

      assert_select "input[name=?]", "bar59[foo3]"

      assert_select "input[name=?]", "bar59[foo4]"

      assert_select "textarea[name=?]", "bar59[foo5]"
    end
  end
end
