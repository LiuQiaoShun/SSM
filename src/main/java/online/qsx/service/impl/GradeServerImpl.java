package online.qsx.service.impl;

import online.qsx.mapper.GradeMapper;
import online.qsx.model.Grade;
import online.qsx.model.GradeCriteria;
import online.qsx.service.GradeServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 8888 on 2018/1/13.
 */
@Service
public class GradeServerImpl implements GradeServer {
    @Autowired
    private GradeMapper gradeMapper;

    @Override
    public List<Grade> getGrades(Grade grade) {
        GradeCriteria gradeCriteria=new GradeCriteria();
        return gradeMapper.selectByExample(gradeCriteria);
    }

    @Override
    public Grade findGradeId(Integer gradeid) {
        return gradeMapper.selectByPrimaryKey(gradeid);
    }

    @Override
    public int save(Grade grade) {
        return gradeMapper.insert(grade);
    }

    @Override
    public int eidt(Grade grade) {
        return gradeMapper.updateByPrimaryKey(grade);
    }

    @Override
    public int remove(Grade grade) {
        return gradeMapper.deleteByPrimaryKey(grade.getGradeid());
    }

    @Override
    public Grade findGrade(Grade grade) {
        return gradeMapper.selectByPrimaryKey(grade.getGradeid());
    }
}
