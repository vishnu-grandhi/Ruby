class MergeSort

    # to divide the array into sub arrays
    def merge_sort(array)
      if array.length <= 1
        array
      else
        mid = (array.length/2).floor
        left = merge_sort(array[0..mid-1])
        right = merge_sort(array[mid..array.length-1])
        merge(left, right)
      end
    end

    # to compare the sub arrays and then to merge them accordingly
    def merge(left, right)
      if left.empty?
        right
      elsif right.empty?
        left
      elsif left[0] < right[0]
        [left[0]] + merge(left[1..left.length-1], right)
      else
        [right[0]] + merge(left, right[1..right.length-1])
      end
    end

end

data_array = [3, 4, 1, 5, 7, 1, -4]
ms = MergeSort. new
data_array = ms.merge_sort(data_array)
print data_array