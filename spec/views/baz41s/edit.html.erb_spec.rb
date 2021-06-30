require 'rails_helper'

RSpec.describe "baz41s/edit", type: :view do
  before(:each) do
    @baz41 = assign(:baz41, Baz41.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz41 form" do
    render

    assert_select "form[action=?][method=?]", baz41_path(@baz41), "post" do

      assert_select "input[name=?]", "baz41[foo1]"

      assert_select "input[name=?]", "baz41[foo2]"

      assert_select "input[name=?]", "baz41[foo3]"

      assert_select "input[name=?]", "baz41[foo4]"

      assert_select "textarea[name=?]", "baz41[foo5]"
    end
  end
end
