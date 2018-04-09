package online.qsx.controller;

import com.alibaba.fastjson.JSONObject;
import online.qsx.model.Grade;
import online.qsx.model.Student;
import online.qsx.service.GradeServer;
import online.qsx.service.StudentServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by 8888 on 2018/1/13.
 */
@Controller
@RequestMapping("student")
public class StudentController {
    @Autowired
    private StudentServer studentServer;

    @Autowired
    private GradeServer gradeServer;


    //http://localhost:8080/SSM/student/list
    @RequestMapping(value = "list",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView list(ModelAndView mav,Student student,@RequestParam(defaultValue = "1") int pageNum){
        mav.addObject("student",student);
        mav.addObject("pageNum",pageNum);
        mav.addObject("pageInfo",studentServer.findAll(student,pageNum));
        mav.setViewName("student/list");
        return mav;
    }

    @RequestMapping(value = "info",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView info(ModelAndView mav,Student student){
        mav.addObject("student",studentServer.getStudent(student));
        mav.setViewName("student/info");
        return mav;
    }

    @RequestMapping(value = "to_edit",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView to_edit(ModelAndView mav,Student student,Grade grade){
        mav.addObject("obj",studentServer.getStudent(student));
        mav.addObject("grades",gradeServer.getGrades(grade));
        mav.setViewName("student/edit");
        return mav;
    }

    @RequestMapping(value = "do_edit",method = {RequestMethod.GET,RequestMethod.POST})
    public String do_edit(Student student){
        studentServer.edit(student);
        return "redirect:list";
    }

    //http://localhost:8080/SSM/student/to_save
    @RequestMapping(value = "to_save",method = {RequestMethod.GET,RequestMethod.POST})
    public String to_save(){
        return "student/add";
    }

    //http://localhost:8080/SSM/student/do_saveStudent
    @PostMapping("do_saveStudent")
    public String do_saveStudent(Student student){
        System.out.println(student);
        studentServer.save(student);
       return "redirect:list";
    }

    //http://localhost:8080/SSM/student/remove
    @RequestMapping(value = "remove",method = {RequestMethod.GET,RequestMethod.POST})
    public String remove(Student student){
        studentServer.remove(student);
        return "redirect:list";
    }

    //http://localhost:8080/SSM/student/findGrade
//    @PostMapping(value = "findGrade",produces = "text/html;charset=UTF-8")
//    @ResponseBody
//    public String findGrade(Integer studentno){
//        Student student=studentServer.findStudentById(studentno);
//        Grade grade=gradeServer.findGradeId(student.getGradeid());
//
//        JSONObject json=new JSONObject();
//        json.put("gradeid",grade.getGradeid());
//        json.put("gradename",grade.getGradename());
//        return json.toString();
//    }

    @RequestMapping(value = "findGrade",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Grade findGrade(Integer studentno){
        System.out.println("findGrade");
        Student student=studentServer.findStudentById(studentno);
        System.out.println(student);
        Grade grade=gradeServer.findGradeId(student.getGradeid());
        System.out.println(grade);
        return grade;
    }


    @RequestMapping(value = "queryStudentno",method = {RequestMethod.POST})
    @ResponseBody
    public String queryStudentno(Integer studentno,Student student,String mess){
        student=studentServer.getStudent(new Student(studentno));
        if(student==null){
            mess="false";
        }else {
            mess="true";
        }
        System.out.println(studentno);
        return mess;
    }

    @RequestMapping(value = "queryIdentityCard",method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody
    public String queryIdentityCard(String identitycard,Student student,String mess){
        student=studentServer.getStudent(new Student(identitycard));
        if(student==null){
            mess="false";
        }else {
            mess="true";
        }
        System.out.println(identitycard);
        return mess;
    }
}
