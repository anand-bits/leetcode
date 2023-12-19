class Solution {
    public void merge(int[] nums1, int m, int[] nums2, int n) {
        
        int ans[] = new int[m + n];
        int i = 0, j = 0, k = 0;

        while (i < m || j < n) {
            if (i < m && (j >= n || nums1[i] < nums2[j])) {
                ans[k] = nums1[i];
                i++;
            } else {
                ans[k] = nums2[j];
                j++;
            }

            k++;
        }

        // Copy remaining elements from nums1
        while (i < m) {
            ans[k] = nums1[i];
            i++;
            k++;
        }

        // Copy remaining elements from nums2
        while (j < n) {
            ans[k] = nums2[j];
            j++;
            k++;
        }

        for (int p = 0; p < ans.length; p++) {
            nums1[p] = ans[p];
        }
    }
}
