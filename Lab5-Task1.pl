%сумма цифр
sum_digits(0,0).
sum_digits(N,Sum):-
    N>0,
    N1 is N//10,       %убираем последнюю цифру числа
    Digit is N mod 10, %последняя цифра
    sum_digits(N1,Sum1),
    Sum is Sum1+Digit.

count(0,Acc,Acc).      %если дошли до нуля,то вывод аккумулятора
count(N,Acc,Count):-
    N>0,
    sum_digits(N,Sum),
    N1 is N-Sum,       %новое число после вычитания
    Acc1 is Acc+1,     %увеличиваем аккумулятор
    count(N1,Acc1,Count).

begin:-
    write('Введите число: '),
    read(N),
    count(N,0,Counter),
    write('Количество шагов до нуля: '),
    write(Counter).
