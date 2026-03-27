%предикат принадлежности эл-та списку
member(X,[X|_]).
member(X,[_|T]) :- member(X,T).

%пересечение множеств
intersection([],_,[]).
intersection([H|T],Set2,[H|Result]):-
    member(H,Set2),
    intersection(T,Set2,Result).
intersection([_|T],Set2,Result):-
    intersection(T,Set2,Result).

begin:-
    write('Введите первое множество: '),
    read(Set1),
    write('Введите второе множество: '),
    read(Set2),
    intersection(Set1,Set2,Intersection),
    write('Пересечение множеств: '),
    write(Intersection),
    nl.
