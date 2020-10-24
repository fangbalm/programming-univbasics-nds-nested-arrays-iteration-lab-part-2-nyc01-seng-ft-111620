def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  new_array = []
  counter = 0
  min_value = 0

  while counter < src.length do
    inner_count = 0
    while inner_count < src[counter].length do
      if src[counter][inner_count][0] < min_value
        min_value = src[counter][inner_count]
        inner_count += 1
      end
    end
    counter += 1
  end
  new_array << min_value
  new_array
end
