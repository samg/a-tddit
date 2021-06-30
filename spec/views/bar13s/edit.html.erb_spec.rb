require 'rails_helper'

RSpec.describe "bar13s/edit", type: :view do
  before(:each) do
    @bar13 = assign(:bar13, Bar13.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar13 form" do
    render

    assert_select "form[action=?][method=?]", bar13_path(@bar13), "post" do

      assert_select "input[name=?]", "bar13[foo1]"

      assert_select "input[name=?]", "bar13[foo2]"

      assert_select "input[name=?]", "bar13[foo3]"

      assert_select "input[name=?]", "bar13[foo4]"

      assert_select "textarea[name=?]", "bar13[foo5]"
    end
  end
end
