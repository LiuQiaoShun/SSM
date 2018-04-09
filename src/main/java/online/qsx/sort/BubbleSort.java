package online.qsx.sort;

/**
 * Created by 8888 on 2018/4/8.
 */
public class BubbleSort {

    /**
     * 泡沫排序从大到小
     */
    public void bigAndSmall(){
        //定义整个数组
        int arr[] ={-5,29,7,10,15,6};
        //循环遍历整个数组
       for (int i=1;i<arr.length;i++){
           for (int j=0;j<arr.length-i;j++){
               if(arr[j]<arr[j+1]){
                   int temp;
                   temp=arr[j];
                   arr[j]=arr[j+1];
                   arr[j+1]=temp;
               }
           }

       }
        for (int i=0;i<arr.length;i++){
            System.out.println(arr[i]);
        }
    }

    /**
     * 从小到大排序
     */
    public void smallAndBig(){
        int arr[]={25,15,69,108,-15,-16};
        for (int i=1;i<arr.length;i++){
            for (int j=0;j<arr.length-i;j++){
                if (arr[j]>arr[j+1]){
                    int temp;
                    temp=arr[j];
                    arr[j]=arr[j+1];
                    arr[j+1]=temp;
                }
            }
        }
        for (int i=0;i<arr.length;i++){
            System.out.println(arr[i]);
        }
    }
    public static void main(String[] args) {
        BubbleSort sort=new BubbleSort();
//        sort.bigAndSmall();
        sort.smallAndBig();
    }

}
