package online.qsx.service;

import com.github.pagehelper.PageInfo;
import online.qsx.model.Student;


/**
 * Created by 8888 on 2018/1/13.
 */
public interface StudentServer {
    //·ÖÒ³²éÑ¯
    PageInfo<Student> findAll(Student student,int pageNum);

    Student getStudent(Student student);

    Student findStudentById(Integer studentno);

    int save(Student student);

    int edit(Student student);

    int remove(Student student);

}
