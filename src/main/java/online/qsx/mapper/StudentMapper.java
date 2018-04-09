package online.qsx.mapper;

import java.util.List;
import online.qsx.model.Student;
import online.qsx.model.StudentCriteria;
import org.apache.ibatis.annotations.Param;

public interface StudentMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    int countByExample(StudentCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    int deleteByExample(StudentCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    int deleteByPrimaryKey(Integer studentno);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    int insert(Student record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    int insertSelective(Student record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    List<Student> selectByExample(StudentCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    Student selectByPrimaryKey(Integer studentno);


    Student selectByIdentitycard(String identitycard);


    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    int updateByExampleSelective(@Param("record") Student record, @Param("example") StudentCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    int updateByExample(@Param("record") Student record, @Param("example") StudentCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    int updateByPrimaryKeySelective(Student record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Sat Jan 13 15:50:48 CST 2018
     */
    int updateByPrimaryKey(Student record);
}