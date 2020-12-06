@ignore
Feature: connection to database

Background:
# use jdbc to validate
* def config = { username: 'root', password: '1234', url: 'jdbc:mysql://localhost:3306/telusko', driverClassName: 'com.mysql.jdbc.Driver' }
* def DBUtils = Java.type('karateDemo.features.DBUtils2')
* def db = new DBUtils(config)

Scenario:
* def students = db.readRows('select * from student')
Then print 'student records--', students
* def studentName = db.readValue('select name from student where Student_ID=1')
Then print 'student Name--', studentName
* def studentDetails = db.readRow('select * from student where Student_ID=1')
Then print 'student Detail--', studentDetails
* def insertRecord = db.insertRows("insert into student(Student_ID, name, college) values(3, 'deepak', 'ggsipu' )")
* def newRecordDetail = db.readRow('select * from student where Student_ID=3')
Then print 'new Record Detail--', newRecordDetail