:- dynamic
    xpositive/2,
    xnegative/2.

car_is(audi_a8) :-  car_type(combi),
                    age(new),
                    mileage(small),
                    drive(hybrid).

car_type(combi) :- positive(is, combi).
car_type(sedan) :- positive(is, sedan).
car_type(hatchback) :- positive(is, hatchback).
car_type(suv) :- positive(is, suv).

age(new) :- positive(is, new).
age(medium) :- positive(is, medium).
age(old) :- positive(is, old).

mileage(small) :- positive(is, small).
mileage(medium) :- positive(is, medium).
mileage(high) :- positive(is, high).

drive(hybrid) :- positive(is, hybrid).
drive(diesel) :- positive(is, diesel).
drive(gasoline) :- positive(is, gasoline).

% only for test purpose
positive(X,Y) :- xpositive(X,Y), !.
positive(X,Y) :- \+xnegative(X,Y), !.

negative(X,Y) :- xnegative(X,Y), !.
negative(X,Y) :- \+xpositive(X,Y), !.