projStatus(proj1, completed).
projStatus(proj2, ongoing).
projStatus(proj3, ongoing).

deptHead(marketing, mike).

deptHasEmployeeNoProj(D) :- departmentOf(E,D), not(projectOf(E,_)).
busyDept(D) :- departmentOf(_,D), not(deptHasEmployeeNoProj(D)).

hasOngoingProj(E) :- employee(E), projectOf(E,P), projStatus(P,ongoing).
efficientEmployee(E) :- employee(E), projectOf(E,_), not(hasOngoingProj(E)).