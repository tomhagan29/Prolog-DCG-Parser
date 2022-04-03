%% singular and plural words

s(s(NP, VP)) --> np(NP, Num, _), vp(VP, Num).

np(np(DET, NBAR, PP), Num) --> det(DET, Num), nbar(NBAR, Num), pp(PP, Num).
np(np(DET, NBAR), Num) --> det(DET, Num), nbar(NBAR, Num).
np(np(NBAR, PP), Num) --> nbar(NBAR, Num), pp(PP, Num).
np(np(NBAR), Num) --> nbar(NBAR, Num).
np(np(PP), Num) --> pp(PP, Num).
np(np(PRO), Num, SO) --> pro(PRO, Num, SO).

vp(vp(TV, NP), Num) --> tv(TV, Num), np(NP, _).
vp(vp(IV), Num) --> iv(IV, Num).

nbar(nbar(N), Num) --> n(N, Num).
nbar(nbar(JP), Num) --> jp(JP, Num).

pp(pp(PREP, NP), Num) --> prep(PREP), np(NP, Num).

jp(jp(ADJ, JP), Num) --> adj(ADJ), jp(JP, Num).
jp(jp(ADJ, N), Num) --> adj(ADJ), n(N, Num).

pro(pro(Word), Num, SO) --> [Word], {lex(Word, pro, Num, SO)}.
det(det(Word), Num) --> [Word], {lex(Word, det, Num)}.
tv(tv(Word), Num) --> [Word], {lex(Word, tv, Num)}.
iv(iv(Word), Num) --> [Word], {lex(Word, iv, Num)}.
n(n(Word), Num) --> [Word], {lex(Word, n, Num)}.
adj(adj(Word)) --> [Word], {lex(Word, adj)}.
prep(prep(Word)) --> [Word], {lex(Word, prep)}.


%% Lexicons

%% Pronouns
lex(i,pro,singular,subject).
lex(you,pro,singular,subject).
lex(he,pro,singular,subject).
lex(she,pro,singular,subject).
lex(it,pro,singular,subject).
lex(we,pro,plural,subject).
lex(you,pro,plural,subject).
lex(they,pro,plural,subject).
lex(me,pro,singular,object).
lex(you,pro,singular,object).
lex(him,pro,singular,object).
lex(her,pro,singular,object).
lex(it,pro,singular,object).
lex(us,pro,plural,object).
lex(you,pro,plural,object).
lex(them,pro,plural,object).

%% Verbs
lex(know,tv,singular).
lex(know,tv,singular).
lex(knows,tv,singular).
lex(know,tv,plural).
lex(see,tv,singular).
lex(see,tv,singular).
lex(sees,tv,singular).
lex(see,tv,plural).
lex(hire,tv,singular).
lex(hire,tv,singular).
lex(hires,tv,singular).
lex(hire,tv,plural).
lex(fall,iv,singular).
lex(fall,iv,singular).
lex(falls,iv,singular).
lex(fall,iv,plural).
lex(sleep,iv,singular).
lex(sleep,iv,singular).
lex(sleeps,iv,singular).
lex(sleep,iv,plural).

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