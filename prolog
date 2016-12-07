
/*facts*/

disease(Patient,depression):-
						symptom(Patient, difficulty_concentrating),
						symptom(Patient, decreased_energy),
						symptom(Patient, weight_loss),
						symptom(Patient, lack_of_appetite),
						symptom(Patient, feelings_of_guilt),
						symptom(Patient, feelings_hopelessness).
								
disease(Patient,social_anxiety):-
						symptom(Patient, intense_anxiety_in_social_situations),
						symptom(Patient, avoidance_of_social_situations),
						symptom(Patient, confusion),
						symptom(Patient, sweating_shaking).
							
disease(Patient,obsessive_compulsive_disorder):-
						symptom(Patient, repeated_unwanted_ideas),
						symptom(Patient, thoughts_that_you_might_cause_others_harm),
						symptom(Patient, fear_of_contamination).
						
disease(Patient,autism):-
						symptom(Patient, extreme_difficulty_in_learning_language),
						symptom(Patient, inability_to_understand_other_peoples_feelings),
						symptom(Patient, aggressive_self_injurious_behavior).
						
		
						
disease(Patient,eating_disorder):-
						symptom(Patient, having_less_energy_to_do_anyting),
						symptom(Patient, less_interest_in_work),
						symptom(Patient, hard_time_with_everyday_tasks),
						symptom(Patient, loss_of_recent_memories),
						symptom(Patient, language_problems),
						symptom(Patient, trouble_with_driving).
						
disease(Patient,lung_cancer):-
						symptom(Patient, weight_loss),
						symptom(Patient, fear_of_gaining_weight),
						symptom(Patient, low_self_esteem),
						symptom(Patient, fear_of_body_shame).
						

/*Ask rules*/

symptom(P, Val):-ask('Does the Patient have',Val).
ask(Obj, Val):-known(Obj, Val, true),!.
ask(Obj, Val):-known(Obj, Val, false),!, fail.
ask(Obj, Val):-nl,write(Obj),write(' '),
			write( Val) , write('?(y/n)'), read(Ans), !,
			((Ans=y, assert(known(Obj, Val, true)));(assert(known(Obj, Val, false)),fail)).
			
diagnose:-nl,write('Diagnosing mental disease..........'),nl,disease(symptom,Disease) ,!,nl,
			write('That mental disease could be '), write(Disease).
diagnose:- nl, write('Sorry,we may not be able to diagnose the desease!!').

start:-repeat, abolish(known/3),dynamic(known/3), retractall(known/3), diagnose,nl,nl, write('Try again ? (y/n)'),read(Resp),\+ Resp=y,
		nl,write('Bye ! Thanks for using this system'),abolish(known,3) .
