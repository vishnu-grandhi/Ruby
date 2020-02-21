require 'rspec/autorun'
require_relative 'MergeSort'

describe MergeSort do
    it "Testing the merge sort" do
        ms_spec = MergeSort. new
        unsort_array = [3, 4, 1, 5, 7, 1, -4]
        sort_array = [-4, 1, 1, 3, 4, 5, 7]
        expect(ms_spec.merge_sort(unsort_array)).to eq(sort_array)
    end

    it "Testing the merge sort to return a failure" do
        ms_spec = MergeSort. new
        unsort_array = [3, 2, 45, 76,67]
        sort_array = [4, 1, 1, 3, 4, 5, 7]
        expect(ms_spec.merge_sort(unsort_array)).not_to eq(sort_array)
    end
end