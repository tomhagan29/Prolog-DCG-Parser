s(s(NP, VP)) --> np(NP, Num, _, _), vp(VP, Num, _, _).

np(np(DET, NBAR, PP), Num, _, _) --> 
    det(DET, Num), nbar(NBAR, Num), pp(PP, Num, _, _).

np(np(DET, NBAR), Num, _, _) --> 
    det(DET, Num), nbar(NBAR, Num).

np(np(PRO), Num, Person, SO) --> pro(PRO, Num, Person, SO).

vp(vp(TV, NP), Num, Person, _) --> tv(TV, Num, Person), np(NP, _, _, _).
vp(vp(IV), Num, Person) --> iv(IV, Num, Person).

nbar(nbar(N), Num) --> n(N, Num).
nbar(nbar(JP), Num) --> jp(JP, Num).

pp(pp(PREP, NP), _, _, _) --> prep(PREP), np(NP, _, _, _).

jp(jp(ADJ, JP), Num) --> adj(ADJ), jp(JP, Num).
jp(jp(ADJ, N), Num) --> adj(ADJ), n(N, Num).

pro(pro(Word), Num, Person, SO) --> [Word], {lex(Word, pro, Num, Person, SO)}.
tv(tv(Word), Num, Person) --> [Word], {lex(Word, tv, Num, Person)}.
iv(iv(Word), Num, Person) --> [Word], {lex(Word, iv, Num, Person)}.
det(det(Word), Num) --> [Word], {lex(Word, det, Num)}.
n(n(Word), Num) --> [Word], {lex(Word, n, Num)}.
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

%% Verbs
lex(know,tv,singular,1).
lex(know,tv,singular,2).
lex(knows,tv,singular,3).
lex(know,tv,plural,_).
lex(see,tv,singular,1).
lex(see,tv,singular,2).
lex(sees,tv,singular,3).
lex(see,tv,plural,_).
lex(hire,tv,singular,1).
lex(hire,tv,singular,2).
lex(hires,tv,singular,3).
lex(hire,tv,plural,_).
lex(fall,iv,singular,1).
lex(fall,iv,singular,2).
lex(falls,iv,singular,3).
lex(fall,iv,plural,_).
lex(sleep,iv,singular,1).
lex(sleep,iv,singular,2).
lex(sleeps,iv,singular,3).
lex(sleep,iv,plural,_).

%% Determiners
lex(the,det,_).
lex(a,det,singular).
lex(two,det,plural).

%% Nouns
lex(man,n,singular).
lex(woman,n,singular).
lex(apple,n,singular).
lex(chair,n,singular).
lex(room,n,singular).
lex(men,n,plural).
lex(women,n,plural).
lex(apples,n,plural).
lex(chairs,n,plural).
lex(rooms,n,plural).

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