// #include <iostream>
// #include <cmath>

// using namespace std;

// // Versi Sesuai Flowchart
// int binarySearch(int arr[], int n, int find)
// {
//     int left = 0;
//     int right = n - 1;
//     while (left <= right)
//     {
//         int mid = floor((left + right) / 2);

//         if (arr[mid] != find)
//         {
//             if (find < arr[mid])
//             {
//                 right = mid - 1;
//             }
//             else
//             {
//                 left = mid + 1;
//             }
//         }
//         else
//         {
//             return mid;
//         }
//     }
//     return -1;
// }

// int main()
// {
//     int n = 1000;
//     int find = 1000;

//     int *arr = (int *)malloc(n * sizeof(int));

//     for (int i = 0; i < n; i++)
//     {
//         arr[i] = i + 1;
//     }

//     int result = binarySearch(arr, n, find);

//     if (result == -1)
//     {
//         cout << "Element not found" << endl;
//     }
//     else
//     {
//         cout << "Element found at index: " << result << endl;
//     }

//     free(arr);

//     return 0;
// }

#include <iostream>
#include <cmath>

using namespace std;

// Versi Lebih Sederhana
int binarySearch(int arr[], int n, int find)
{
    int left = 0;
    int right = n - 1;
    while (left <= right)
    {
        int mid = floor((left + right) / 2);

        if (arr[mid] == find)
        {
            return mid;
        }
        else if (arr[mid] < find)
        {
            left = mid + 1;
        }
        else
        {
            right = mid - 1;
        }
    }
    return -1;
}

int main()
{
    int n = 10000000;
    int find = 1;

    int *arr = (int *)malloc(n * sizeof(int));

    for (int i = 0; i < n; i++)
    {
        arr[i] = i + 1;
    }

    int result = binarySearch(arr, n, find);

    if (result == -1)
    {
        cout << "Element not found" << endl;
    }
    else
    {
        cout << "Element found at index: " << result << endl;
    }

    free(arr);

    return 0;
}
