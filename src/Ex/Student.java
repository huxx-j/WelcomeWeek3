package Ex;

public class Student {
    private String sNo;
    private String email;
    private String kor;
    private String eng;
    private String math;
    private String sci;
    private String his;
    private String total;
    private String teacher;
    private String achiv;
    private String areacode;

    public String getsNo() {
        return sNo;
    }

    public String getEmail() {
        return email;
    }

    public String getKor() {
        return kor;
    }

    public String getEng() {
        return eng;
    }

    public String getMath() {
        return math;
    }

    public String getSci() {
        return sci;
    }

    public String getHis() {
        return his;
    }

    public String getTotal() {
        return total;
    }

    public String getTeacher() {
        return teacher;
    }

    public String getAchiv() {
        return achiv;
    }

    public String getAreacode() {
        return areacode;
    }

    public Student(String sNo, String email, String kor, String eng, String math, String sci, String his, String total, String teacher, String achiv, String areacode) {
        this.sNo = sNo;
        this.email = email;
        this.kor = kor;
        this.eng = eng;
        this.math = math;
        this.sci = sci;
        this.his = his;
        this.total = total;
        this.teacher = teacher;
        this.achiv = achiv;
        this.areacode = areacode;
    }
}
