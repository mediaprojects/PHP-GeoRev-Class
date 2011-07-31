--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
--

DROP table be_postcode_dubieus;
--
CREATE TABLE be_postcode_dubieus (
     postcode character varying(4),
     city TEXT,
     lat float,
     lon float
);

-- truncate table be_postcode_dubious;

--
--
-- gazetteer=# SELECT B.*,C.city, regexp_replace(C.city, E'\\s((.+))$', '', 'g') as stripped FROM "public"."be_postcode" AS B LEFT JOIN "public"."be_postcode" AS C ON C.postcode=B.postcode WHERE regexp_replace(C.city, E'\\s((.+))$', '', 'g') ~ '^Antwerpen$';


COPY be_postcode_dubieus (postcode, city, lon, lat) FROM stdin;
3381	Kapellen (Bt.)	4.9590541652504	50.892436914752
2950	Kapellen (Antw.)	4.431466259681	51.312967907541
1785	Hamme (Bt.)	4.2762989997072	50.913732525922
9220	Hamme (O.-Vl.)	4.1528988008261	51.086540439273
1601	Ruisbroek (Bt.)	4.2959602321188	50.790150148913
1541	Sint-Pieters-Kapelle (Bt.)	3.9941056289883	50.707435804436
8433	Sint-Pieters-Kapelle (W.-Vl.)	2.8750476054185	51.125846527049
1495	Marbais (Bt.)	4.5417647269533	50.546577748298
1367	Bomal (Bt.)	4.8742112455077	50.667050878544
6941	Bomal	5.5139392664293	50.369716941528
1830	Machelen (Bt.)	4.4361635455077	50.913933373099
9870	Machelen (O.-Vl.)	3.4919314419936	50.962169505568
1910	Berg (Bt.)	4.541667	50.930278
1981	Hofstade (Bt.)	4.4914115389851	50.993329899626
9308	Hofstade (O.-Vl.)	4.0343914828362	50.960941406281
2100	Deurne (Antwerpen)	4.4712713987146	51.207981477331
2430	Vorst (Kempen)	5.0196913540272	51.07970578038
1190	Vorst	4.3180689865233	50.807691846618
1190	Forest	4.3180689865233	50.807691846618
1190	Vorst - Forest	4.3180689865233	50.807691846618
7910	Forest	3.536883968037	50.673022199453
2600	Berchem (Antwerpen)	4.4328901480246	51.193225814749
9690	Berchem (O.-Vl.)	3.5095791382366	50.791157092772
2812	Muizen (Mechelen)	4.5186776478513	51.006391804827
2870	Ruisbroek (Antw.)	4.330840961377	51.086581260245
2980	Halle (Kempen)	4.6460623215826	51.241371395748
1500	Halle	4.2393213613269	50.734872573177
3290	Deurne (Bt.)	5.096667	51.038611
3300	Sint-Margriete-Houtem (Tienen)	4.9528862484043	50.830692035511
3320	Meldert (Bt.)	4.8384224805325	50.787797595292
9310	Meldert (O.-Vl.)	4.1341646799087	50.935448661257
3560	Meldert (Limb.)	5.1438843772359	50.99835674171
3390	Tielt (Bt.)	4.896667	50.923333
8700	Tielt	3.3308422010559	50.998487764858
2260	Tongerlo (Antw.)	4.9104992094134	51.111874674921
3960	Tongerlo (Limb.)	5.6608708772741	51.131747415718
3550	Heusden (Limb.)	5.2845075024172	51.037696760912
3840	Haren (Borgloon)	5.344722	50.801389
1130	Haren (Brussel)	4.4160377345569	50.890658875578
1130	Haren (Bruxelles)	4.4160377345569	50.890658875578
3700	Haren (Tongeren)	5.3447220000000	50.801389000000
3800	Aalst (Limb.)	5.2122220000000	50.781389000000
9300	Aalst	4.0397323689481	50.938347901364
3700	Berg (Limb.)	5.4945366773476	50.789905994377
3700	Kolmont (Tongeren)	5.4665558729039	50.778835801467
3840	Kolmont (Borgloon)	5.3408997449785	50.801407535316
3891	Muizen (Limb.)	5.1783926170231	50.759177421858
3850	Nieuwerkerken (Limb.)	5.1944883994143	50.86525973792
9320	Nieuwerkerken (Aalst)	4.0069822377048	50.921822512264
4890	Clermont (Lg.)	5.8852672417058	50.65973871475
5650	Clermont (Nam.)	5.4045469005856	50.581665727807
4672	Saint-Remy (Lg.)	5.7025545972186	50.697648299666
6460	Saint-Remy (Ht.)	4.309216635582	50.050336777154
4608	Neufchâteau (Lg.)	5.7766824343934	50.719480910867
6840	Neufchâteau	5.4327193553897	49.839605701044
4357	Jeneffe (Lg.)	5.3564188086916	50.652303244624
5370	Jeneffe (Nam.)	5.245216657672	50.356287029283
4347	Noville (Lg.)	5.382336086628	50.65987792842
6600	Noville (Lux.)	5.7621607021092	50.063927797185
4317	Celles (Lg.)	5.245550693254	50.65387789788
5561	Celles (Nam.)	5.0058328050144	50.231191935345
7760	Celles (Ht.)	3.4581214654765	50.712256114574
5370	Porcheresse (Nam.)	5.245216657672	50.356314409765
6929	Porcheresse (Lux.)	5.0867001576722	49.978773402379
5170	Arbre (Nam.)	4.8210494721985	50.365408071101
7811	Arbre (Ht.)	3.8148237930939	50.610775446856
5310	Longchamps (Nam.)	4.8961083517258	50.57853345981
6688	Longchamps (Lux.)	5.6900712979503	50.053170967094
6730	Bellefontaine (Lux.)	5.4969676338621	49.663827810649
5555	Bellefontaine (Nam.)	4.9745104002037	49.917469357876
6661	Mont (Lux.)	5.7709783171509	50.15313280765
5530	Mont (Nam.)	4.9011365568298	50.352800773509
6747	Saint-Léger (Lux.)	5.6561311692834	49.611934693985
7730	Saint-Léger (Ht.)	3.3149568067459	50.705629518823
8301	Ramskapelle (Knokke-Heist)	3.2516200214042	51.313258279063
8620	Ramskapelle (Nieuwpoort)	2.7621420183853	51.108942935957
8340	Oostkerke (Damme)	3.2945363038659	51.27752788268
8600	Oostkerke (Diksmuide)	2.7966376032029	51.046869065128
8400	Zandvoorde (Oostende)	2.9762345221481	51.200660401573
8980	Zandvoorde (Zonnebeke)	2.981133928827	50.812354729516
8620	Sint-Joris (Nieuwpoort)	2.7783967564835	51.130106361632
8730	Sint-Joris (Beernem)	3.3428220757545	51.133965021914
8630	Houtem (W.-Vl.)	2.6077561711639	51.01106684921
1800	Houtem (Bt.)	4.4649207796755	50.947630046856
9070	Heusden (O.-Vl.)	3.8003554866653	51.027014446632
8800	Beveren (Roeselare)	3.148324728012	50.977326162426
8791	Beveren (Leie)	3.3451184034348	50.874313309857
9120	Kallo (Beveren-Waas)	4.2879863598629	51.249802603285
9130	Kallo (Kieldrecht)	4.1772647717328	51.287823234616
2000	Antwerpen	4.4008500849952	51.220030331384
2018	Antwerpen	4.4114662682747	51.203765528276
2020	Antwerpen	4.3844939744224	51.188638139827
2030	Antwerpen	4.3688727891211	51.276831369615
2040	Zandvliet	4.3034000670694	51.353362652162
2040	Lillo	4.2838306700985	51.304880275146
2040	Berendrecht	4.3195362365030	51.340496222482
2040	Antwerpen	4.2937870299613	51.332131105911
2050	Antwerpen	4.3757553374528	51.229749504643
2060	Antwerpen	4.4274897849287	51.229816688452
2000	Antwerp	4.4008500849952	51.220030331384
2018	Antwerp	4.4114662682747	51.203765528276
2020	Antwerp	4.3844939744224	51.188638139827
2030	Antwerp	4.3688727891211	51.276831369615
2040	Antwerp	4.2937870299613	51.332131105911
2050	Antwerp	4.3757553374528	51.229749504643
2060	Antwerp	4.4274897849287	51.229816688452
\.


--
-- PostgreSQL database dump complete
--
																																																		
