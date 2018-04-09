package online.qsx.test;

import online.qsx.mapper.StudentMapper;
import online.qsx.model.Student;
import online.qsx.model.StudentCriteria;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

/**
 * Created by 8888 on 2018/1/12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"classpath:applicationContext-mybatis.xml"})
public class TestSpring_myBatis {
    @Autowired
    private StudentMapper studentMapper;

    @Test
    public void findAllStudentById(){
        StudentCriteria studentCriteria=new StudentCriteria();
        StudentCriteria.Criteria criteria=studentCriteria.createCriteria();
        criteria.andStudentnameLike("%张%");
        List<Student> students=studentMapper.selectByExample(studentCriteria);
        students.stream().forEach(student -> System.out.println(student));
    }
    @Test
    public void saveStudent(){
        int row=studentMapper.insertSelective(new Student("123456","竞争","男",12,"123456","123456",new Date(),"3307824998@qq.com","15487877989"));
        System.out.println(row>0?"增加成功":"增加失败");
    }

    @Test
    public void removeStudent(){
        int row=studentMapper.deleteByPrimaryKey(10011);
        System.out.println(row>0?"增加成功":"增加失败");
    }
}
