s(s(NP, VP)) --> np(NP), vp(VP).
np(np(DET, NBAR)) --> det(DET), nbar(NBAR).
np(np(PRO)) --> pro(PRO).
vp(vp(V, NP)) --> v(V), np(NP).
vp(vp(V)) --> v(V).
nbar(nbar(N)) --> n(N).
nbar(nbar(JP)) --> jp(JP).
pp(pp(PREP, NP)) --> prep(PREP), np(NP).
jp(jp(ADJ, N)) --> adj(ADJ), n(N).

det(det(Word, Num, Person, Role)) --> [Word], {lex(Word, det, Num, Person, Role)}.
pro(pro(Word, Num, Person, Role)) --> [Word], {lex(Word, pro, Num, Person, Role)}.
tv(tv(Word, Num, Person, Role)) --> [Word], {lex(Word, tv, Num, Person, Role)}.
iv(iv(Word, Num, Person, Role)) --> [Word], {lex(Word, iv, Num, Person, Role)}.
adj(adj(Word, Num, Person, Role)) --> [Word], {lex(Word, adj, Num, Person, Role)}.
n(n(Word, Num, Person, Role)) --> [Word], {lex(Word, n, Num, Person, Role)}.
prep(prep(Word, Num, Person, Role)) --> [Word], {lex(Word, prep, Num, Person, Role)}.


%% Lexicons

%% Pronouns
lex(i, pro, singular, 1, subject).
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



