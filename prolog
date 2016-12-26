
rule(1,
     lhs( [av(feeling_well, yes),not(av(eating_problem, yes)), av(depression, yes)] ),
     rhs( av(problem, depression_problem), 100) ).
  
rule(2,
     lhs( [av(di1fficulty_concentrating, yes)] ),
     rhs( av(depression, yes), 20) ).

rule(3,
     lhs( [av(decreased_energy, yes)] ),
     rhs( av(depression, yes), 20) ).

rule(4,
     lhs( [av(weight_loss, yes)] ),
     rhs( av(depression, yes), 20) ).

rule(5,
     lhs( [av(decreased_energy, yes)] ),
     rhs( av(depression, yes), 20) ).

rule(6,
     lhs( [av(confusion, yes)] ),
     rhs( av(depression, yes), 10) ).
     
rule(7,
     lhs( [av(feelings_hopelessness, yes)] ),
     rhs( av(depression, yes), 20) ).


%depression end 

rule(8,
     lhs( [av(feeling_well, yes),not(av(eating_problem, yes)), av(social_anxiety, yes)] ),
     rhs( av(problem, social_anxiety_problem), 100) ).
     
 
rule(9,
     lhs( [av(weighintense_anxiety_in_social_situationst_loss, yes)] ),
     rhs( av(social_anxiety, yes), 30) ).

rule(10,
     lhs( [av(sweating_shaking, yes)] ),
     rhs( av(social_anxiety, yes), 20) ).

rule(11,
     lhs( [av(confusion, yes)] ),
     rhs( av(social_anxiety, yes), 25) ).
     

%social_anxiety end 


     
rule(13,
     lhs( [av(feeling_well, yes),not(av(eating_problem, yes)), av(autism, yes)] ),
     rhs( av(problem, autism_problem), 100) ).
  
rule(14,
     lhs( [av(extreme_difficulty_in_learning_language, yes)] ),
     rhs( av(autism, yes), 30) ).
     

    
rule(15,
     lhs( [av(inability_to_understand_other_peoples_feelings, yes)] ),
     rhs( av(autism, yes), 30) ).
 
rule(16,
     lhs( [av(aggressive_self_injurious_behavior, yes)] ),
     rhs( av(autism, yes), 30) ).     

%autism_problem end     

rule(17,
     lhs( [av(feeling_well, yes),av(eating_problem, yes), av(eating_disorder, yes)] ),
     rhs( av(problem, eating_disorder_problem), 100) ).

rule(18,
     lhs( [av(eating_problem, yes),av(having_less_energy_to_do_anyting, yes)] ),
     rhs( av(eating_disorder, yes), 30) ).
    
rule(19,
     lhs( [av(eating_problem, yes),av(less_interest_in_work, yes)] ),
	 rhs( av(eating_disorder, yes), 30) ).
 
rule(20,
     lhs( [av(eating_problem, yes),av(hard_time_with_everyday_tasks, yes)] ),
     rhs( av(eating_disorder, yes), 30) ).

rule(21,
     lhs( [av(eating_problem, yes),av(loss_of_recent_memories, yes)] ),
     rhs( av(eating_disorder, yes), 30) ).
          
rule(22,
     lhs( [av(eating_problem, yes),av(trouble_with_driving, yes)] ),
     rhs( av(eating_disorder, yes), 30) ).     
 
%eating_disorder_problem end

rule(23,
     lhs( [av(feeling_well, yes),not(av(eating_problem, yes)), av(panic_disorder, yes)] ),
     rhs( av(problem, panic_disorder_problem), 100) ).

rule(24,
     lhs( [av(panic_problem, yes),av(racing_heart, yes)] ),
     rhs( av(panic_disorder, yes), 30) ).
    
rule(25,
     lhs( [av(panic_problem, yes),av(feeling_weak, yes)] ),
    rhs( av(panic_disorder, yes), 30) ).
 
rule(26,
     lhs( [av(panic_problem, yes),av(sense_of_terror, yes)] ),
     rhs( av(panic_disorder, yes), 30) ).    

rule(27,
     lhs( [av(panic_problem, yes),av(chest_pains, yes)] ),
     rhs( av(panic_disorder, yes), 30) ).
          
%panic_disorder_problem end



askable(feeling_well, 'do you feel unwell?').
askable(eating_problem, 'do you have problems eating?').


askable(di1fficulty_concentrating, 'do you have difficulty concentrating?').
askable(decreased_energy, 'do you feel decreased energy?').
askable(weight_loss, 'have you suffered from weight loss?').
askable(confusion, 'do you feel confused?').
askable(feelings_hopelessness, 'do you feel hopless?').
askable(intense_anxiety_in_social_situations, 'are you socilized?').
askable(sweating_shaking, 'how much do you sweat while shaking?').

askable(extreme_difficulty_in_learning_language, 'do you have difficulty in learning new language?').
askable(inability_to_understand_other_peoples_feelings, 'do you have problems understanding other people is feeling?').
askable(aggressive_self_injurious_behavior, 'are you aggerssive?'). 

askable(having_less_energy_to_do_anyting, 'do you have less energy to do anything?'). 
askable(less_interest_in_work, 'do you feel less interest in work?'). 
askable(hard_time_with_everyday_tasks, 'do you have trouble with everyday tasks?'). 
askable(loss_of_recent_memories, 'do you suffer from memory loss?'). 
askable(trouble_with_driving, 'do you have driving problems?'). 

askable(racing_heart, 'do you suffer from racing heart?').
askable(feeling_weak, 'do you feel weak?').
askable(sense_of_terror, 'do you feel terrorized').
askable(chest_pains, 'do you feel chest pain?').
