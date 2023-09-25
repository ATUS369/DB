select s.code as SemesterCode, st.id,st.name,st.department,c.code,c.title as CourseTitle
from Students st inner join enroll e on st.id=e.studentId
inner join semesters s on e.semesterId=s.id
inner join Courses c on e.courseId=c.id
where s.code in ('Fa2020') 
order by c.title desc,st.id asc




