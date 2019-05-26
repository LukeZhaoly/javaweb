package zly.JdbcTemplTest;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

import java.util.ArrayList;
import java.util.List;


/**
 * @author shkstart
 * @create 2019-05-14 12:35
 */
public class TestJdbc {
    /**
     * 连接数据库
     */

    private  ApplicationContext cxt=new ClassPathXmlApplicationContext("DataSource.xml");
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
    private  JdbcTemplate jdbcTemplate;
    private  RowMapper<User> rowMapper;
    {
        jdbcTemplate = (JdbcTemplate) cxt.getBean("jdbcTemplate");
        rowMapper = new BeanPropertyRowMapper<>(User.class);
        namedParameterJdbcTemplate = (NamedParameterJdbcTemplate) cxt.getBean("namedParameterJdbcTemplate");
    }
    /**
     * 跟新数据，可以进行insert、delete、update
     */
    @Test
    public void updateSql(){
        String sql="insert into user_info(username,password,phone) values(?,?,?)";
       jdbcTemplate.update(sql,"mom","8080","404");

    }

    /**
     * 查询数据库中某一条数据
     */
    @Test
    public void queryforObject(){
        String sql="select * from user_info where username=?";
        User user=jdbcTemplate.queryForObject(sql,rowMapper,"zly" );
        System.out.println(user);
    }

    /**
     * 批量更新，inset、update、delete
     *
     */
    @Test
    public void updateBath(){
        String sql="update user_info set username=? where uid=?";
        List<Object[]> batchArgs=new ArrayList<>();
        batchArgs.add(new Object[]{"tom",3});
        batchArgs.add(new Object[]{"cat",2});
        jdbcTemplate.batchUpdate(sql,batchArgs);
    }

    /**
     * 查询多条数据的集合，但是无法查找出引用另一个表的数据
     */
    @Test
    public void queryMulObject(){
        List<User> users=new ArrayList<>();
        String sql="select * from user_info ";
         users=jdbcTemplate.query(sql,rowMapper);
        System.out.println(users);
}

    /**
     * 使用具名参数，便于维护BeanPropertySqlParameterSource直接出入对象
     * 或者使用Map,传入键值对
     */
    @Test
    public void insertObject(){
        String sql="insert into user_info(username,password,phone) values(:username,:password,:phone)";
        User user=new User();
        user.setUsername("I");
        user.setPassword("fuck");
        user.setPhone("you");
        SqlParameterSource sqlParameterSource=new BeanPropertySqlParameterSource(user);
        namedParameterJdbcTemplate.update(sql,sqlParameterSource);
    }




}
