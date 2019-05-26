package zly.factorybean;

import java.util.HashMap;
import java.util.Map;

/**
 * @author shkstart
 * @create 2019-05-09 17:53
 */
public class InstanceCarFactory {
    private Map<String,Car> cars=null;
    public InstanceCarFactory(){
        cars=new HashMap<String, Car>();
        cars.put("audi",new Car("audi",4000000));
        cars.put("fox",new Car("fox",4000000));
    }

    public Car getcar(String c){
        return  cars.get(c);
    }
}
