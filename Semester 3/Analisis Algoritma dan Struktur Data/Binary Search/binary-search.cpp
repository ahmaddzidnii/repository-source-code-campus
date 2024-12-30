// Ahmad Zidni Hidayat
// 23106050077
// Analisis Algoritma dan Struktur Data B

#include <iostream>
#include <cmath>

using namespace std;

int binarySearch(int arr[], int n, int find)
{
    int left = 0;
    int right = n - 1;
    int step = 1;
    while (left <= right)
    {
        int mid = floor((left + right) / 2);

        cout << "Langkah " << step << ":\n";
        cout << "    Left Index = " << left << ", Right index =  " << right << ", Mid index = " << mid << "\n";
        cout << "    Nilai di Mid = " << arr[mid] << "\n";

        if (arr[mid] != find)
        {
            if (find < arr[mid])
            {
                cout << "    " << find << " lebih kecil dari " << arr[mid] << ", pindah ke kiri.\n";
                right = mid - 1;
            }
            else
            {
                cout << "    " << find << " lebih besar dari " << arr[mid] << ", pindah ke kanan.\n";
                left = mid + 1;
            }
        }
        else
        {
            cout << "    Elemen ditemukan pada indeks " << mid << "!\n";
            return mid;
        }

        step++;
    }

    cout << "Elemen tidak ditemukan setelah " << step - 1 << " langkah.\n";
    return -1;
}

int main()
{
    int n = 8;
    int find = 2;

    int *arr = (int *)malloc(n * sizeof(int));

    for (int i = 0; i < n; i++)
    {
        arr[i] = i + 1;
    }

    cout << "Mencari elemen " << find << " dalam array...\n\n";
    cout << "Isi array: ";
    for (int i = 0; i < n; i++)
    {
        cout << arr[i] << " ";
    }
    cout << "\n\n";

    int result = binarySearch(arr, n, find);

    if (result == -1)
    {
        cout << "\nElement tidak ditemukan" << endl;
    }
    else
    {
        cout << "\nElement ditemukan pada indeks ke-: " << result << endl;
    }

    free(arr);

    return 0;
}
