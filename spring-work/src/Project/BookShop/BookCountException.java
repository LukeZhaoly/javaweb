package Project.BookShop;

/**
 * @author shkstart
 * @create 2019-05-14 17:14
 */
public class BookCountException  extends RuntimeException{

    public BookCountException() {
    }

    public BookCountException(String message) {
        super(message);
    }

    public BookCountException(String message, Throwable cause) {
        super(message, cause);
    }

    public BookCountException(Throwable cause) {
        super(cause);
    }

    public BookCountException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
