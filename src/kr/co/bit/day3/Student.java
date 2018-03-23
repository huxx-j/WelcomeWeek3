package kr.co.bit.day3;

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

    public Student() {
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

    public String getsNo() {
        return sNo;
    }

    public void setsNo(String sNo) {
        this.sNo = sNo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getKor() {
        return kor;
    }

    public void setKor(String kor) {
        this.kor = kor;
    }

    public String getMath() {
        return math;
    }

    public void setMath(String math) {
        this.math = math;
    }

    public String getEng() {
        return eng;
    }

    public void setEng(String eng) {
        this.eng = eng;
    }

    public String getSci() {
        return sci;
    }

    public void setSci(String sci) {
        this.sci = sci;
    }

    public String getHis() {
        return his;
    }

    public void setHis(String his) {
        this.his = his;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getAchiv() {
        return achiv;
    }

    public void setAchiv(String achiv) {
        this.achiv = achiv;
    }

    public String getAreacode() {
        return areacode;
    }

    public void setAreacode(String areacode) {
        this.areacode = areacode;
    }
}
