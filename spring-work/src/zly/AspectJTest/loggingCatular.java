package zly.AspectJTest;




import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;


import java.util.Arrays;
import java.util.List;

/**
 * @author shkstart
 * @create 2019-05-12 23:24
 */
//将该类放入IOC容器，再将其声明为一个切面

/**
 * 可以使用@Order确定切面的优先级
 */
@Aspect
@Component
public class loggingCatular {
    /**
     * 定义一个方法，声明切点表达式
     *
     */
    @Pointcut("execution(* zly.AspectJTest.*.*(double ,double ))")
    public void declarJoinPoint(){};

    //前置通知
    @Before("declarJoinPoint()")
    public void  beforeMethod(JoinPoint joinPoint){
        String methodName=joinPoint.getSignature().getName();
        List<Object> args= Arrays.asList(joinPoint.getArgs());
        System.out.println("The method :"+ methodName+" begin with :"+args);
    }

    //后置通知
    //在其中，不能访问目标方法的返回结果，需要结果，再返回方法中获取
    @After("declarJoinPoint()")
    public void afterMethod(JoinPoint joinPoint){
        String methodName=joinPoint.getSignature().getName();
        System.out.println("The method:"+methodName+" end");
    }

    //返回通知
    @AfterReturning(value = "declarJoinPoint()",returning = "result")
    public  void  afterReturn(JoinPoint joinPoint ,double result){
        String methodName=joinPoint.getSignature().getName();
        System.out.println("the Method is:"+methodName+" result is:"+result);
    }

    //异常通知
    @AfterThrowing(value = "declarJoinPoint()",throwing = "ex")
    public void Threwing(Exception ex){
        System.out.println("method is occurs with "+ex);
    }

    /**
     * 环绕通知，类似于动态代理，必须有返回值，且为目标方法的返回值，
     * 必有参数ProceedingJoinPoint
     * 这里把其他通知的结果都更改了
         * ********
         * *      *
         * ********
     * 综合前面所有通知，但不是很常用
     *
     */
    @Around("declarJoinPoint()")
    public Object Arondlog(ProceedingJoinPoint proceedingJoinPoint){
        Object result=null;
        String methodName=proceedingJoinPoint.getSignature().getName();
        //设置所有通知
        try {
            //前置通知
            System.out.println("method:"+methodName+"begin with"+Arrays.asList(proceedingJoinPoint.getArgs()));
            //执行运行的方法：（add,sub,mul,div）
            result=proceedingJoinPoint.proceed();
            //返回通知
            System.out.println("method:"+methodName+"end with"+result);
        } catch (Throwable throwable) {
            //异常通知
            System.out.println("method:"+methodName+"occurs with:"+throwable);
            throw new RuntimeException(throwable);
        }
        //后置通知
        System.out.println("method:"+methodName+"ends");
        return result;
    }

}
