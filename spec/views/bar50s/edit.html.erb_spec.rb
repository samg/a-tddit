require 'rails_helper'

RSpec.describe "bar50s/edit", type: :view do
  before(:each) do
    @bar50 = assign(:bar50, Bar50.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar50 form" do
    render

    assert_select "form[action=?][method=?]", bar50_path(@bar50), "post" do

      assert_select "input[name=?]", "bar50[foo1]"

      assert_select "input[name=?]", "bar50[foo2]"

      assert_select "input[name=?]", "bar50[foo3]"

      assert_select "input[name=?]", "bar50[foo4]"

      assert_select "textarea[name=?]", "bar50[foo5]"
    end
  end
end
