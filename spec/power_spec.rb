# coding: utf-8
require_relative "../lib/power.rb"

describe "累乗" do
  it "累乗計算を行なう" do
    expect(power(12, 24)).to eq(12**24)
  end
end
