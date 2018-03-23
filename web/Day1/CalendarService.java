package kr.co.bit.review1;

import java.util.Calendar;

public class CalendarService {

    //메소드정의
    //메소드이름:viewMonth
    //리턴타입 : 없음
    //파라메터(데이터를 외부로 부터 받아오는것) 리스트 : 월을 나타내는 int 형변수
    public void viewMonth(int year, int month) {

        Calendar calendar = Calendar.getInstance();
        calendar.set(year, month-1,1);



        System.out.println("\t\t" + year + "년 " + month + "월");
        System.out.println("일\t월\t화\t수\t목\t금\t토");
//
//        System.out.println(calendar.getActualMaximum(7));
        int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
        int space = calendar.get(Calendar.DAY_OF_WEEK)-1;
//        int temp = 2;
//        System.out.print("\t\t");

//        if (month ==4){
//            lastDay = 30;
//            space = 0;
//        } else if (month==5) {
//            lastDay =31;
//            space=2;
//        } else if (month==6){
//            lastDay =30;
//            space=5;
//        }
        for (int i = 0; i < space; i++) {
            System.out.print("\t");
        }
        for (int i = 1; i <= lastDay; i++) {

            System.out.print(i + "\t");

            if ((i+space) % 7 == 0){
                System.out.println();
            }
        }
    }

//    public void viewMonth(int month) {
//        System.out.println("\t\t2018년 " + month + "월");
//        System.out.println("일\t월\t화\t수\t목\t금\t토");
//        int[] lastDays = {31,28,31,30,31,30,31,31,30,31,30,31};
//        int[] spaces = {1,4,4,0,2,5,0,3,6,1,4,6};
//
//        int lastDay = lastDays[month-1];
//        int space = spaces[month-1];
////        int temp = 2;
////        System.out.print("\t\t");
//
////        if (month ==4){
////            lastDay = 30;
////            space = 0;
////        } else if (month==5) {
////            lastDay =31;
////            space=2;
////        } else if (month==6){
////            lastDay =30;
////            space=5;
////        }
//        for (int i = 0; i < space; i++) {
//            System.out.print("\t");
//        }
//        for (int i = 1; i <= lastDay; i++) {
//
//            System.out.print(i + "\t");
//
//            if ((i+space) % 7 == 0){
//                System.out.println();
//            }
//        }
////        System.out.println("1\t2\t3\t4\t5\t6\t7");
////        System.out.println("8\t9\t10\t11\t12\t13\t14");
////        System.out.println("15\t16\t17\t18\t19\t20\t21");
////        System.out.println("22\t23\t24\t25\t26\t27\t28");
////        System.out.println("29\t30");
//    }
}
