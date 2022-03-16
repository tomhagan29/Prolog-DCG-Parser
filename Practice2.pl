% The argument Number is the number of the subject and main verb.
% It is instantiated to 'singular' or 'plural'. 

sentence(Number) --> noun_phrase(Number), verb_phrase(Number).
noun_phrase(Number) --> determiner(Number), noun(Number).
verb_phrase(Number) --> verb(Number), noun_phrase(_).

determiner(singular) --> [a].
determiner(_)        --> [the].
determiner(plural)   --> [].
noun(singular) --> [cat];[man];[mouse].
noun(plural)   --> [cats];[men];[mice].
verb(singular) --> [scares];[hates].
verb(plural)   --> [scare];[hate].