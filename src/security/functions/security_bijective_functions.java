import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);
        int n = scan.nextInt();

        int[] values = new int[n];
        
        for(int i = 0; i < n; i++) {
            values[i] = scan.nextInt();
        }
        
        Arrays.sort(values);

        for(int i = 0; i < n-2; i++) {

            //System.out.println("values[i+1] = " + values[i+1]);
            //System.out.println("values[i] = " + values[i]);

            if(values[i+1] != values[i]+1) {
                System.out.println("NO");
                return;
            }
        }
        System.out.println("YES");
        
    }
}
