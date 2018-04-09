package online.qsx.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.PageInterceptor;
import online.qsx.mapper.StudentMapper;
import online.qsx.model.Student;
import online.qsx.model.StudentCriteria;
import online.qsx.page.PageUtil;
import online.qsx.service.StudentServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StudentServerImpl implements StudentServer{
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public PageInfo<Student> findAll(Student student,int pageNum) {

        // 组装条件
        StudentCriteria studentCriteria=new StudentCriteria();
        if (student!=null){
            StudentCriteria.Criteria criteria=studentCriteria.createCriteria();
            if(student.getStudentname()!=null&&student.getStudentname().trim().length()>0) {
                criteria.andStudentnameLike("%" + student.getStudentname().trim() + "%");
            }

            if(student.getIdentitycard()!=null&&student.getIdentitycard().trim().length()>0){
                criteria.andIdentitycardLike("%"+student.getIdentitycard().trim()+"%");
            }
        }

        //分页查询 从第一页开始,每页显示4条数据
        PageHelper.startPage(pageNum, PageUtil.PAGE_SIZE);
        List<Student> students=studentMapper.selectByExample(studentCriteria);
        PageInfo<Student> pageInfo=new PageInfo<>(students);
        return pageInfo;
    }

    @Override
    public Student getStudent(Student student) {
        Student stu=null;
        if(student!=null){
            if(student.getStudentno() != null){
                stu= studentMapper.selectByPrimaryKey(student.getStudentno());
            }else if(student.getIdentitycard() != null && student.getIdentitycard().trim().length()>0){
                stu= studentMapper.selectByIdentitycard(student.getIdentitycard());
            }
        }
        return stu;
    }

    @Override
    public Student findStudentById(Integer studentno) {
        return studentMapper.selectByPrimaryKey(studentno);
    }

    @Override
    public int save(Student student) {
        return studentMapper.insert(student);
    }

    @Override
    public int edit(Student student) {
        StudentCriteria studentCriteria=new StudentCriteria();
        studentCriteria.createCriteria().andStudentnoEqualTo(student.getStudentno());
        return studentMapper.updateByExampleSelective(student,studentCriteria);
    }

    @Override
    public int remove(Student student) {
        return studentMapper.deleteByPrimaryKey(student.getStudentno());
    }
}
