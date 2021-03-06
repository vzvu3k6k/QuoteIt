require 'spec_helper'

describe QuotesController do
  context 'show' do
    before { get :show, :u => nil }
    subject { response }
    its(:response_code) { should eq 404 }
  end
  context 'show' do
    before { get :show, :u => 'http://' }
    subject { response }
    its(:response_code) { should eq 404 }
  end
  context 'show with blacklisted url' do
    before { get :show, :u => 'http://localhost/' }
    subject { response }
    its(:response_code) { should eq 404 }
  end
end
