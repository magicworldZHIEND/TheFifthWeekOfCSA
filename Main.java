package Main;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("-------------第一题-------------");
        System.out.println("Please input the number which you want to reverse:");
        System.out.print("x = ");
        int num = in.nextInt();
        IntegerInversion(num);
        System.out.println("-------------第二题-------------");
        System.out.println("Please input how many ladder are there");
        int laddernum = in.nextInt();
        int ways = climbLadder(laddernum);
        if (ways > 0) {
            System.out.println("There are " + ways + " to get on the top.");
        } else {
            System.out.println("Input is wrong , please check the number input.");
        }
        System.out.println("-------------第三题-------------");
        System.out.println("Please input the number:");
        int number[] = {1,2,3};
        int number2[] = {0};
        getSubset(number);
        getSubset(number2);

    }

    //整数反转
    //给你一个 32 位的有符号整数 x ，返回 x 中每位上的数字反转后的结果。
    //如果反转后整数超过 32 位的有符号整数的范围[−2^31,2^31− 1] ，就返回 0。
    //知识点:
    //1.int 类型范围为:[−2^31,2^31− 1]即[-2147483648,2147483647]
    // 2.异常的运用
    // 3.字符串与数字的相互转换
    public static void IntegerInversion(int x) {
        int number = 0;
        try {
            number = x;
        } catch (Exception e) {
            number = 0;
        }
        if (number >= 0) {
            Integer num = number;
            String numstr = num.toString();
            String newnumstr = "";
            for (int i = 0; i < numstr.length(); ++i) {
                newnumstr = numstr.charAt(i) + newnumstr;
            }
            int newnum = 0;
            try {
                newnum = Integer.valueOf(newnumstr);
            } catch (Exception e) {
                newnum = 0;
            }
            System.out.println("IntegerInversion =" + newnum);
        } else {
            Integer num = -number;
            String numstr = num.toString();
            String newnumstr = "";
            for (int i = 0; i < numstr.length(); ++i) {
                newnumstr = numstr.charAt(i) + newnumstr;
            }
            int newnum = 0;
            try {
                newnum = -Integer.valueOf(newnumstr);
            } catch (Exception e) {
                newnum = 0;
            }
            System.out.println("IntegerInversion =" + newnum);
        }

    }

    //爬楼梯
    //假设你正在爬楼梯。需要 n 阶你才能到达楼顶。
    //每次你可以爬 1 或 2 个台阶。你有多少种不同的方法可以爬到楼顶呢？
    //知识点:
    //1.动态规划问题,将台阶进行编号,A,B,C,D ,到达C的方法=到达A的方法+到达B的方法,D=C+B,以此进行递归即可
    //2.递归的使用
    public static int climbLadder(int laddernum) {
        if (laddernum < 0) {
            return -1;
        }
        if (laddernum == 0 || laddernum == 1) {
            return 1;
        } else if (laddernum == 2) {
            return 2;
        } else {
            return climbLadder(laddernum - 1) + climbLadder(laddernum - 2);
        }
    }

    //求子集
    //给你一个整数数组 nums ，数组中的元素 互不相同 。返回该数组所有可能的子集
    //知识点:
    //1.每个数都有2中情况,取或者不取, 这里可以联想到 2进制,
    // 进而通过数组中元素的个数来得知子集的个数
    //2.java的Integer.toBinaryString函数，前面不会补0，
    // 只会保留最高位0，所以倒着取。
    //3.数组进行二进制编号的思想;

    public static void getSubset(int num[]){
        int length = num.length;
        //子集的总个数
        int number = (int)Math.pow(2,length);
        //容纳结果的动态数组
        ArrayList<ArrayList<Integer>> subset = new ArrayList<>();
        //toBinaryString函数，前面不会补0,所以倒着取,使其从大到小,位数逐渐减少
        //i= number-1 即代表所有都取, i=0即代表没有一个取的
        for(int i = number-1;i>=0;--i)//
        {
            //将数组中的每个元素进行编号处理
            String identifier = Integer.toBinaryString(i);
            //用于容纳子集的动态数组
            ArrayList<Integer> temp = new ArrayList<>();
            for(int j = 0;j<identifier.length();++j){
                if(identifier.charAt(j) == '1'){
                    temp.add(num[j]);
                }
            }
            subset.add(temp);
        }
        System.out.println(subset);

    }
}
