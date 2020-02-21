require 'rspec/autorun'
require_relative 'QuickSort'

describe QuickSort do
    it "Testing the quick sort to return error" do
        qs_spec = QuickSort. new
        unsort_array = [3, 4, 1, 5, 7, 1, -4]
        sort_array = [4, 1, 1, 3, 4, 5, 7]
        expect(qs_spec.quick_sort(unsort_array, 0, 6)).not_to eq(sort_array)
    end

    it "Testing the merge sort to return a failure" do
        qs_spec = QuickSort. new
        unsort_array = [3, 2, 45, 76,67]
        sort_array = [4, 1, 1, 3, 4, 5, 7]
        expect(qs_spec.quick_sort(unsort_array, 0, 4)).not_to eq(sort_array)
    end

    it "Testing the quick sort to return pass" do
        qs_spec = QuickSort. new
        unsort_array = [3, 4, 1, 5, 7, 1, -4]
        sort_array = [-4, 1, 1, 3, 4, 5, 7]
        expect(qs_spec.quick_sort(unsort_array, 0, 6)).to eq(sort_array)
    end
end