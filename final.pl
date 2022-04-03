s(s(NP, VP)) --> np(NP, Num, Person, subject, Animacy), vp(VP, Num, Person, object, Animacy).

np(np(DET, NBAR, PP), Num, _, _, Animacy) --> 
    det(DET, Num), nbar(NBAR, Num, Animacy), pp(PP, Num, _, _, Animacy).

np(np(DET, NBAR), Num, _, _, Animacy) --> 
    det(DET, Num), nbar(NBAR, Num, Animacy).

np(np(PRO), Num, Person, SO, _) --> pro(PRO, Num, Person, SO).

vp(vp(TV, NP), Num, Person, SO, Animacy) --> tv(TV, Num, Person, Animacy), np(NP, _, _, SO, _).
vp(vp(IV), Num, Person, _, Animacy) --> iv(IV, Num, Person, Animacy).

nbar(nbar(N), Num, Animacy) --> n(N, Num, Animacy).
nbar(nbar(JP), Num, Animacy) --> jp(JP, Num, Animacy).

pp(pp(PREP, NP), _, _, _, _) --> prep(PREP), np(NP, _, _, _, _).

jp(jp(ADJ, JP), Num, Animacy) --> adj(ADJ), jp(JP, Num, Animacy).
jp(jp(ADJ, N), Num, Animacy) --> adj(ADJ), n(N, Num, Animacy).

pro(pro(Word), Num, Person, SO) --> [Word], {lex(Word, pro, Num, Person, SO)}.
tv(tv(Word), Num, Person, Animacy) --> [Word], {lex(Word, tv, Num, Person, Animacy)}.
iv(iv(Word), Num, Person, Animacy) --> [Word], {lex(Word, iv, Num, Person, Animacy)}.
n(n(Word), Num, Animacy) --> [Word], {lex(Word, n, Num, Animacy)}.
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
lex(sleep,iv,plural,_,sentient).

%% Determiners
lex(the,det,_).
lex(a,det,singular).
lex(two,det,plural).

%% Nouns
lex(man,n,singular,sentient).
lex(woman,n,singular,sentient).
lex(apple,n,singular,insentient).
lex(chair,n,singular,insentient).
lex(room,n,singular,insentient).
lex(men,n,plural,sentient).
lex(women,n,plural,sentient).
lex(apples,n,plural,insentient).
lex(chairs,n,plural,insentient).
lex(rooms,n,plural,insentient).

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