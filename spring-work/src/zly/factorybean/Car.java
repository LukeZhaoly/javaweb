package zly.factorybean;

import java.util.HashMap;

/**
 * @author shkstart
 * @create 2019-05-09 17:45
 *
 *
 */
public class Car {
   private  String carName;
   private  int price;

    public Car(String carName,int price) {
        this.carName = carName;
        this.price=price;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price =  price;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    @Override
    public String toString() {
        return "Car{" +
                "carName='" + carName + '\'' +
                ", price=" + price +
                '}';
    }
}
