
array <- c(32, 17, 49, 98, 06, 25, 53, 61)


heapify <- function(array, n, i)
{
  parent <- i
  leftChild <- 2 * (i - 1) + 1
  rightChild <- 2 * (i - 1) + 2
  
  if ((leftChild < n) & (array[parent] < array[leftChild]))
  {
    parent <- leftChild
  }
  
  if ((rightChild < n) & (array[parent] < array[rightChild]))
  {
    parent <- rightChild
  }
  
  if (parent != i) {
    array <- replace(array, c(i, parent), array[c(parent, i)])
    array <- heapify(array, n, parent)
  }
  
  array
}

heapSort <- function(array)
{
  n <- length(array)
  
  for (i in floor(n / 2):1) {
    array <- heapify(array, n, i)
  }
  
  for (i in n:1) {
    array <- replace(array, c(i, 1), array[c(1, i)])
    array <- heapify(array, i, 1)
  }
  
  array
}
heapSort(array)
