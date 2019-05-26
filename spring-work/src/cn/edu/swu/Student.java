package cn.edu.swu;



/**
 * @author shkstart
 * @create 2019-05-08 23:41
 */
public class Student {
    private String name;



    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    private int age;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }

    public Student() {
    }

    public Student(String name,  int age) {
        this.name = name;

        this.age=age;

    }


    private void destroy() {
        System.out.println("destroy........");
    }

    private void init() {
        System.out.println("init............");
    }
}
