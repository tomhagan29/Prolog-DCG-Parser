%% singular and plural words

s(s(NP, VP)) --> np(NP, Num), vp(VP, Num).

np(np(DET, NBAR, PP), Num) --> det(DET, Num), nbar(NBAR, Num), pp(PP, Num).
np(np(DET, NBAR), Num) --> det(DET, Num), nbar(NBAR, Num).
np(np(NBAR, PP), Num) --> nbar(NBAR, Num), pp(PP, Num).
np(np(NBAR), Num) --> nbar(NBAR, Num).
np(np(PRO), Num) --> pro(PRO, Num).
np(np(PP), Num) --> pp(PP, Num).

vp(vp(TV, NP), Num) --> tv(TV, Num), np(NP, _).
vp(vp(IV), Num) --> iv(IV, Num).

nbar(nbar(N), Num) --> n(N, Num).
nbar(nbar(JP), Num) --> jp(JP, Num).

pp(pp(PREP, NP), Num) --> prep(PREP), np(NP, Num).

jp(jp(ADJ, JP), Num) --> adj(ADJ), jp(JP, Num).
jp(jp(ADJ, N), Num) --> adj(ADJ), n(N, Num).

det(det(Word), Num) --> [Word], {lex(Word, det, Num)}.
pro(pro(Word), Num) --> [Word], {lex(Word, pro, Num)}.
tv(tv(Word), Num) --> [Word], {lex(Word, tv, Num)}.
iv(iv(Word), Num) --> [Word], {lex(Word, iv, Num)}.
n(n(Word), Num) --> [Word], {lex(Word, n, Num)}.
adj(adj(Word)) --> [Word], {lex(Word, adj)}.
prep(prep(Word)) --> [Word], {lex(Word, prep)}.


%% Lexicons

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