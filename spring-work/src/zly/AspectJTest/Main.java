package zly.AspectJTest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author shkstart
 * @create 2019-05-12 23:27
 */
public class Main {
    public static void main(String[] args) {
        //1.获取IOC容器
        ApplicationContext cxt=new ClassPathXmlApplicationContext("CatularTest-config.xml");
        //2.从IOC容器中获取bean(注解获取)
       CatularTest catularTest=cxt.getBean(CatularTest.class);
        //3.调用相关方法
        double result=catularTest.add(5.0,6.0);

        System.out.println("result="+result);

    }
}
