/// Returns the position of `value` in the `sortedList`, if it exists.
///
/// Returns `-1` if the `value` is not in the list. Requires the list items
/// to implement [Comparable] and the `sortedList` to already be ordered.
/// If [compareTo] function omitted the built-in compareTo on Types will be used.
int customBinarySearch<T extends Comparable<Object>,
        E extends Comparable<Object>>(List<T> sortedList, E value,
    [int Function(T e1, E? e2)? compareTo]) {
  int min = 0;
  int max = sortedList.length;
  while (min < max) {
    final int mid = min + ((max - min) >> 1);
    final T element = sortedList[mid];
    final int comp = compareTo != null
        ? compareTo(element, value)
        : element.compareTo(value);
    if (comp == 0) {
      return mid;
    }
    if (comp < 0) {
      min = mid + 1;
    } else {
      max = mid;
    }
  }
  return -1;
}
