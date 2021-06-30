require 'rails_helper'

RSpec.describe "bar63s/edit", type: :view do
  before(:each) do
    @bar63 = assign(:bar63, Bar63.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar63 form" do
    render

    assert_select "form[action=?][method=?]", bar63_path(@bar63), "post" do

      assert_select "input[name=?]", "bar63[foo1]"

      assert_select "input[name=?]", "bar63[foo2]"

      assert_select "input[name=?]", "bar63[foo3]"

      assert_select "input[name=?]", "bar63[foo4]"

      assert_select "textarea[name=?]", "bar63[foo5]"
    end
  end
end
