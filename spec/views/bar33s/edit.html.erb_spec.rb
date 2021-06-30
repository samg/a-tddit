require 'rails_helper'

RSpec.describe "bar33s/edit", type: :view do
  before(:each) do
    @bar33 = assign(:bar33, Bar33.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar33 form" do
    render

    assert_select "form[action=?][method=?]", bar33_path(@bar33), "post" do

      assert_select "input[name=?]", "bar33[foo1]"

      assert_select "input[name=?]", "bar33[foo2]"

      assert_select "input[name=?]", "bar33[foo3]"

      assert_select "input[name=?]", "bar33[foo4]"

      assert_select "textarea[name=?]", "bar33[foo5]"
    end
  end
end
