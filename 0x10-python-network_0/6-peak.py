def find_peak(list_of_integers):
    # Check if the list is empty
    if not list_of_integers:
        return None
    
    # Initialize pointers for binary search
    left, right = 0, len(list_of_integers) - 1
    
    # Binary search loop
    while left < right:
        mid = (left + right) // 2
        
        # Check if mid is a peak
        if (mid == 0 or list_of_integers[mid] >= list_of_integers[mid - 1]) and \
           (mid == len(list_of_integers) - 1 or list_of_integers[mid] >= list_of_integers[mid + 1]):
            return list_of_integers[mid]
        
        # If right neighbor is greater, peak must be on the right
        elif mid < len(list_of_integers) - 1 and list_of_integers[mid] < list_of_integers[mid + 1]:
            left = mid + 1
        # Otherwise, peak must be on the left
        else:
            right = mid - 1
    
    # If left and right pointers meet, return the element at either position
    return list_of_integers[left]

# Example usage
print(find_peak([1, 3, 20, 4, 1, 0]))  # Output: 20
