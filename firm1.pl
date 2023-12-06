employee(mike).
employee(mary).
employee(martha).
employee(john).
employee(josh).
employee(julia).
employee(jack).

departmentOf(mike, production).
departmentOf(mary, production).
departmentOf(john, sales).
departmentOf(josh, sales).
departmentOf(julia, marketing).
departmentOf(jack, marketing).

projectOf(mary, proj1).
projectOf(martha, proj1).
projectOf(josh, proj2).
projectOf(julia, proj2).
projectOf(jack, proj3).

sameDept(A,B) :- departmentOf(A,D), departmentOf(B,D).
sameProj(A,B) :- projectOf(A,P), projectOf(B,P).
deptWProj(D) :- departmentOf(E,D), projectOf(E,_).