package zly.factorybean;

import cn.edu.swu.Student;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author shkstart
 * @create 2019-05-08 23:48
 */
public class testspring {
    public static void main(String[] args) {
//        ApplicationContext cxt=new ClassPathXmlApplicationContext("spring-1.xml");
//        Student student= (Student) cxt.getBean("stu1");
//        System.out.println(student);
//
//        selectClass sc= (selectClass) cxt.getBean("select");
//        System.out.println(sc);
//        selectClass sc1= (selectClass) cxt.getBean("select1");
//        System.out.println(sc1);

//        ApplicationContext cxt=new ClassPathXmlApplicationContext("DataSource.xml");
//        Object dataSource=  cxt.getBean("dataSource");
//        System.out.println(dataSource);

        ApplicationContext cxt=new ClassPathXmlApplicationContext("spring-1.xml");
        Car car1 = (Car) cxt.getBean("car1");
        System.out.println(car1);
    }
}
