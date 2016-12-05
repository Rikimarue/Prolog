
order(artiodactyla) :-
	live(on_land),
	feet(four_legs),
	threat(tame).
order(carnivora) :-
	live(on_land),
	feet(four_legs),
	threat(fierce).
order(cetacea) :-
	live(at_sea),
	feet(fins),
	threat(tame).
order(falconiformes) :-
	live(sky),
	feet(wings),
	threat(fierce).
order(reptilia) :-
	live(on_land_and_sea),
	feet(four_two_and_none_legged),
	threat(fierce).

	
family(bovidae) :-
	order(artiodactyla),
	have(horns),
	eat(plants).
family(canidae) :-
	order(carnivora),
	have(strong_teeth),
	eat(meat).
family(felidae) :-
	order(carnivora),
	have(claws),
	eat(meat).
family(balaenopteridae) :-
	order(cetacea),
	have(huge_flippers),
	eat(meat).
family(falconidae) :-
	order(falconiforms),
	have(long_wings),
	eat(meat).
family(snakes) :-
	order(reptilia),
	have(some_are_venoums),
	eats(meat).
family(turtle) :-
	order(reptilia),
	have(hard_shell),
	eat(plants).


animal(gazella) :-
	order(artiodactyla),
	family(bovidae),
	size(medium).
animal(oryx) :-
	order(artiodactyla),
	family(bovidae),
	size(medium).
	
animal(red_fox) :-
	order(carnivora),
	family(canidae),
	size(small).
animal(caracal) :-
	order(carnivora),
	family(felidae),
	size(medium).
	
animal(rorqual) :-
	order(cetacea),
	family(balaenopteridae),
	size(huge).
	
animal(falcon) :-
	order(falconiformes),
	family(falconidae),
	size(medium).
	
animal(boas) :-
	order(reptilia),
	family(snakes),
	size(huge).
animal(sea_turtle) :-
	order(reptilia),
	family(turtle),
	size(huge).



                                                                                                        

