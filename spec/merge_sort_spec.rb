# frozen_string_literal: true

require_relative '../lib/array'

RSpec.describe(Array, '#merge_sort') do
  let(:array) { [5, 3, 8, 4, 2] }

  context 'when sorting an array' do
    it 'sorts the array using merge_sort' do
      sorted_array = array.merge_sort
      expect(sorted_array).to eq(array.sort)
    end
  end

  context 'when array is already sorted' do
    it 'returns the same array' do
      sorted_array = array.sort
      result = sorted_array.merge_sort
      expect(result).to eq(sorted_array)
    end
  end

  context 'when array is empty' do
    it 'returns an empty array' do
      expect([].merge_sort).to eq([])
    end
  end

  context 'when array has one element' do
    it 'returns the same array' do
      expect([1].merge_sort).to eq([1])
    end
  end
end
