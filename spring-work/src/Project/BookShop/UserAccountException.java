package Project.BookShop;

/**
 * @author shkstart
 * @create 2019-05-14 17:18
 */
public class UserAccountException extends RuntimeException {
    public UserAccountException() {
    }

    public UserAccountException(String message) {
        super(message);
    }

    public UserAccountException(Throwable cause) {
        super(cause);
    }

    public UserAccountException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }

    public UserAccountException(String message, Throwable cause) {
        super(message, cause);
    }
}
