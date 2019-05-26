package Project.BookShop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author shkstart
 * @create 2019-05-14 17:04
 */
@Service("bookShopService")
public class BookShopServiceImpl implements BookShopService{
    @Autowired
    private bookShopDao bookShopDao;
    //添加事物处理器
    @Transactional
    @Override
    public void shopbook(String name,int bookid){
        //1.获取价格
        int price=bookShopDao.findBookPriceByid(bookid);
        //2.库存-1
        bookShopDao.updateBookStock(bookid);
        //3.更新余额
        bookShopDao.updateUserAccount(name,price);
    }
}
