def quicksort(array, from=0, to=nil)
    is_number = array.all? {|i| i.is_a?(Numeric) }

    if to == nil
        to = array.count - 1
    end
  if is_number != true
      abort("zły typ danych")
    end
    if from >= to
        return
    end

    pivot = array[from]
    min = from
    max = to
    free = min

    while min < max
        if free == min
            if array[max] <= pivot
                array[free] = array[max]
                min += 1
                free = max
            else
                max -= 1
            end
        elsif free == max
            if array[min] >= pivot
                array[free] = array[min]
                max -= 1
                free = min
            else
                min += 1
            end
        else
            raise "Błąd"
        end
    end

    array[free] = pivot
    quicksort array, from, free - 1
    quicksort array, free + 1, to
end

a = [3, 24, 11, 3.4, 6, 5, 99, 7, 8, 2, 9.1, 0, 121, 1.4, 23, 13].shuffle
puts "Tablica:"
print a
puts
quicksort a
puts "Quicksort:"
print a
