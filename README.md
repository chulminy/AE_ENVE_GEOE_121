# AE/ENVE/GEOE121: Computational Method (S2024)

|<img src="doc/img/civil_engineer.png" height="200">|**Instructor:** Chul Min Yeum (cmyeum@uwaterloo.ca) <br> **TA:** Seth Baily  (shpbaile@uwaterloo.ca) <br> **Class (AE121):** M&W (10:30-11:30 AM) & T (8:30-9:30 AM) at CPH-3604  <br> **Class (EG121):** T (3:30-5:00 PM) & W (2:30-4:00 PM) at E2-1732 <br> **Programming Lab (AEG121):** Mon (3:00 to 6:00 PM) at CPH 1346 <br> <br> **Office hours (TA)**: Visit the WEEF TA office (E2-1787) <br> **Office hours (Instructor)**: After each class or by appointment|
|:--------|:-----------|

**Previous offerings of this course**
- [**Computational Method (Spring, 2022)**](old/s2022)
- [**Computational Method (Winter, 2022)**](old/w2022)
- [**Computational Method (Spring, 2021)**](old/s2021)
- [**Computational Method (Spring, 2020)**](old/s2020)
- [**Computational Method (Spring, 2019)**](old/s2019)

**Key links**
- [**LEARN**]()
- [**MATLAB Grader- (S24) AE/ENVE/GEOE 121: Homework**](https://grader.mathworks.com/courses/139771)
- [**MATLAB Grader- Tutorial: Computational Method**](https://grader.mathworks.com/courses/18318)
<!-- 
- [**MATLAB Grader- Quizzes in previous years**](https://grader.mathworks.com/courses/63504-quizzes-in-previous-years-computational-method)
- [**MATLAB Grader- (S22) AE 121: Quizzes**](https://grader.mathworks.com/courses/76605-s22-ae-121-quizzes)
- [**MATLAB Grader- (S22) ENVE/GEOE 121: Quizzes**](https://grader.mathworks.com/courses/76610-s22-enve-geoe-121-quizzes)
-->

- [**FAQ document**](qna)
- [**Course material**](comp_method_book_cm_s21.pdf)

**Folders**   
- [**Class materials**](tutorial/CLASS)   

## Announcement

## Table of Contents
- [Course Description](#course-description)
- [Course Objectives](#course-objectives)
- [Study Guide](#study-guide)
- [Prerequisites](#prerequisites)
- [Course Textbook](#course-textbook)
- [Course Outline](#course-outline)
- [Course Attendance](#course-attendance)
- [Course Calendar](#course-calendar)
- [Tutorial](#tutorial)
- [Programming Lab](#programming-lab)
- [Quiz](#quiz)
- [Policy for Cheating](#policy-for-cheating)
- [Homework Assignment](#homework-assignment)
- [Communication](#communication)
- [Grading](#grading)
- [Note](#note)

## Course Description
This course introduces computer programming for engineering students using MATLAB. MATLAB is an easy and readable programming language and is an excellent choice for those who are learning programming for the first time. This course will cover various topics including programming fundamentals, matrix operations, and data visualization. Students who complete this course will gain a fundamental understanding of computer programming techniques and be able to operate, analyze, and visualize all types of data for future engineering studies. **Remember that this course is not a simple MATLAB tutorial course.** It is an introductory programming course that utilizes MATLAB to illustrate general concepts in computer programming.  

This course includes lectures, tutorials, homework assignments, and quizzes:
* [**Lectures**](#course-outline) are to cover the major topics, discussing the important programming concepts with worked-out examples. The instructor will teach the [*course material*](comp_method_book_cm_s21.pdf). 
* [**Tutorials**](#tutorial) are **self-study** resources to assist students to solve the problems in the course material, homework assignments, and quizzes. Students can find the problems on [*Tutorial: Computational Method*](https://grader.mathworks.com/courses/18318-tutorial-computational-method) in the MATLAB Grader.       
* [**Homework assignments**](#homework-assignment) are to provide practice for programming and evaluate your progress on the understanding of the course material. The homework assignments will be posted on [*(S24) AE/ENVE/GEOE 121: Homework*](https://grader.mathworks.com/courses/139771-s24-ae-enve-geoe-121-homework) in the MATLAB Grader.
* [**Quizzes**](#quiz) are to evaluate your knowledge and programming skills. There will be four quizzes over the course. 

## Course Objectives
By the end of this course, students should be able to  
* Develop MATLAB programming logics to solve problems. 
* Compose working, efficient, and readable MATLAB scripts in various ways.
* Debug your code to identify and fix programming errors.
* Identify suitable keywords to search for code snippets on the web.
* Apply MATLAB to write your own program (very important).
* (newly added) Explain programming logics to use GenAI
* (newly added) Read the existing MATLAB scripts

## Study Guide
* Attend all lectures. There are [video recordings of all lecture modules](#lecture-video) so you can review them if you do not understand the lectures clearly.    
* Solve problems in the course materials and tutorials by yourself (please follow [the following instruction](#tutorial)).
* Type and run all scripts of sample solutions in the course material and tutorial videos. Never skim the code.  
* Make online engagement through **LEARN** or or ask for help from TA.   
* Watch tutorial videos to check your answers to the problems.
* Employ an editor, Workspace browser, and debugging tool to solve the problems (not on MATLAB Grader). 

**Special Guide: Generative artificial intelligence**
You may utilize generative AI tools to assist with your homework and studies. However, it's important that you first attempt to solve the problems on your own and then compare your solutions with those generated by the AI. This approach ensures you enhance your programming skills. Please note that the use of generative AI tools is not permitted during quizzes. 

## Prerequisites
"Linear algebra" (AE/CIVE/ENVE/GEOE 115) is a prerequisite for this course, which you  already learned in the 1A term. If you are not familiar with these topics, please review corresponding lecture slides or tutorials. 

* [**How to use MATLAB Grader?**](doc/matlab_grader)
* [**How to download and install MATLAB on your computer?**](doc/matlab_install)

## Course Textbook 
This course is not based on any particular textbook. However, the [course materials](comp_method_book_cm_s21.pdf) have been prepared using the following two references:
* Attaway, Stormy. *"MATLAB-A Practical Introduction to Programming and Problem Solving,"* Elsevier, 2018.
* Moore, Holly. *"MATLAB for Engineers,"* Pearson, 2017.

## Course Outline
All lectures will be delivered in person. The lectures will cover the course materials (You can download it from [**here**](comp_method_book_cm_s21.pdf)), developed by the instructor. Homework assignments and quizzes are all cumulative. The assignments and quizzes to be covered are based on the knowledge from the current and all previous modules. 

Lectures are to deliver fundamental knowledge and information in each module and **are not to give a direction on how to solve your homework assignments or quizzes**. However, all the practice problems were designed based on the course materials. Thus, if students do not find the relevance between them, they have not understood lectures yet and should carefully review them again. 

### Schedule
|Module|Topics|Hours (cumsum)|[Quiz](#quiz)| 
|:-----|:-----|:--:|:-----------:|
|**Module 00**|Preliminaries|1 (1)||
|**Module 01**|Basic MATLAB Programming|3 (4)||
|**Module 02**|Vectors and Matrices|3 (7)|Quiz 01|
|**Module 03**|Selection Statement |3 (10)||
|**Module 04**|Loop Statement|3 (13)|Quiz 02|
|**Module 05**|Built-in Functions|3 (16)||
|**Module 06**|Operator|4 (20)||
|**Module 07**|Function|4 (24)|Quiz 03|
|**Module 08**|Plotting|1 (25)||
|**Module 09**|Data Structure|3 (28)|
|**Module 11**|Text Manipulation|3 (31)|Quiz 04|

### Lecture Video 
Students can watch lecture videos for each module. 

|Module|Video| 
|:----|:----|
|**Module 00**|[<img src="http://img.youtube.com/vi/65e-4AVwE4s/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=65e-4AVwE4s) [<img src="http://img.youtube.com/vi/1zDLYaxqKHE/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=1zDLYaxqKHE)|
|**Module 01**| [<img src="http://img.youtube.com/vi/-vJBm23Wk6k/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=-vJBm23Wk6k)  [<img src="http://img.youtube.com/vi/ObDfOQkglSo/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=ObDfOQkglSo)|
|**Module 02**| [<img src="http://img.youtube.com/vi/83HysRVk5Zg/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=83HysRVk5Zg) [<img src="http://img.youtube.com/vi/5rP8F1pwggA/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=5rP8F1pwggA)|
|**Module 03**| [<img src="http://img.youtube.com/vi/6zSqabjvOJM/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=6zSqabjvOJM)|
|**Module 04**| [<img src="http://img.youtube.com/vi/VLzROWaeJQY/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=VLzROWaeJQY)  [<img src="http://img.youtube.com/vi/lnKsXv7fsys/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=lnKsXv7fsys)|
|**Module 05**|[<img src="http://img.youtube.com/vi/o-Z_DiDkwGs/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=o-Z_DiDkwGs)  [<img src="http://img.youtube.com/vi/Rj6P1iDoqZw/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=Rj6P1iDoqZw)|
|**Module 06**|[<img src="http://img.youtube.com/vi/3btxqXW6JjU/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=3btxqXW6JjU)  [<img src="http://img.youtube.com/vi/lCkpP0HTS1I/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=lCkpP0HTS1I)|
|**Module 07**|[<img src="http://img.youtube.com/vi/otwRHFWzsH0/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=otwRHFWzsH0)  [<img src="http://img.youtube.com/vi/Wna92qy3PyE/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=Wna92qy3PyE)|
|**Module 08**|**No Lecture Video**|
|**Module 09**|[<img src="http://img.youtube.com/vi/R_lxqZWc1rs/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=R_lxqZWc1rs)  [<img src="http://img.youtube.com/vi/VmGPrzd7pik/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=VmGPrzd7pik)|
|**Module 11**|[<img src="http://img.youtube.com/vi/qubtDteNV38/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=qubtDteNV38)  [<img src="http://img.youtube.com/vi/NgntRda2sCY/0.jpg" width = "150" height="120">](https://www.youtube.com/watch?v=NgntRda2sCY)|

## Course Attendance
Students have to attend all classes to receive 12 point attendance scores. The attendance will be checked using Kahoot game sessions. There are several Kahoot game sessions across the classes. Among them, I will check the attendance only for 8 sessions. I will check the attendance at the class when the student participation is low. 

Students receive 2.4 points if they simply **join the kahoot sessions** in that day. The maximum score that students will receive from these games is 12, which mean students can get a full mark (12 points) if they join at least 5 sessions that the intructors accounts the attendance. This considers unavoidable absence, such as illness, job interview. The students need to bring their cell phones or laptops to join these games. If students did not bring the phone or laptop or its battery is out, students must inform TA before starting the game. 

Again, students **DO NOT HAVE TO** inform TA or instructor for their absent in the session that checks the attendance. No matter the reason, students **cannot** get the point if they do not join the game during the class. Students can still get a full attendance mark although they miss one or two classes (games). Thus, we will **not arrange a special accommodation for the attendance.** Please do not send an email to the instructor or TA to explain your absent.   

To participate the game, the instructor will show the students a game pin number. 

* Step 1: Go to the Kahoot! website [https://kahoot.it/](https://kahoot.it/) and type a pin number. The instructor will show the pin number in each game. 
* Step 2: Type your university email address
* Step 3: **Type your nick name as your first name**.  
* Step 4. You are ready for joining the game    

|![](doc/img/kahoot_step1.png)|![](doc/img/kahoot_step2.png)|
|:--------:|:-----------:|
|**Step 1**|**Step 2**|
|![](doc/img/kahoot_step3.png)|![](doc/img/kahoot_step4.png)|
|**Step 3**|**Step 4**|

We will update your attendance record in LEARN. If the record is not correct, please send an email to TA. When students check the attendance by dishonest means (e.g. a student present at a class join the game using more than one account, remotely access the game using a pin number, informed by a student present at a class), they are considered as an academic offense and receive 0 for **all attendance score**. And they are disciplined by [Policy for Cheating](#policy-for-cheating)    

## Course Calendar
|![](doc/calendar/May2024.jpg) |
|:---:|
|![](doc/calendar/June2024.jpg) | 
|![](doc/calendar/July2024.jpg) | 


## Tutorial
The tutorials are self-study resources to assist students in the problems of course material, homework assignments, and quizzes. Students can find the problems on [**Tutorial: Computational Method**](https://grader.mathworks.com/courses/18318-tutorial-computational-method) in the MATLAB Grader. The model answers for all tutorial problems were posted on this [**page**](tutorial). All students are **highly recommended** to solve practice problems to prepare for your quizzes. Here is how to study the tutorial. 

* **Step 1.** Understand a problem listed on each Module in MATLAB Grader: You need to carefully read the description of problems on [**Tutorial: Computational Method**](https://grader.mathworks.com/courses/18318-tutorial-computational-method) or from this [page](tutorial).

* **Step 2.** Write your own script to solve the problems: You should use a MATLAB program and write your own program to solve the question. You need to do practice on debugging to fix errors on your code if necessary. Please do not look at the model answer or watch the solution video before you make your own script.  

* **Step 3.** Copy and paste your script to the MATLAB Grader: If you think your script is ready for testing, copy and paste the script to the MATLAB Grader. Click "Run Script" first to check out any syntax or run-time errors (if you already check this on the MATLAB program, you should not see the error message). 

* **Step 4.** Submit your solution: Many tests (assessments) were pre-designed to evaluate the correctness of your solution. You need to ensure that your solution passes all the tests. However, you should not do hard coding to pass the tests. Developing the right logic on your code is much more important than passing the test. For example, many students got zero on problems in the quizzes last year, although they pass all tests. Passing the test is just to check the quality of your script (like pre-screening) but does not mean that your script is correct or written based on a right programming logic.           

* **Step 5.** Review the model solution: The model solutions for all problems were already posted on this [page](tutorial). The instructor recorded videos to review those problems. Students are encouraged to mimic how the instructor writes the script and debug its error. Although the model answer is simply one of the possible ways to solve the problem, they were written based on the key knowledge or methods covered in the corresponding or prior modules.   

* **Step 6.** Type and run the model script: Skimming the code is not a good way to improve your programming skill. You should type them and run the script in the MATLAB program and MATLAB Grader. I would say programming is like learning sports. You should do practice with your hand, not by eye. 

* **Step 7 (Very important).** Improve your original script: Although you may practice using the model solutions, it is important to develop your own script. A better approach is trying to improve your original script based on the model solution. For example, updating programming logic or shortening the scripts will be greatly helpful that you can employ such code in your future script. Try solving the program again without looking at your original script or model solutions. You will see that your new script will not be the same as the model solution but are much more efficient and compacted than your original ones. 

You do not have to memorize any of the solutions. You can freely access all these solutions during the quizzes because they are open-book quizzes. However, I tell you, without going through this process, you cannot write your own script during the quizzes and will not get a good mark on them. 

## Programming Lab
The programming labs will be held in a main computer lab (CPH 1346). The programming labs include module reviews and quizzes. The programming labs are designed to focus on hands-on practice with MATLAB programming. Students can use the computers in the lab or bring their own laptop if MATLAB is installed. Students are highly encouraged to attend the programming labs.  

## Quiz
The quizzes will be delivered through the MATLAB Grader like tutorials or homework assignments, and written tests. 

<!-- 
* **AE**: [https://grader.mathworks.com/courses/76605-s22-ae-121-quizzes](https://grader.mathworks.com/courses/76605-s22-ae-121-quizzes)
* **ENVE/GEOE**: [https://grader.mathworks.com/courses/76610-s22-enve-geoe-121-quizzes](https://grader.mathworks.com/courses/76610-s22-enve-geoe-121-quizzes)

The major differences are a **time limit** and **a limited submission**. Remember that although students do not pass pre-designed tests, they are not able to go back and edit their submitted solutions. Students are strongly encouraged to test and evaluate their solutions using a MATLAB (program) editor before submission. 
-->

### Schedule 
|Quiz|Topics|Date|Duration|Location|Instruction|
|:---|:-------|:-----|:----|:----|:----|
|**Quiz 01**|Module 01 ~ 02|May 27||CPH-1346||
|**Quiz 02**|Module 01 ~ 04|June 24||CPH-1346||
|**Quiz 03**|Module 01 ~ 07|July 15||CPH-1346||
|**Quiz 04**|Module 01 ~ 07, 09, 11|||CPH-1346||


## Policy for Cheating 

**This course is supported by a full-time WEEF TA. If you have any questions, please visit the WEEF TA office for assistance, or you may also post queries on the LEARN discussion board.**  

**Homework:** Our teaching team will not actively monitor for cheating on your homework assignments. With the advancements in GenAI, we do not find it necessary to rigorously inspect these assignments. The homework is designed to help you engage with and understand the course material through a series of problems. While you may obtain full marks on homework by submitting solutions generated by GenAI or provided by your colleagues, and passing the MATLAB Grader tests, this approach will not prepare you adequately for the quizzes.

**Quiz** Our teaching team will throughly review your answer. TAs will use software to detect any plagiarism in your scripts. It's important to understand that attempting to deceive the TAs or the instructor is futile. Even if you successfully solve all problems on the MATLAB Grader, your quiz will be graded zero if found to be plagiaristic. This applies equally to those who copy and those who allow their work to be copied, with both parties facing potential reporting to the Engineering Undergraduate Associate Dean for academic offenses. 

Experience shows that students copying solutions often don't alter the copied code significantly, making detection likely. Sharing solutions is unwise and unhelpful, and could lead to severe academic consequences.

**Attendance** It has been observed that some students share links to allow absent peers to participate in Kahoot sessions remotely. This is a serious offense. Detected violations will result in a loss of all attendance marks, irrespective of past presence, and an adjustment in the contribution of the final quiz score. Violations will result in a loss of 8 marks and the rest 7 points will be added to the final quiz for those involved. Consequently, for these students, the contribution of the final quiz mark will increase to 37.

Repeated offenses may result in further disciplinary action from the Associate Dean. Please act with integrity to avoid regrets.

Please review [**Policy 71 – Student Discipline**](https://uwaterloo.ca/secretariat/policies-procedures-guidelines/policy-71).
          
## Homework Assignment
The homework assignments will be designed using the MATLAB Grader. This tool allows students instant feedback on the correctness of their solutions through the pre-designed testers. Thus, students can be highly motivated and inspired to persevere with completing the assignments. Problems in the homework assignments are more challenging than examples or problems in the course materials. You might seek bits of help from your colleagues or TAs. 

You do not get used to writing your script directly to the MATLAB Grader only to pass the testers. For quizzes, students will only be able to submit their code on MATLAB Grader with a limited number. Thus, students are encouraged to use the MATLAB (program) editor to prepare the problems in the quizzes.  

There are 8 homework assignments. Each homework assignment have 2 points on a final grade and students can get the maximum 10 points from the homework assignment. This means students get a full mark (10 points) if they submit 5 homework assignments **on time**. **No late submission will be accepted for any reason.** **All delayed submission will be zero**. Although students are not able to submit the homeworks beyond their control (E.g., illness, job interview), **the instructor will not give any accommodation.** Thus, please do not waste your three chances for optional submission. Students do not ask TAs or instructor delayed submission. In case of significant health issues that stop from submitting more than two weeks, students should contact both the First-Year Engineering Office and the instructor and get a formal approval.   

TAs will not manually grade students' homework. If they pass all testers, they will get a full mark. All problems are equal weights. For example, students pass only 3 questions out of 6, students will get 1 point.  

Note that TAs will check the time records of the latest submitted solutions. Please do not revise (resubmit) your homework assignment after due date. This will be considered as delay submission. 

### Schedule
|HW|Topic|Start date|Due date|
|:---|:-----|:-----|:----|
|HW 01|Module 01            |May 06|May 17 at 23:45pm|
|HW 02|Module 01 ~ Module 02|May 13|May 31 at 23:45pm|
|HW 03|Module 01 ~ Module 04|May 27|June 14 at 23:45pm|
|HW 04|Module 01 ~ Module 05|June 10|June 28 at 23:45pm|
|HW 05|Module 01 ~ Module 06|June 17|July 05 at 23:45pm|
|HW 06|Module 01 ~ Module 07|June 24|July 12 at 23:45pm|
|HW 07|Module 01 ~ Module 07, 09|July 8|July 26 at 23:45pm|
|HW 08|Module 01 ~ Module 07, 09, 11|July 15|July 31 at 23:45pm|

* Students can start homework assignments anytime if they are visible in the MATLAB Grader.

## Communication  
**All communication will be made through LEARN but all information related to the course will be posted on this course website.** Students are responsible for checking the course website regularly. LEARN will be only used for announcements and online Q&A discussions.   

Students are invited to ask questions and answer them and share their knowledge and resources. Please direct your communications to the Discussion Forum on LEARN. However, if there is a good reason not to use the discussion forum (e.g., personal matters, a question that might reveal your solution of your report, etc.), please directly contact the TAs or instructor via MS Team.  

Please follow the instruction having Discussions on LEARN below:
- Please be respectful of your peers, instructor, and others in your posts and comments.
- **When you ask questions about tutorial problems, please indicate the problem number in the title. (e.g., M01001: YOUR TITLE)** 
- Asking good questions is another way of learning by summarizing and explaining what you know and do not know. Thoughtful questions and answers will help all students in this class. Before posting a question, please ask yourself whether you are truly stuck (meaning that the answers cannot be readily found on the web) and your questions are complete and legible.
- In addition, please check if the same question was asked before.  
- Inappropriate posts and comments will be immediately deleted and closed without notice.

Before you ask questions, please take a look at the following [**Q&A document**](qna) first. It is a compilation of frequently asked questions for each Module. You might find the answers to your questions!

## Grading  
|Component|Scores|
|:---|:-----|
|**Attendance**|12|
|**Homework assignments**|10|
|**Quiz #1**| 10 |
|**Quiz #2**| 15 |
|**Quiz #3**| 23 |
|**Quiz #4**| 30 |
|**Total** |100| 

## Note
### Generative artificial intelligence
Generative artificial intelligence (GenAI) trained using large language models (LLM) or other methods to produce text, images, music, or code, like Chat GPT, DALL-E, or GitHub CoPilot, may be used for assignments in this class with proper documentation, citation, and acknowledgement. Recommendations for how to cite GenAI in student work at the University of Waterloo may be found through the Library: https://subjectguides.uwaterloo.ca/chatgpt_generative_ai. Please be aware that generative AI is known to falsify references to other work and may fabricate facts and inaccurately express ideas. GenAI generates content based on the input of other human authors and may therefore contain inaccuracies or reflect biases. 

In addition, you should be aware that the legal/copyright status of generative AI inputs and outputs is unclear. Exercise caution when using large portions of content from AI sources, especially images. More information is available from the Copyright Advisory Committee: https://uwaterloo.ca/copyright-at-waterloo/teaching/generative-artificial-intelligence  

You are accountable for the content and accuracy of all work you submit in this class, including any supported by generative AI. 

### Academic integrity
In order to maintain a culture of academic integrity, members of the University of Waterloo community are expected to promote honesty, trust, fairness, respect and responsibility. [Check <a href="https://uwaterloo.ca/academic-integrity/">the Office of Academic Integrity</a> for more information.]</p>

### Grievance 
A student who believes that a decision affecting some aspect of his/her university life has been unfair or unreasonable may have grounds for initiating a grievance. Read <a href="https://uwaterloo.ca/secretariat-general-counsel/node/100">Policy 70, Student Petitions and Grievances, Section 4</a>. When in doubt, please be certain to contact the department’s administrative assistant who will provide further assistance.</p>

### Discipline
A student is expected to know what constitutes academic integrity to avoid committing an academic offence, and to take responsibility for his/her actions. [Check <a href="https://uwaterloo.ca/academic-integrity/">the Office of Academic Integrity</a> for more information.] A student who is unsure whether an action constitutes an offence, or who needs help in learning how to avoid offences (e.g., plagiarism, cheating) or about “rules” for group work/collaboration should seek guidance from the course instructor, academic advisor, or the undergraduate associate dean. For information on categories of offences and types of penalties, students should refer to <a href="https://uwaterloo.ca/secretariat-general-counsel/node/97">Policy 71, Student Discipline</a>. For typical penalties, check <a href="https://uwaterloo.ca/secretariat-general-counsel/node/131">Guidelines for the Assessment of Penalties</a>.</p>

### Appeals
A decision made or penalty imposed under <a href="https://uwaterloo.ca/secretariat-general-counsel/node/100">Policy 70, Student Petitions and Grievances</a> (other than a petition) or <a href="https://uwaterloo.ca/secretariat-general-counsel/node/97">Policy 71, Student Discipline</a> may be appealed if there is a ground. A student who believes he/she has a ground for an appeal should refer to <a href="https://uwaterloo.ca/secretariat-general-counsel/node/99">Policy 72, Student Appeals</a>.</p>

### Note for students with disabilities 
<a href="https://uwaterloo.ca/disability-services/">AccessAbility Services</a>, located in Needles Hall, Room 1401, collaborates with all academic departments to arrange appropriate accommodations for students with disabilities without compromising the academic integrity of the curriculum. If you require academic accommodations to lessen the impact of your disability, please register with AccessAbility Services at the beginning of each academic term.</p>

### Turnitin.com
Text matching software (Turnitin®) may be used to screen assignments in this course. Turnitin® is used to verify that all materials and sources in assignments are documented. Students' submissions are stored on a U.S. server, therefore students must be given an alternative (e.g., scaffolded assignment or annotated bibliography), if they are concerned about their privacy and/or security. Students will be given due notice, in the first week of the term and/or at the time assignment details are provided, about arrangements and alternatives for the use of Turnitin in this course.</p>

<p>It is the responsibility of the student to notify the instructor if they, in the first week of term or at the time assignment details are provided, wish to submit alternate assignment.</p>
