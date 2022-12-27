use education;
/* 
#1
select * from subject;
*/

/* 
#2
select * from institute;
*/

/* 
#3
select DISTINCT stipendia from student;
*/

/* 
#4
select DISTINCT course from student;
*/

/* 
#5
select DISTINCT family, name, last_name, birthday from student ORDER BY family ASC;
select DISTINCT family, name, last_name, birthday from student ORDER BY name ASC;
select DISTINCT family, name, last_name, birthday from student ORDER BY last_name ASC;
select DISTINCT family, name, last_name, birthday from student ORDER BY birthday ASC;
*/

/* 
#6
select DISTINCT family, course, birthday from student ORDER BY course ASC;
select DISTINCT family, course, birthday from student ORDER BY birthday DESC;
*/

/* 
#7
select DISTINCT lect_id, family, name, last_name from lecturer;
*/

 
/*
#8
select family, name, last_name,birthday,stipendia from student where stipendia > 0 ORDER BY stipendia DESC, family ASC;
*/

/* 
#9
select  family, name, last_name,course from student where course=1 ORDER BY family;
*/

/* 
#10
select * from student where course = 2 or course = 3;
*/

/* 
#11
select * from student where course > 1 and course < 3 or course > 3;
select * from student where course NOT IN ('1', '3');
*/

/* 
#12
select DISTINCT subj_id, subj_name from exam, subject where mark = 5;
*/

/*
#13
select subj_name, knowledge.hour from subject, nagruzka, knowledge, exam 
where (subject.subj_id = knowledge.subj_id AND knowledge.kvant_id = nagruzka.kvant_id AND exam.nagr_id = nagruzka.nagr_id) AND exam.mark = 2 
GROUP BY subj_name, hour;
*/

/*
#14
select family, town_name, subj_name, mark from town, parents, student, subject, exam, knowledge, uch_plan  
where town.town_id = parents.town_id AND parents.student_id = student.student_id AND student.student_id = exam.student_id AND subject.subj_id = knowledge.subj_id 
AND knowledge.kvant_id = uch_plan.kvant_id AND uch_plan.Spec_id = student.Spec_id AND subj_name = 'бжд' AND mark > 2 AND town_name = 'Березовский'
GROUP BY family, town_name, subj_name, mark;
*/

/*
#15
select family, name, last_name, subj_name, mark from student, exam, nagruzka, knowledge, subject 
where subject.subj_id = knowledge.subj_id AND knowledge.kvant_id = nagruzka.kvant_id 
AND nagruzka.nagr_id = exam.nagr_id AND student.student_id = exam.student_id 
ORDER BY subj_name ASC, mark DESC, family ASC;
*/

/*
#16
select family, name, last_name, subj_name, mark from student, exam, nagruzka, knowledge, subject 
where subject.subj_id = knowledge.subj_id AND knowledge.kvant_id = nagruzka.kvant_id 
AND nagruzka.nagr_id = exam.nagr_id AND student.student_id = exam.student_id AND mark = 2 AND subj_name = 'экономика'
GROUP BY family, subj_name, mark, name, last_name ORDER BY family ASC;
*/

/*
#17
select family, name, last_name, name_medal, town_name from medali, medalist, student, parents, town
where medali.medal_id = medalist.medal_id AND medalist.student_id = student.student_id 
AND student.student_id = parents.student_id AND parents.town_id = town.town_id AND name_medal = 'золотая'
*/

/*
#18
select family, subj_name, exam_date from student, exam, nagruzka, knowledge, subject 
where subject.subj_id = knowledge.subj_id AND knowledge.kvant_id = nagruzka.kvant_id 
AND nagruzka.nagr_id = exam.nagr_id AND student.student_id = exam.student_id AND mark = 2
GROUP BY family, subj_name, exam_date ORDER BY subj_name, family;
*/

/*
#19
select family, subj_name, exam_date from student, exam, nagruzka, knowledge, subject 
where subject.subj_id = knowledge.subj_id AND knowledge.kvant_id = nagruzka.kvant_id 
AND nagruzka.nagr_id = exam.nagr_id AND student.student_id = exam.student_id AND mark = 2 AND (exam.exam_date = '2019-06-13' OR exam.exam_date = '2019-05-24')
GROUP BY family, subj_name, exam_date ORDER BY subj_name, family;
*/

/*
#20
select * from student, exam, nagruzka, lecturer, knowledge, subject
where student.student_id = exam.student_id AND exam.nagr_id = nagruzka.nagr_id AND nagruzka.lect_id = lecturer.lect_id AND nagruzka.kvant_id = knowledge.kvant_id
AND knowledge.subj_id = subject.subj_id;
*/

/*
#21
select inst_name from institute, lecturer, nagruzka, exam, knowledge
where institute.inst_id = lecturer.inst_id AND lecturer.lect_id = nagruzka.lect_id AND nagruzka.nagr_id = exam.nagr_id
AND nagruzka.kvant_id = knowledge.kvant_id AND hour > 80 AND mark = 2
GROUP BY inst_name

select * from exam, nagruzka, knowledge, subject
where exam.nagr_id = nagruzka.nagr_id AND nagruzka.kvant_id = knowledge.kvant_id AND knowledge.subj_id = subject.subj_id
*/