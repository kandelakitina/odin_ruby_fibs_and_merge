# frozen_string_literal: true

# require 'rspec'
require_relative '../lib/array'

RSpec.describe Array do
  describe '.fibs' do
    it 'returns an array of Fibonacci numbers' do
      expect(Array.fibs(8)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end

    it 'returns an empty array for non-positive input' do
      expect(Array.fibs(0)).to eq([])
      expect(Array.fibs(-1)).to eq([])
    end

    it 'returns the first Fibonacci number for input 1' do
      expect(Array.fibs(1)).to eq([0])
    end

    it 'returns the first two Fibonacci numbers for input 2' do
      expect(Array.fibs(2)).to eq([0, 1])
    end
  end
end
