require 'rails_helper'

RSpec.describe "baz95s/edit", type: :view do
  before(:each) do
    @baz95 = assign(:baz95, Baz95.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz95 form" do
    render

    assert_select "form[action=?][method=?]", baz95_path(@baz95), "post" do

      assert_select "input[name=?]", "baz95[foo1]"

      assert_select "input[name=?]", "baz95[foo2]"

      assert_select "input[name=?]", "baz95[foo3]"

      assert_select "input[name=?]", "baz95[foo4]"

      assert_select "textarea[name=?]", "baz95[foo5]"
    end
  end
end
