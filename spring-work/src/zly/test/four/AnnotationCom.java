package zly.test.four;


import org.springframework.stereotype.Component;

/**
 * @author shkstart
 * @create 2019-05-09 23:46
 */
@Component("annotationCom")
public class AnnotationCom {
    public void test(String[] args) {
        System.out.println("component");
    }
}
