# Overview of Sorting

## Introduction to Sorting algorithms
> A sorting alogrithm is an algorithm that puts elements of a list in a certain order. (Wikipedia)

Simply put a sorting alogrithm is the method of how one sorts items. Most of the time sorting happens in numerical or lexicographical order. There are few conditions that must be met in order to be clasified as a sorting algorithm:

- The output is in nondecreasing order (each element is no smaller than the previous element according to the desired total order);

- The output is a permutation (reordering) of the input.
(Wikipedia)

Apart from those two things there can be many approaces to how one can sort data. Here are a few examples of how one can sort data.


## Insertion Sort
The insertion sort is a simple sorting algorithim that builds its final sorted array one item at a time. It is rather effiecent in small groups of data but gradually gets less effient with larger sets of data.

Some advantages of Insetion sort is:

- Simple Implentation
- Efficient for (quite) small data sets
- Adaptive (i.e., efficient) for data sets that are already substantially sorted: the time complexity is O(n + d), where d is the number of inversions
- More efficient in practice than most other simple quadratic (i.e., O(n2)) algorithms such as selection sort or bubble sort; the best case (nearly sorted input) is O(n)
- Stable; i.e., does not change the relative order of elements with equal keys
- In-place; i.e., only requires a constant amount O(1) of additional memory space
- Online; i.e., can sort a list as it receives it

A good video on how the insertion sort works is [Insertion Sort explained by Apple Juice Teaching](https://www.youtube.com/watch?v=baV_W4-x5Wg)

######Below is a graphical represnetation of the insertion sort:

![Example of Insertion Sort](insertionsort.gif)

## Selection Sort
The selection sort works by dividing the input into two parts: the sublist of already sorted items and the unsorted list. It begins by looping through the entire unordered list and takes the smallest item in the list and swaps it with what ever was in the first postion. Once this happens you have your two parts, the sorted list and the unsorted list. This continues until the entire set of data becomes sorted. Look below for a written example.

	Unsorted Sequence    8   4   1   5   4
	Step 1               8   4   1   5   4
	Step 2               1   4   8   5   4
	Step 3               1   4   8   5   4
	Step 4               1   4   4   5   8
	Result               1   4   4   5   8
######Below is a animated example of the Selection sort:

![Example of Selection Sort](selectionsort.gif)

## Merge Sort
The merge sort conceptually works like:

1. Divide the unsorted list into two sublists of about half the size
2. Divide each of the two sublists recursively until we have list sizes of length 1, in which case the list itself is returned
3. Merge the two sorted sublists back into one sorted list.

The merge sort is easy to implment and can be best described as a divide and conquer algorith. It was invented by John von Nuemann in 1945.
######Below is a representation of the Merge Sort:
![Example of Merge Sort](mergesort.gif)
## Quick Sort
Quick sort works like this:

1. Pick an element, called a pivot, from the array.
2. Reorder the array so that all elements with values less than the pivot come before the pivot, while all elements with values greater than the pivot come after it (equal values can go either way). After this partitioning, the pivot is in its final position. This is called the partition operation.
3. Recursively apply the above steps to the sub-array of elements with smaller values and separately to the sub-array of elements with greater values.

######Below is a animated showing of the Quick Sort:
![Example of Quick Sort](quicksort.gif)

## Bubble Sort
The bubble sort is a simple sorting algorithm that works by repeatedly stepping through the list to be sorted, comaprting each pair of adjacent items and swapping them if they are in the wrong order. Then the pass through the list is repeated until there are no swaps needed.
######Below shows how the Bubble Sort works:
![Example of Bubble Sort](bubblesort.gif)

## Bucket Sort
Bucket sort works as follows:

1. Set up an array of initially empty "buckets".
2. Scatter: Go over the original array, putting each object in its bucket.
3. Sort each non-empty bucket.
4. Gather: Visit the buckets in order and put all elements back into the original array.

######The image below shows how a Bucket Sort will break data into sets:
![Example of Bucket Sort](bucketsort.png)

## Further Investigation
- [Slightly Skeptical View on Sorting Algorithms](http://www.softpanorama.org/Algorithms/sorting.shtml)
- [Introduction to Sorting Algorithms](http://hugi.scene.org/online/hugi23/adsort.htm)
- [15 Sorting Algorithms in 6 Minutes (Video)](https://www.youtube.com/watch?v=kPRA0W1kECg)
- [Sorting Algorithm Animations](http://www.sorting-algorithms.com/)

## Sources
- [Overview of Sorting Algorithms](http://en.wikipedia.org/wiki/Sorting_algorithm)
- [comparison of sorting algorithms (Stack Overflow)](http://stackoverflow.com/questions/2514841/comparison-of-sorting-algorithms)
- [Insertion Sort](http://en.wikipedia.org/wiki/Insertion_sort)
- [Selection Sort](http://en.wikipedia.org/wiki/Selection_sort)
- [Merge Sort](http://en.wikipedia.org/wiki/Merge_sort)
- [Quick Sort](http://en.wikipedia.org/wiki/Quicksort)
- [Bubble Sort](http://en.wikipedia.org/wiki/Bubble_sort)
- [Bucket Sort](http://en.wikipedia.org/wiki/Bucket_sort)
