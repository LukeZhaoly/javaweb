package zly.factorybean;

import org.springframework.context.ApplicationContext;

import java.util.HashMap;
import java.util.Map;

/**
 * @author shkstart
 * @create 2019-05-09 18:07
 * 静态工厂配置bean方法
 */
public class staticFactorybean {
    private  static Map<String ,Car> cars=new HashMap<String, Car>();

    static {
        cars.put("audi",new Car("audi",200000));
    }
    public  static Car getcar(String carName){
        return  cars.get(carName);
    }
}
