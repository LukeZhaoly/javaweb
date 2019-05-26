package zly.AspectJTest;

import org.springframework.stereotype.Component;

/**
 * @author shkstart
 * @create 2019-05-12 23:11
 */

@Component
public class CatularTestImpl implements CatularTest {
    @Override
    public double add(double a, double b) {
        return a+b;
    }

    @Override
    public double sub(double a, double b) {
        return a-b;
    }

    @Override
    public double mul(double a, double b) {
        return  a*b;
    }

    @Override
    public double div(double a, double b) {
        return  a/b;
    }
}
