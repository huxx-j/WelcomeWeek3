package kr.co.bit.review1;

public class MainTest {
    public static void main(String[] args) {
        //메소드

        MainTest mainTest = new MainTest();
        mainTest.requestMonth();

    }
    //static은 정형화되어있는 메소드일때 붙임
    public void requestMonth() {

        CalendarService calendarService = new CalendarService();
        calendarService.viewMonth(2017,7);


    }
}
