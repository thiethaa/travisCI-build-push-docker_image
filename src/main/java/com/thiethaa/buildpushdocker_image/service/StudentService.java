package com.thiethaa.buildpushdocker_image.service;

import com.thiethaa.buildpushdocker_image.entity.Student;
import com.thiethaa.buildpushdocker_image.utils.StudentUtil;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    public Student addStudent(Student student){
        return student;
    }

    public List<Student> getStudents(){
        return StudentUtil.getStudents();
    }

}
