package zly.test.four;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author shkstart
 * @create 2019-05-10 0:05
 */
public class test {
    public static void main(String[] args) {
        ApplicationContext cxt=new ClassPathXmlApplicationContext("spring-annotation.xml");
        AnnotationCom annotationCom= (AnnotationCom) cxt.getBean("annotationCom");
        System.out.println(annotationCom);


    }
}
