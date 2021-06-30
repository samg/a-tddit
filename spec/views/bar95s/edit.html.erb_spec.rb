require 'rails_helper'

RSpec.describe "bar95s/edit", type: :view do
  before(:each) do
    @bar95 = assign(:bar95, Bar95.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar95 form" do
    render

    assert_select "form[action=?][method=?]", bar95_path(@bar95), "post" do

      assert_select "input[name=?]", "bar95[foo1]"

      assert_select "input[name=?]", "bar95[foo2]"

      assert_select "input[name=?]", "bar95[foo3]"

      assert_select "input[name=?]", "bar95[foo4]"

      assert_select "textarea[name=?]", "bar95[foo5]"
    end
  end
end
