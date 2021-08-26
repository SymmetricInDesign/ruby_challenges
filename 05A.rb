# Given a matrix of integers and coordinates of a rectangular region within the matrix, 
# find the sum of numbers falling inside the rectangle.

def matrix_region_sum(matrix, top_left_coords, bottom_right_coords)

    x1, y1 = top_left_coords
    x2, y2 = bottom_right_coords
    sum = 0
    (x1..x2).each do |x|
        (y1..y2).each do |y|
            puts matrix[x][y]
            sum += matrix[x][y]
        end
    end
    sum

end

# p matrix_region_sum([[1,2,3],[4,5,6],[7,8,9]], [1,1], [2,2])

# Implement merge sort.

def merge_sort(arr)
    return arr if arr.length < 2
    mid_idx = arr.length/2
    left = arr[0...mid_idx]
    right = arr[mid_idx..-1]
    return merge(merge_sort(left), merge_sort(right))
end

def merge(arr1, arr2)
    merged = []

    while arr1.length>0 && arr2.length >0 do
        if arr1[0] > arr2[0]
            merged.push(arr2.shift())
        else
            merged.push(arr1.shift())
        end
    end

    return merged.concat(arr1).concat(arr2)
end

p merge_sort([7])