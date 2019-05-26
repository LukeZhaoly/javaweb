package Project.BookShop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author shkstart
 * @create 2019-05-14 18:56
 */
@Service("buymulBook")
public class BuymulBookImpl implements BuymulBook {

    @Autowired
    private BookShopService bookShopService;
    @Transactional
    @Override
    public void checkout(String name, List<Integer> bookids) {
        for (int bookid:bookids){
            bookShopService.shopbook(name,bookid);
        }
    }
}
