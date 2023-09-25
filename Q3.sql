select a.id as AssessmentId, a.type,a.name,a.[percent],c.title as CourseTitle
from Courses c inner join Assessments a on c.id=a.courseId
where c.title in ('Introduction to Databases')