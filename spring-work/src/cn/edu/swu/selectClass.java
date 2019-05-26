package cn.edu.swu;

/**
 * @author shkstart
 * @create 2019-05-08 23:55
 */

public class selectClass {
    private String Chinese;
    private String English;
    private String PE;
    private String math;

    public selectClass() {
    }

    public String getChinese() {
        return Chinese;
    }

    public void setChinese(String chinese) {
        Chinese = chinese;
    }

    public String getEnglish() {
        return English;
    }

    public void setEnglish(String english) {
        English = english;
    }

    public String getPE() {
        return PE;
    }

    public void setPE(String PE) {
        this.PE = PE;
    }

    public String getMath() {
        return math;
    }

    public void setMath(String math) {
        this.math = math;
    }


    public String toString() {
        return "selectClass{" +
                "Chinese='" + Chinese + '\'' +
                ", English='" + English + '\'' +
                ", PE='" + PE + '\'' +
                ", math='" + math + '\'' +
                '}';
    }

    public selectClass(String chinese,String English,String PE,String math) {
        this.Chinese = chinese;
        this.English = English;
        this.PE = PE;
        this.math = math;
    }
}
