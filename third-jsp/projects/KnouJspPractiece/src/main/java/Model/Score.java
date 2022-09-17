package Model;

public class Score {

    private int korean;
    private int math;
    private int english;
    private int social;
    private int moral;

    public int getKorean() {
        return korean;
    }

    public void setKorean(int korean) {
        this.korean = korean;
    }

    public int getMath() {
        return math;
    }

    public void setMath(int math) {
        this.math = math;
    }

    public int getEnglish() {
        return english;
    }

    public void setEnglish(int english) {
        this.english = english;
    }

    public int getSocial() {
        return social;
    }

    public void setSocial(int social) {
        this.social = social;
    }

    public int getMoral() {
        return moral;
    }

    public void setMoral(int moral) {
        this.moral = moral;
    }

    public double average() {
        double result = getKorean() + getMath() + getEnglish() + getMoral() + getSocial();
        return result / 5;
    }

}
