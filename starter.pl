starter(green_salad).
starter(melon).
starter(tomato_salad).
starter(rabbit_plate).
main(rock_salad).
main(roast_beef).
main(pasta).
dessert(cheese).
dessert(yoghurt).
dessert(pastry).
menu(Status, X, Y, Z):-
	Status=hungry,
	starter(X),
	main(Y),
	dessert(Z).
menu(Status, X, Y):-
	Status=not_so_hungry,
	starter(X),
	main(Y).
menu(Status,Y,Z):-
	Status=not_so_hungry,
	main(Y),
	dessert(Z).
menu(Status,X):-
	Status=on_diet,
	starter(X).