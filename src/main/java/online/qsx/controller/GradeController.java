package online.qsx.controller;

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
@RequestMapping("grade")
public class GradeController {
    @Autowired
    private StudentServer studentServer;

    @Autowired
    private GradeServer gradeServer;

    /**
     * 查询所有年级信息
     * @param mav
     * @param grade
     * @return
     */
    @RequestMapping(value = "toStudentAdd",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView toStudentAdd(ModelAndView mav,Grade grade){
        mav.addObject("grade",gradeServer.getGrades(grade));
        mav.setViewName("student/add");
        return mav;
    }

    @RequestMapping(value = "queryGrade",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView queryGrade(ModelAndView mav,Grade grade){
        mav.addObject("grades",gradeServer.getGrades(grade));
        mav.setViewName("grade/list");
        return mav;
    }

    @RequestMapping(value = "getGrades",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView getGrades(ModelAndView mav,Grade grade){
        mav.addObject("grade",gradeServer.getGrades(grade));
        mav.setViewName("grade/add");
        return mav;
    }

    @RequestMapping(value = "info",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView info(ModelAndView mav,Grade grade){
        mav.addObject("grade",gradeServer.findGradeId(grade.getGradeid()));
        mav.setViewName("grade/info");
        return mav;
    }

    @RequestMapping(value = "to_edit",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView to_edit(ModelAndView mav,Grade grade){
        mav.addObject("grade",gradeServer.findGradeId(grade.getGradeid()));
        mav.setViewName("grade/edit");
        return mav;
    }

    @RequestMapping(value = "do_edit",method = {RequestMethod.GET,RequestMethod.POST})
    public String do_edit(Grade grade){
        gradeServer.eidt(grade);
        return "redirect:queryGrade";
    }

    @RequestMapping(value = "remove",method = {RequestMethod.GET,RequestMethod.POST})
    public String remove(Grade grade){
        gradeServer.remove(grade);
        return "redirect:queryGrade";
    }

    @RequestMapping(value = "to_save",method = {RequestMethod.GET,RequestMethod.POST})
    public String to_save(){
        return "grade/add";
    }

    @PostMapping("do_save")
    public String do_save(Grade grade){
        gradeServer.save(grade);
        return "redirect:queryGrade";
    }

    @RequestMapping(value = "AjaxGradeId",method = {RequestMethod.POST})
    @ResponseBody
    public String AjaxGradeId(Integer gradeid,Grade grade,String mess){
        grade=gradeServer.findGrade(new Grade(gradeid));
        if(grade==null){
            mess="false";
        }else {
            mess="true";
        }
        System.out.println(grade);
        return mess;
    }
}
