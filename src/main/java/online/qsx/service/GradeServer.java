package online.qsx.service;

import online.qsx.model.Grade;

import java.util.List;

/**
 * Created by 8888 on 2018/1/13.
 */
public interface GradeServer {

    List<Grade> getGrades(Grade grade);

    Grade findGradeId(Integer gradeid);

    Grade findGrade(Grade grade);

    int save(Grade grade);

    int eidt(Grade grade);

    int remove(Grade grade);
}
