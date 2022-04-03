s(s(NP, VP)) --> np(NP, Num), vp(VP, Num, _).

np(np(DET, NBAR, PP), Num) --> det(DET, Num), nbar(NBAR, Num), pp(PP).
np(np(PRO), Num) --> pro(PRO, Num).
np(np(PP), Num) --> pp(PP, Num).
np(np(DET, NBAR), Num) --> det(DET, Num), nbar(NBAR, Num).
np(np(NBAR, PP), Num) --> nbar(NBAR, Num), pp(PP, Num).
np(np(NBAR), Num) --> nbar(NBAR, Num).

vp(vp(TV, NP), Num, Person) --> tv(TV, Num, Person), np(NP, _).
vp(vp(IV), Num, Person) --> iv(IV, Num, Person).

nbar(nbar(N), Num) --> n(N, Num).
nbar(nbar(JP), Num) --> jp(JP, Num).

pp(pp(PREP, NP), Num) --> prep(PREP), np(NP, Num).
pp(pp(PREP)) --> prep(PREP).

jp(jp(ADJ, JP), Num) --> adj(ADJ), jp(JP, Num).
jp(jp(ADJ, N), Num) --> adj(ADJ), n(N, Num).

det(det(Word), Num) --> [Word], {lex(Word, det, Num)}.
pro(pro(Word), Num) --> [Word], {lex(Word, pro, Num)}.
n(n(Word), Num) --> [Word], {lex(Word, n, Num)}.
tv(tv(Word), Num, Person) --> [Word], {lex(Word, tv, Num, Person)}.
iv(iv(Word), Num, Person) --> [Word], {lex(Word, iv, Num, Person)}.
adj(adj(Word)) --> [Word], {lex(Word, adj)}.

prep(prep(Word)) --> [Word], {lex(Word, prep)}.


%% Lexicons

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

%% Pronouns
lex(i,pro,singular).
lex(you,pro,singular).
lex(he,pro,singular).
lex(she,pro,singular).
lex(it,pro,singular).
lex(we,pro,plural).
lex(you,pro,plural).
lex(they,pro,plural).
lex(me,pro,singular).
lex(you,pro,singular).
lex(him,pro,singular).
lex(her,pro,singular).
lex(it,pro,singular).
lex(us,pro,plural).
lex(you,pro,plural).
lex(them,pro,plural).


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