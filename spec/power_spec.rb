# coding: utf-8
require_relative "../lib/power.rb"
include BinaryPower

describe "累乗" do
  context "基数, 指数とも正の整数の場合" do
    context "結果がIntの範囲に収まる場合" do
      it "正しく累乗計算を行なう" do
        expect(power(5, 7)).to eq(78125)
      end
    end
    context "結果がIntの範囲を超える場合" do
      it "正しく累乗計算を行なう" do
        expect(power(11, 44)).to eq(6626407607736641103900260617069258125403649041)
      end
    end
  end
  context "その他の場合" do
    it "rubyの**を用いて累乗計算を行なう" do
      expect(power(3, -7)).to eq(3 ** (-7))
      expect(power(4.25, 4.7)).to eq(4.25 ** 4.7)
    end
  end
end
