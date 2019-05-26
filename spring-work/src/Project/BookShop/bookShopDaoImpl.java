package Project.BookShop;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 * @author shkstart
 * @create 2019-05-14 16:10
 */
@Repository("bookShopDao")
public class bookShopDaoImpl implements bookShopDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    //获取书的价钱
    @Override
    public int findBookPriceByid(int bookid) {
        String sql="select price from bookprice where bookid=?";
        return jdbcTemplate.queryForObject(sql,Integer.class,bookid);
    }

    @Override
    public void updateBookStock(int bookid) {
        //检查库存是否大于0
        String sql2="select bookcount from book where bookid=?";
        int sum=jdbcTemplate.queryForObject(sql2,Integer.class,bookid);
        if(sum==0){
            throw  new BookCountException("库存不足");
        }
        String sql="update book set bookcount=bookcount-1 where bookid=?";
        jdbcTemplate.update(sql,bookid);
    }

    @Override
    public void updateUserAccount(String username,int price) {
        //检查余额是否充足
        String sql2="select balance from useraccount where name=?";
        int ba=jdbcTemplate.queryForObject(sql2,Integer.class,username);
        if(ba<price){
            throw  new UserAccountException("余额不足");
        }
        String sql="update useraccount set balance=balance-? where name=?";
        jdbcTemplate.update(sql,price,username);
    }
}
