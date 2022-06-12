def merge(arr1, arr2)
  (arr1 + arr2).uniq
end 


# OTHER WAY 

# def merge(list1, list2)
#  merged_list = list1 + list2
#  merged_list.uniq
# end 

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
