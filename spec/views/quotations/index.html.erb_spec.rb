require 'rails_helper'

RSpec.describe "quotations/index", type: :view do
  before(:each) do
    assign(:quotations, [
      Quotation.create!(
        :content => "MyText",
        :source_url => "MyText",
        :author => "MyText",
        :user => nil
      ),
      Quotation.create!(
        :content => "MyText",
        :source_url => "MyText",
        :author => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of quotations" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
