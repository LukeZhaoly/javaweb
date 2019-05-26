package Project.BookShop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Arrays;

/**
 * @author shkstart
 * @create 2019-05-14 16:29
 */
public class Test {
    private ApplicationContext cxt;
    private bookShopDao bookShopDao;
    private BookShopService bookShopService;
    private BuymulBook buymulBook;
    {
        cxt=new ClassPathXmlApplicationContext("DataSource.xml");
        bookShopDao=cxt.getBean(bookShopDao.class);
        bookShopService=cxt.getBean(BookShopService.class);
        buymulBook=cxt.getBean(BuymulBook.class);
    }
    @org.junit.Test
    public void test1(){
        int p=bookShopDao.findBookPriceByid(1001);
        System.out.println(p);

    }
    @org.junit.Test
    public void testService(){
        bookShopService.shopbook("zly",1001);
    }

    //购买多本书

    /**
     * request_new可以在买多个本书时买一本够买，然后第二本余额不足，而reques则直接表示余额不足
     */
    @org.junit.Test
    public void testBuymul(){
        buymulBook.checkout("zly", Arrays.asList(1001,1100));
    }
}
