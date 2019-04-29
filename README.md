# AE121: Computational Method (Spring, 2019)

|<img src="civil_engineer.png" width="250">| **Instructor:** Chul Min Yeum (E2-2313), cmyeum@uwaterloo.ca <br> **Class:** Monday and Tuesday, 2:30 to 4:00 PM at CPH 1319 <br> **Programming Lab:** Thursday, 9:30 to 11:30 AM at CPH 1346 <br> **TA:** Jason Connelly (E2-2313), jpconnelly@edu.uwaterloo.ca, Juan Park<br> **Office Hours (Instructor):** Monday and Tuesday, 4:00 to 5:00 PM at E2-2313 <br> **Office Hours (TA):** Monday to Friday 2:00 to 5:00 PM at E2-2313|
|:--------|:----------- |

**Last updated:** 2019-04-29

## Announcement  
**2019-04-25:** The course website is published.  
**2019-04-29:** The course materials are updated [**[Link]**](https://github.com/chulminy/AE121/compare/1c7792afa6007e5851ee085733aa25d4d3182c9a...master).       

## Table of Contents
- [Course Description](#course-description)
- [Course Objectives](#course-objectives)
- [Prerequisite](#prerequisite)
- [Course Textbook](#course-textbook)
- [Course Outline](#course-outline)
- [Programming Labs](#programming-labs)
- [Homework Assignments](#homework-assignments)
- [Communication](#communication)
- [Grading](#grading)
- [Note](#note)

## Course Description
This course offers a practical introduction to computer programming for engineering students using MATLAB. MATLAB is an easy and readable programming language and is an excellent choice for those learning programming for the first time. This course will cover various topics including programming fundamentals, matrix operations, file I/O, numerical methods, and data visualization. Students who successfully complete this course will gain a fundamental understanding of computer programming techniques and apply to operate, analyze, and visualize all types of data.  

This course incorporates two new learning tools in MATLAB to enhance programming-learning environment: [**Live Editor**](https://www.mathworks.com/products/matlab/live-editor.html) and [**MATLAB Grader**](https://www.mathworks.com/products/matlab-grader.html). The *Live Editor* is a scripting platform to create, edit and run MATLAB scripts as well as add formatted text, images, and equations so that students can learn programing in more informative and interactive ways. A tutorial for each topic is provided in the Live Editor format. Next, programming lab and homework assignments will be designed using the MATLAB Grader. This tool allows students instant feedback on the correctness of their solutions through the pre-designed testers. Thus, students can be highly motivated and inspired to persevere with completing the assignments. You are expected to spend 8 hours a week studying class materials as well as working on the programming lab and homework assignments. 

Throughout the course, there are tutorials, programming labs, and homework assignments: 
* [**Lectures**](#course-outline) will cover the major topics, emphasizing and discussing the important points, and programming examples in tutorials. 
* [**Tutorials**](#course-outline) are intended to review the lectures and prepare for programming lab and homework assignments.
* [**Programming-labs**](#programming-labs) provide an opportunity to practice writing and debugging programs with TA’s and instructor’s assistance.  
* [**Homework assignments**](#homework-assignments) are to provide additional practice for programming and evaluate your knowledge and programming skills

## Course Objectives
By the end of this course, students should be able to  
* Define your problems with programmable logic in MATLAB 
* Compose working, efficient, and readable code in various ways
* Debug your code to identify and fix programming errors
* Identify suitable keywords to search for code snippets on the web
* Apply MATLAB to solve mathematical and engineering problems   

### Tip 1: How to improve your programming skills 
* Step 1: Ensure your program run without errors or warnings  
* Step 2. Understand a model solution provided (e.g., program logic, useful built-in functions, programming styles)
* Step 3. Consider how to modify/improve your own programs
* Step 4. Re-write your program from scratch without copying solutions

### Tip 2: How to complete this course with over 90 
* Review lecture slides and tutorials before attending programming labs
* Submit all lab and homework assignments
* Do not skim the code in tutorials and assignment solutions. Type and run all scripts in your editor to familiarize yourself with the syntax  
* Post **at least one question** on a course website every week and help/teach other students
* Replicate built-in functions with your own code
* Employ a MATLAB editor, workspace browser, and debugging tool actively
* Vectorize your code without loop and selection statements  
* Use MATLAB instead of MS Excel, Wolfram|Alpha, or a calculator to complete your tasks

## Prerequisite
"Linear algebra" (AE 115) and "Calculus 1 for Engineering" (MATH 116) are prerequisites for this course, which you learned in the 1A term. If you are not familiar with these topics, please review corresponding course notes or tutorials. 

## Course Textbook 
This course is not based on any particular textbook. However, lecture slides have been prepared using the following references:
* Attaway, Stormy. *"MATLAB-A Practical Introduction to Programming and Problem Solving,"* Elsevier, 2018.
* Moore, Holly. *"MATLAB for Engineers,"* Pearson, 2017.

## Course Outline
|Class|Topics|Slide & Tutorial|
|:----|:-----|:----:|
|Class 01|**Introduction (MATLAB and Course)**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;|
|Class 02|**Basic MATLAB Programming**|[**Link**](lecture/basic_matlab_programming)|
|Class 03|**Vector & Matrices I**||<!---[**Link**](lecture/vector_matrices)|-->
|Class 04|**Vector & Matrices II**||
|Class 05|**Built-in Functions I**||<!---[**Link**](lecture/built_in_function)|-->
|Class 06|**Built-in Functions II**||
|Class 07|**Review Class**|&nbsp;|
|Class 08|**Selection Statement**||<!---[**Link**](lecture/selection_statement)|-->
|Class 09|**Loop Statement**||<!---[**Link**](lecture/loop_statement)|-->
|Class 10|**Function**|&nbsp;|
|Class 11|**Text Manipulation**|&nbsp;|
|Class 12|**Review Class**|&nbsp;|
|Class 13|**Plotting**|&nbsp;|
|Class 14|**Data Structure**|&nbsp;|
|Class 15|**File I/O**|&nbsp;|
|Class 16|**Symbolic Function**|&nbsp;|
|Class 17|**Matrix Algebra**|&nbsp;|
|Class 18|**Review Class**|&nbsp;|
|Class 19|**Numerical Technique I**|&nbsp;|
|Class 20|**Numerical Technique II**|&nbsp;|
|Class 21|**Advanced Topic I: Advanced Function**|&nbsp;|
|Class 22|**Advanced Topic II: Pseudocode**|&nbsp;|
|Class 23|**Advanced Topic III: Graphics**|&nbsp;|
|Class 24|**Review Class**|&nbsp;|

## Programming Labs 
There will be ten programming labs and nine lab assignments. The lab assignments are designed to help understand course materials as well as build programming capabilities. Students are supposed to complete all tasks and turn in their works **by the end of the lab (11:30 am)**. ***The instructor and two TAs will actively help complete the task within each lab session.*** Attendance in the labs is **not required**, but students who do not attend/are absent from the labs for any reason **must submit the lab assignment before the lab starts (9:30 am)**. 
The TA will check their submission status for absent students at **10:30 am** in each lab. **No late submission will be accepted for absent students.**     

|Lab|Topic|Starting Date|Lab Date|Due Date|Solution|
|:----|:-----|:-----|:----|:----|:----| 
|Lab 01|[**Getting Started with MATLAB**](lab/lab01)|May 6|May 9|**No submission**||
|Lab 02|**Vectors & Matrices**|May 11|May 16|May 16 at 11:30 am||
|Lab 03|**Built-in Functions**|May 18|May 23|May 23 at 11:30 am||
|Lab 04|**Selection and Loop Statement**|May 25|May 30|May 30 at 11:30 am||
|Lab 05|**Function**|June 1|June 6|June 6 at 11:30 am||
|Lab 06|**Plotting**|June 8|June 13|June 13 at 11:30 am||
|Lab 07|**File I/O**|June 15|June 20|June 20 at 11:30 am||
|Lab 08|**Matrix Algebra**|June 29|July 4|July 4 at 11:30 am||
|Lab 09|**Numerical Technique**|July 6|July 11|July 11 at 11:30 am||
|Lab 10|**Advanced Topic I**|July 13|July 18|July 18 at 11:30 am||
|Lab 11|**Advanced Topic II**|July 20|July 25|July 25 at 11:30 am||

## Homework Assignments 
Students should be encouraged to work in groups through collaborative learning, but to submit their assignments individually. Students **must not share their solutions with other students**. The TA will run software to check your scripts to detect plagiarism. Please do not think that you may be able to deceive graders. Although you pass all the problems in MATLAB Grader, you will get a 0 grade if your solution is considered plagiarism. Each homework will be uploaded on Saturday night and must be submitted before the Monday class on the following week (ten days). After the due date, homework assignment online will be closed, and you are not able to submit your works. Again, **no late submission is accepted**, and any missed homework will be given a grade of 0. Thus, students who are not able to submit their assignment must inform the TA in advance with an email or at the office hour if you have a valid excuse. 

|HW|Topic|Starting date|Due date|Solution|
|:---|:-----|:----|:-----|:----|
|HW 01|**Vectors & Matrices**|May 11 at 00:00 am|May 20 at 02:30 pm||
|HW 02|**Built-in Functions**|May 18 at 00:00 am|May 27 at 02:30 pm||
|HW 03|*TBD*|May 25 at 00:00 am|June 3 at 02:30 pm||
|HW 04|*TBD*|June 1 at 00:00 am|June 10 at 02:30 pm||
|HW 05|*TBD*|June 8 at 00:00 am|June 17 at 02:30 pm||
|HW 06|*TBD*|June 15 at 00:00 am|June 24 at 02:30 pm||
|HW 07|*TBD*|June 22 at 00:00 am|July 8 at 02:30 pm||
|HW 08|*TBD*|July 6 at 00:00 am|July 15 at 02:30 pm||
|HW 09|*TBD*|July 13 at 00:00 am|July 22 at 02:30 pm||
|HW 10|*TBD*|July 20 at 00:00 am|July 29 at 02:30 pm||

## Communication  
**All communication will be made through [this course website](https://github.com/chulminy/AE121)**, especially for this web page. The instructor will frequently make a note in the ["Announcement"](#announcement) section after updating the web page. Students can configure email notification for by ["watching"](https://help.github.com/articles/watching-and-unwatching-repositories/) this course website or use a version control system for tracking its changes (The link will be provided on every announcement to track the changes). Thus, **students are responsible for checking the website regularly** for any relevant course information or announcements. We will post an important announcement through LEARN, but LEARN will be only used for such announcement notification. Lecture slides, homework assignments, tutorials, and solutions are only accessible through this course website. 

In this course, the instructor, TAs, and the students are encouraged to engage in online discussions to create and facilitate a **collaborative learning experience**. Students are invited to ask questions and answer them and share their knowledge and resources. **Please direct your communications to the** [***Issues***](https://github.com/chulminy/AE121/issues) **board (tab) on this website.** However, if there is a good reason not to use the discussion forum (e.g., personal matters, a question that might reveal your solution of your report, etc.), please directly contact the TA via email (jpconnelly@edu.uwaterloo.ca) or use the office hours. 

[**Discussion forum instruction**](#discussion-forum-instruction)

## Grading  
The final grade will be based on the total marks earned from two exams (midterm and final), nine programming lab assignments, and ten homework assignments. Percentages of the grade components are provided as:

* **Programming lab assignments** (20%)
* **Homework assignments** (20%)
* **Midterm exam** (25%)
* **Final exam** (35%) 

Note that assignments and exams are cumulative. 


## Note
### Academic integrity
In order to maintain a culture of academic integrity, members of the University of Waterloo community are expected to promote honesty, trust, fairness, respect and responsibility. [Check <a href="https://uwaterloo.ca/academic-integrity/">the Office of Academic Integrity</a> for more information.]</p>

### Grievance 
A student who believes that a decision affecting some aspect of his/her university life has been unfair or unreasonable may have grounds for initiating a grievance. Read <a href="/secretariat-general-counsel/node/100">Policy 70, Student Petitions and Grievances, Section 4</a>. When in doubt, please be certain to contact the department’s administrative assistant who will provide further assistance.</p>

### Discipline
A student is expected to know what constitutes academic integrity to avoid committing an academic offence, and to take responsibility for his/her actions. [Check <a href="https://uwaterloo.ca/academic-integrity/">the Office of Academic Integrity</a> for more information.] A student who is unsure whether an action constitutes an offence, or who needs help in learning how to avoid offences (e.g., plagiarism, cheating) or about “rules” for group work/collaboration should seek guidance from the course instructor, academic advisor, or the undergraduate associate dean. For information on categories of offences and types of penalties, students should refer to <a href="/secretariat-general-counsel/node/97">Policy 71, Student Discipline</a>. For typical penalties, check <a href="/secretariat-general-counsel/node/131">Guidelines for the Assessment of Penalties</a>.</p>

### Appeals
A decision made or penalty imposed under <a href="/secretariat-general-counsel/node/100">Policy 70, Student Petitions and Grievances</a> (other than a petition) or <a href="/secretariat-general-counsel/node/97">Policy 71, Student Discipline</a> may be appealed if there is a ground. A student who believes he/she has a ground for an appeal should refer to <a href="/secretariat-general-counsel/node/99">Policy 72, Student Appeals</a>.</p>

### Note for students with disabilities 
<a href="https://uwaterloo.ca/disability-services/">AccessAbility Services</a>, located in Needles Hall, Room 1401, collaborates with all academic departments to arrange appropriate accommodations for students with disabilities without compromising the academic integrity of the curriculum. If you require academic accommodations to lessen the impact of your disability, please register with AccessAbility Services at the beginning of each academic term.</p>

### Turnitin.com
Text matching software (Turnitin®) may be used to screen assignments in this course. Turnitin® is used to verify that all materials and sources in assignments are documented. Students' submissions are stored on a U.S. server, therefore students must be given an alternative (e.g., scaffolded assignment or annotated bibliography), if they are concerned about their privacy and/or security. Students will be given due notice, in the first week of the term and/or at the time assignment details are provided, about arrangements and alternatives for the use of Turnitin in this course.</p>

<p>It is the responsibility of the student to notify the instructor if they, in the first week of term or at the time assignment details are provided, wish to submit alternate assignment.</p>

## Supplement

### Discussion forum instruction
- To post questions or comments, students should make their own Github account. **Students do not need to make their accounts using school emails if they already have accounts or they would have anonymity.**
- Please be respectful of your peers, instructor, and others in your posts and comments.
- Asking good questions is another way of learning by summarizing and explaining what you know and do not know. Thoughtful questions and answers will help all students in this class. Before posting a question, please ask yourself whether you are truly stuck (meaning that the answers can be readily found on the web) and your question are complete and legible. 
- In addition, please check if the same question was asked before.   
- Inappropriate posts and comments will be immediately deleted and closed without a notice.   
