s(s(NP, VP)) --> np(NP, Num, Person, subject, Animacy), vp(VP, Num, Person, object, Animacy).

np(np(DET, NBAR, PP), Num, Person, _, Animacy) --> 
    det(DET, Num), nbar(NBAR, Num, Person, Animacy), pp(PP, Num, _, _, Animacy).

np(np(DET, NBAR), Num, Person, _, Animacy) --> 
    det(DET, Num), nbar(NBAR, Num, Person, Animacy).

np(np(PRO), Num, Person, SO, _) --> pro(PRO, Num, Person, SO).

vp(vp(TV, NP), Num, Person, SO, Animacy) --> v(TV, Num, Person, Animacy), np(NP, _, _, SO, _).
vp(vp(IV), Num, Person, _, Animacy) --> v(IV, Num, Person, Animacy).

nbar(nbar(N), Num, Person, Animacy) --> n(N, Num, Person, Animacy).
nbar(nbar(JP), Num, Person, Animacy) --> jp(JP, Num, Person, Animacy).

pp(pp(PREP, NP), _, _, _, _) --> prep(PREP), np(NP, _, _, _, _).

jp(jp(ADJ, JP), Num, Person, Animacy) --> adj(ADJ), jp(JP, Num, Person, Animacy).
jp(jp(ADJ, N), Num, Person, Animacy) --> adj(ADJ), n(N, Num, Person, Animacy).

pro(pro(Word), Num, Person, SO) --> [Word], {lex(Word, pro, Num, Person, SO)}.
v(v(Word), Num, Person, Animacy) --> [Word], {lex(Word, tv, Num, Person, Animacy)}.
v(v(Word), Num, Person, Animacy) --> [Word], {lex(Word, iv, Num, Person, Animacy)}.
n(n(Word), Num, Person, Animacy) --> [Word], {lex(Word, n, Num, Person, Animacy)}.
det(det(Word), Num) --> [Word], {lex(Word, det, Num)}.

adj(adj(Word)) --> [Word], {lex(Word, adj)}.
prep(prep(Word)) --> [Word], {lex(Word, prep)}.


%% Lexicons

%% Pronouns
lex(i,pro,singular,1,subject).
lex(you,pro,singular,2,subject).
lex(he,pro,singular,3,subject).
lex(she,pro,singular,3,subject).
lex(it,pro,singular,3,subject).
lex(we,pro,plural,1,subject).
lex(you,pro,plural,2,subject).
lex(they,pro,plural,3,subject).
lex(me,pro,singular,1,object).
lex(you,pro,singular,2,object).
lex(him,pro,singular,3,object).
lex(her,pro,singular,3,object).
lex(it,pro,singular,3,object).
lex(us,pro,plural,1,object).
lex(you,pro,plural,2,object).
lex(them,pro,plural,3,object).

%% Nouns
%% Added Person to nouns to solve conflicts not included in test cases
%% i.e. s(Tree, [the, man, sleep], [])

lex(man,n,singular,3,sentient).
lex(woman,n,singular,3,sentient).
lex(apple,n,singular,3,insentient).
lex(chair,n,singular,3,insentient).
lex(room,n,singular,3,insentient).
lex(men,n,plural,3,sentient).
lex(women,n,plural,3,sentient).
lex(apples,n,plural,3,insentient).
lex(chairs,n,plural,3,insentient).
lex(rooms,n,plural,3,insentient).

%% Verbs
lex(know,tv,singular,1,sentient).
lex(know,tv,singular,2,sentient).
lex(knows,tv,singular,3,sentient).
lex(know,tv,plural,_,sentient).
lex(see,tv,singular,1,sentient).
lex(see,tv,singular,2,sentient).
lex(sees,tv,singular,3,sentient).
lex(see,tv,plural,_,sentient).
lex(hire,tv,singular,1,sentient).
lex(hire,tv,singular,2,sentient).
lex(hires,tv,singular,3,sentient).
lex(hire,tv,plural,_,sentient).
lex(fall,iv,singular,1,_).
lex(fall,iv,singular,2,_).
lex(falls,iv,singular,3,_).
lex(fall,iv,plural,_,_).
lex(sleep,iv,singular,1,sentient).
lex(sleep,iv,singular,2,sentient).
lex(sleeps,iv,singular,3,sentient).
%% lex(sleep,iv,plural,_,sentient).

%% Determiners
lex(the,det,_).
lex(a,det,singular).
lex(two,det,plural).



%% Preposition
lex(on,prep).
lex(in,prep).
lex(under,prep).

%% Adjective
lex(old,adj).
lex(young,adj).
lex(red,adj).
lex(short,adj).
lex(tall,adj).


%% Test Sentences

%% 1. the woman sees the apples
%% ?- s(Tree, [the, woman, sees, the, apples], []).
%% Tree = s(np(det(the), nbar(n(woman))), vp(v(sees), np(det(the), nbar(n(apples))))) .

%% 2. a woman knows him
%% ?- s(Tree, [a, woman, knows, him], []).
%% Tree = s(np(det(a), nbar(n(woman))), vp(v(knows), np(pro(him)))) .

%% 3. *two woman hires a man
%% ?- s(Tree, [two, woman, hires, a, man], []).
%% false.

%% 4. two women hire a man
%% ?- s(Tree, [two, women, hire, a, man], []).
%% Tree = s(np(det(two), nbar(n(women))), vp(v(hire), np(det(a), nbar(n(man))))) .

%% 5. she knows her
%% ?- s(Tree, [she, knows, her], []).
%% Tree = s(np(pro(she)), vp(v(knows), np(pro(her)))) .

%% 6. *she know the man
%% ?- s(Tree, [she, know, the, man], []).
%% false.

%% 7. *us see the apple
%% ?- s(Tree, [us, see, the, apple], []).
%% false.

%% 8. we see the apple
%% ?- s(Tree, [we, see, the, apple], []).
%% Tree = s(np(pro(we)), vp(v(see), np(det(the), nbar(n(apple))))) .

%% 9. i know a short man
%% ?- s(Tree, [i, know, a, short, man], []).
%% Tree = s(np(pro(i)), vp(v(know), np(det(a), nbar(jp(adj(short), n(man)))))) .

%% 10. *he hires they
%% ?- s(Tree, [he, hires, they], []).
%% false.

%% 11. two apples fall
%% ?- s(Tree, [two, apples, fall], []).
%% Tree = s(np(det(two), nbar(n(apples))), vp(v(fall))) .

%% 12. the apple falls
%% ?- s(Tree, [the, apple, falls], []).
%% Tree = s(np(det(the), nbar(n(apple))), vp(iv(falls))) .

%% 13. the apples fall
%% ?- s(Tree, [the, apples, fall], []).
%% Tree = s(np(det(the), nbar(n(apple))), vp(v(falls))) .

%% 14. i sleep
%% ?- s(Tree, [i, sleep], []).
%% Tree = s(np(pro(i)), vp(v(sleep))) .

%% 15. you sleep
%% ?- s(Tree, [you, sleep], []).
%% Tree = s(np(pro(you)), vp(v(sleep))) .

%% 16. she sleeps
%% ?- s(Tree, [she, sleeps], []).
%% Tree = s(np(pro(she)), vp(v(sleeps))).

%% 17. *he sleep
%% ?- s(Tree, [he, sleep], []).
%% false.

%% 18. *them sleep
%% ?- s(Tree, [them, sleep], []).
%% false.

%% 19. *a men sleep
%% ?- s(Tree, [a, men, sleep], []).
%% false.

%% 20. *the tall woman sees the red
%% ?- s(Tree, [the, tall, woman, sees, the, red], []).
%% false.

%% 21. the young tall man knows the old short woman
%% ?- s(Tree, [the, young, tall, man, knows, the, old, short, woman], []).
%% Tree = s(np(det(the), nbar(jp(adj(young), jp(adj(tall), n(man))))), vp(v(knows), np(det(the), nbar(jp(adj(old), jp(adj(short), n(woman))))))) .

%% 22. *a man tall knows the short woman
%% ?- s(Tree, [a, man, tall, knows, the, short, woman], []).
%% false.

%% 23. a man on a chair sees a woman in a room
%% ?- s(Tree, [a, man, on, a, chair, sees, a, woman, in, a, room], []).
%% Tree = s(np(det(a), nbar(n(man)), pp(prep(on), np(det(a), nbar(n(chair))))), vp(v(sees), np(det(a), nbar(n(woman)), pp(prep(in), np(det(a), nbar(n(room))))))) .

%% 24. *a man on a chair sees a woman a room in
%% ?- s(Tree, [a, man, on, a, chair, sees, a, woman, a, room, in], []).
%% false.

%% 25. the tall young woman in a room on the chair in a room in the room sees the red apples under the chair.
%% ?- s(Tree, [the, tall, young, woman, in, a, room, on, the, chair, in, a, room, in, the, room, sees, the, red, apples, under, the, chair], []).
%% Tree = s(np(det(the), nbar(jp(adj(tall), jp(adj(young), n(woman)))), pp(prep(in), np(det(a), nbar(n(room)), pp(prep(on), np(det(the), nbar(n(chair)), pp(prep(in), np(det(a), nbar(n(...)), pp(prep(...), np(..., ...))))))))), vp(v(sees), np(det(the), nbar(jp(adj(red), n(apples))), pp(prep(under), np(det(the), nbar(n(chair))))))) .

%% 26. the woman sees the apples
%% ?- s(Tree, [the, woman, sees, the, apples], []).
%% Tree = s(np(det(the), nbar(n(woman))), vp(v(sees), np(det(the), nbar(n(apples))))) .

%% 27. a woman knows him
%% ?- s(Tree, [a, woman, knows, him], []).
%% Tree = s(np(det(a), nbar(n(woman))), vp(v(knows), np(pro(him)))) .

%% 28. the man sleeps
%% ?- s(Tree, [the, man, sleeps], []).
%% Tree = s(np(det(the), nbar(n(man))), vp(v(sleeps))) .

%% 29. *the room sleeps
%% ?- s(Tree, [the, room, sleeps], []).
%% false.

%% 30. *the apple sees the chair
%% ?- s(Tree, [the, apple, sees, the, chair], []).
%% false.

%% 31. *the rooms know the man
%% ?- s(Tree, [the, rooms, know, the, man], []).
%% false.

%% 32. the apple falls
%% ?- s(Tree, [the, apple, falls], []).
%% Tree = s(np(det(the), nbar(n(apple))), vp(v(falls))) .

%% 33. the man falls
%% ?- s(Tree, [the, man, falls], []).
%% Tree = s(np(det(the), nbar(n(man))), vp(v(falls))) .