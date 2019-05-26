package Project.BookShop;

/**
 * @author shkstart
 * @create 2019-05-14 16:06
 */
public interface bookShopDao {
    //1.根据bookid获取书的价钱和名字
    public int findBookPriceByid(int bookid);
    //2.将库存经行更新
    public void updateBookStock(int bookid);
    //3.将用户账户进行更新
    public  void  updateUserAccount(String username,int price);
}
