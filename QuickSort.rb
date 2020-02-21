class QuickSort

    # to perform the sort 
    def quick_sort(arr, first, last)
        if first < last
            part_index = partition(arr, first, last)
            quick_sort(arr, first, part_index - 1)
            quick_sort(arr, part_index + 1, last)
        end

        return arr
    end

    # to divide the array based on the pivot element
    def partition(arr, first, last)
        pivot = arr[last]
        p_index = first
        i = first
        while i < last
            if arr[i] <= pivot
                temp = arr[i]
                arr[i] = arr[p_index]
                arr[p_index] = temp
                p_index += 1
            end
            i += 1
        end
        temp = arr[p_index]
        arr[p_index] = pivot
        arr[last] = temp
        return p_index
    end

end

data_array = [3, 4, 1, 5, 7, 1, -4]
n = data_array.size
qs = QuickSort. new
data_array = qs.quick_sort(data_array, 0, n - 1)
print data_array