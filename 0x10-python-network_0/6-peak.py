#!/usr/bin/python3
"""Algorithm for finding a peak in a list of unsorted integers."""


def find_peak(list_of_integers):
    """
    Args:
        list_of_integers(int): list of integers to find peak of
    Returns: peak of list_of_integers or None
    """
    if list_of_integers:
        list_of_integers.sort(reverse=True)
        return list_of_integers[0]
