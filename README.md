#Data for The Skool

## Before starting

We load in all data from majors_2025.xlsx using 0_create_table.sql to a table named majors.

If the table already exists, delete it and load it in again.


## Exercise 1

These are the queries in folder "exercise_1"


Query 1_applications.sql outputs amounts of applied for majors per field/category. See the table below.


TODO Add picture


Query 2_accepted_applications.sql outputs the amount of accepted applications for every field. See the table below.

TODO add picture


Query 3_declined_applications.sql outputs the declined applications for every field. See the table below.

TODO add picture


Query 4_accepted_it.sql outputs the number of accepted applications per name of major in IT. See the table below.

TODO add picture


Query 5_declined_it.sql outputs the number of declined applications per name of major in IT. See the table below (133 total rows so wont show all).

TODO add picture


Query 6_accepted_school_it.sql outputs the accepted applications by school and name of major. See the table below.

TODO add picture


Query 7_top5_counties.sql outouts the the 5 locations with most accepted applications. See the table below.

TODO add picture



Query 8_remote_bm_majors.sql outputs the amount of applications for remote and the amount of applications for brick and mortar in every field. See the table below.

TODO add picture


Query 9_search_majors.sql this just returns the number of applications for majors that have "AI" in the name. See the table below.

TODO add picture



## Exercise 2

In exercise2_notes.txt I have made some notes of some of the questions given to the stakeholder and what the answers were.

I have also added an interpinterp of these answers into querie friendly questions and explained why the result of these queries are interesting to The Skool.



## Exercise 3

In folder exercise3_questions I have 5 queries for my 5 questions from exercise2_notes.txt


Query 1_questions.sql outputs acceptance rate for every field and the amount of applications for said field. It is good for The Skool to know what fields are more successful. See the table below.

TODO add image


Query 2_questions.sql outputs the acceptance rate of remote vs brick and mortar applications. This is interesting seeing as they are gonna make 2-3 applications in only one location to start with. With this data they would know which one makes sense where. See the table below.

TODO add picture


Query 3_questions.sql outputs the acceptance rate for private vs non-private for any given location. This is helpful seeing as they wanna go with the higher acceptance rate. See table below.

TODO add image


Query 4_questions.sql outputs the successrate for every subcategory (with 4+ accepted applications to make sure they aren't too niche). This is because some majors can be changed into adjecent ones, which could be worth doing depending on appeptance rates. See the table below (only output the 10 with highest acceptance rate).

TODO add image


Query 5_questions.sql outputs the likelyhood of any application that asks for 3+ periods actually receives 3+ periods. This is to reduce the amount of prep for new applications and will also ensure revenue for more time. See the table below.


TODO add image
