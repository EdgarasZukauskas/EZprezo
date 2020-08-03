SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Table structure for table `gaminiai`
--

CREATE TABLE `gaminiai` (
  `id` int(11) NOT NULL,
  `pavadinimas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `aprasymas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `nuotraukosId` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `rodomas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaminiai`
--

INSERT INTO `gaminiai` (`id`, `pavadinimas`, `aprasymas`, `nuotraukosId`, `rodomas`) VALUES
(1, 'Žagarėliai', 'Žagarėliai – vienas iš tų nostalgiškų skonių, kuriuos džiaugiamės galėdami naujam gyvenimui prikelti savo kepyklėlėse. Tai desertas, kuris prie vieno stalo jaukų vakarą suburs visą šeimą: senelius, tėvus ir vaikus…', '64-Zagareliai.jpg', 1),
(2, 'Keksiukai su šokoladiniu įdaru', 'Tikriausiai visi žinome, kokius stebuklus kartais gali padaryti vos keli gabalėliai saldaus šokolado, tiesa? Kartais ne mažesnį džiaugsmą suteikia ir burnoje tirpstantys purūs keksiukai su šokoladiniu įdaru…', '60-Keksiukai-su-sokoladiniu-idaru.jpg', 1),
(3, 'Keksiukai su karamele', 'Karamelė – aštuonios raidės, priverčiančios širdis dunksėti smarkiau. Mūsų kepami keksiukai su karamelės įdaru, viliamės, gali sukurti lygiai tokį patį stebuklą. Ar gali…?', '59-Keksiukai-su-karamele.jpg', 1),
(4, 'Keksiukai su džemu', 'Purus keksiukas ir jame besislepiantis saldus džemo įdaras – Jūsų dienoms pasaldinti, paskaninti ir pradžiuginti!', '58-Keksiukai-su-dzemu.jpg', 1),
(5, 'Itališki keksiukai', 'Apelsinų cukatomis pagardinti aromatingi ir drėgni keksiukai sužavės visus sodrių skonių bei aromatingų kepinių mėgėjus. Puikūs prie puodelio nesaldžios arbatos ar kavos – galite nustebti kaip rankos pačios tiesiasi, norėdamos čiupti dar ir dar vieną keksiuką.', '55-Italiski-keksiukai.jpg', 1),
(6, 'Varškės keksiukai', 'Jie nuostabiai minkšti. Pasakiškai purūs. Maloniai saldūs. Šviežučiai varškės keksiukai – tai neatsivalgomas skanėstas, nuolat sulaukiantis pačių geriausių įvertinimų.', '54-Varskes-keksiukai.jpg', 1),
(7, 'Riestainiai', 'Paprastučiai simpatiški riestainiai su cukraus plutele ir puodelis pieno – vaikystę primenantys ir labai gardūs pusryčiai. Su nuoširdžia šypsena, su puikiu nusiteikimu artėjančiai dienai.', '53-Riestainiai.jpg', 1),
(8, 'Varškės kąsneliai', 'Maži sluoksniuotos tešlos kąsneliai su varške – saldžioms kasdienybės akimirkoms. Palaimingoms poilsio minutėms, kai norisi trumpam sustabdyti laiką ir pasimėgauti akimirka…', '51-Varskes-kasneliai.jpg', 1),
(9, 'Skarelės su obuoliais', 'Mažutės kapotos tešlos skarelės su obuolių įdaru abejingų nepalieka: jos nedidelės, saldžios, o lengvai karamelizavęsis obuolių įdaras maloniai tirpsta burnoje…', '49-Skareles-su-obuoliais.jpg', 1),
(10, 'Trapus varškės pyragėlis', 'Trapus varškės pyragėlis – trapios tešlos lakšteliai ir juose besislepiantis kreminis varškės įdaras. Lyg puikus mažas varškės pyragas Jūsų lėkštelėje. Lyg maža šventė kiekvieną dieną.', '48-Trapus-varskes-pyragelis.jpg', 1),
(11, 'Grietinėčiai', 'Grietinėtis – tai pyragėlis su varškės įdaru, pagardintu žiupsniu vanilinio cukraus. Minkštas, saldus ir šiek tiek nostalgiškas…', '47-Grietineciai.jpg', 1),
(12, 'Pyragėlis Štrudelis su obuoliais', 'Pyragėlis, kuriame atkartojama tradicinio „Štrudelio“ tešlos lankstymo technika – tai lyg mažas „Štrudelis“, skirtas tik Jums, tik Jūsų saldžioms ir malonioms akimirkoms…', '46-Pyragelis-Strudelis-su-obuoliais.jpg', 1),
(13, 'Mini bandelės su karameliniu įdaru', 'Lyg meškiukai rudnosiukai, dievinantys saldžią karamelę, taip ir Jūs pasijusite, į rankas paėmę maišelį su nosį maloniais sluoksniuotos tešlos kvapais kutenančiomis mini bandelėmis, pagardintomis karameliniu įdaru…', '43-Mini-bandeles-su-karameliniu-idaru.jpg', 1),
(14, 'Sluoksniuota bandelė su aviečių džemu', 'Burnoje tirpstančios sluoksniuotos bandelės su aviečių džemu – tiems, kurie auksinių rugpjūčio dienų neįsivaizduoja be saujomis valgomų šviežių aviečių, o žvarbių žiemos vakarų – be puodelio kvapnios aviečių uogienės arbatos…', '35-Sluoksniuota-bandele-su-avieciu-dzemu.jpg', 1),
(15, 'Sluoksniuotas ragelis su šokolado skonio įdaru', 'Begalė plonyčių trapios tešlos sluoksnelių ir sodraus šokoladinio skonio įdaras… Tai skoniai, sutirpstantys bunoje, mintimis nukeliantys į laimingiausias dienas, gražiausias akimirkas, mieliausius prisiminimus…', '30-Sluoksniuotas-ragelis-su-sokolado-skonio-idaru.jpg', 1),
(16, 'Sluoksniuotas ragelis su karamele', 'Sluoksniuotas ragelis su karamele – patiems didžiausiems smaližiams, kurie karamelę mielai kabintų šaukštu tiesiai iš stiklainėlio, nusilaižytų pirštų galiukus ir mėgautųsi akimirka, šypsodamiesi iki pat ausų…', '29-Sluoksniuotas-ragelis-su-karamele.jpg', 1),
(17, 'Sluoksniuotas ragelis', 'Paprastutis, klasikinis, purus ir gausiai sluoksniuotas ragelis. Puikus tiek lengvam užkandžiui, tiek nesaldžiam desertui.', '28-Sluoksniuotas-ragelis.jpg', 1),
(18, 'Sluoksniuota bandelė su riešutiniu įdaru', 'Riešutai… Malonus jų traškesys. Gardus skrudintų riešutų aromatas… Sluoksniuotos bandelės su riešutiniu įdaru – visiems, neabejingiems riešutiniams skanėstams.', '27-Sluoksniuota-bandele-su-riesutiniu-idaru.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `miestai`
--

CREATE TABLE `miestai` (
  `id` int(11) NOT NULL,
  `pavadinimas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `latitude` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `longtitude` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `zoom` int(11) NOT NULL,
  `rodomas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `miestai`
--

INSERT INTO `miestai` (`id`, `pavadinimas`, `latitude`, `longtitude`, `zoom`, `rodomas`) VALUES
(1, 'Kaunas', '54.903256', '23.946021', 12, 1),
(2, 'Klaipėda', '55.703509', '21.152454', 12, 1),
(3, 'Šiauliai', '55.928378', '23.290253', 12, 1),
(4, 'Vilnius', '54.687403', '25.279537', 12, 1),
(5, 'Jonava', '55.074136', '24.279330', 12, 1),
(6, 'Kėdainiai', '55.299127', '23.982614', 12, 1),
(7, 'Telšiai', '55.981423', '22.244108', 12, 1),
(8, 'Plungė', '55.912019', '21.844402', 12, 1),
(9, 'Šilutė', '55.345879', '21.467346', 12, 1),
(10, 'Šilalė', '55.491390', '22.181548', 12, 1),
(11, 'Radviliškis', '55.816227', '23.540780', 12, 1),
(12, 'Alytus', '54.397595', '24.029216', 12, 1),
(13, 'Panevėžys', '55.734450', '24.368383', 12, 1),
(14, 'Mažeikiai', '56.308639', '22.339693', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `padaliniai`
--

CREATE TABLE `padaliniai` (
  `id` int(11) NOT NULL,
  `adresas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `miestas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `telefonoNumeris` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `darboLaikas1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `darboLaikas2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `darboLaikas3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `longtitude` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `latitude` text CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `rodomas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `padaliniai`
--

INSERT INTO `padaliniai` (`id`, `adresas`, `miestas`, `telefonoNumeris`, `darboLaikas1`, `darboLaikas2`, `darboLaikas3`, `longtitude`, `latitude`, `rodomas`) VALUES
(1, 'Taikos pr. 113B, Kaunas (prie parduotuvės „Trys berželiai“)', 'Kaunas', '+370 608 42653', 'I–V 8.00–18.00', 'VI–VII nedirbame', '-', '23.981819', '54.916537', 1),
(2, 'Pramonės pr. 16F, Kaunas (Prekybos miestelis URMAS, Centrinis Kauno turgus, 19 sandėlis)', 'Kaunas', '+370 608 42654', 'I–V 8.00–17.00', 'VI–VII 8.00–16.00', '-', '23.994550', '54.916064', 1),
(3, 'Vytauto pr. 6, Kaunas (STOTIES turgus, 2-a salė)', 'Kaunas', '+370 608 42650', 'Darbo laikas: I–V 8.00–18.00', 'VI–VII 8.00–16.00', '-', '23.930648', '54.887793', 1),
(4, 'Laisvės al. 97, Kaunas', 'Kaunas', '+370 671 58652', 'Darbo laikas: I–V 8.00–20.00', 'VI–VII 9.00–19.00', '-', '23.902739', '54.897618', 1),
(5, 'Laisvės al. 61, Kaunas', 'Kaunas', '+370 645 16752', 'Darbo laikas: I–V 8.00–20.00', 'VI–VII 9.00–19.00', '-', '23.912271', '54.897225', 1),
(6, 'Savanorių pr. 346, Kaunas (PC SAVAS)', 'Kaunas', '+370 672 69656', 'Darbo laikas: I–VI 8.00–21.00', 'VII 9.00–20.00', '-', '23.963118', '54.922091', 1),
(7, 'K. Baršausko g. 66A, Kaunas (PC MOLAS)', 'Kaunas', '+370 679 43929', 'Darbo laikas: I–VI 9.00–20.00', 'VII 9.00–19.00', '-', '23.967680', '54.899338', 1),
(8, 'Juozapavičiaus pr. 68, Kaunas', 'Kaunas', '+370 646 12670', 'Darbo laikas: I–V 8.00–19.00', 'VI 8.00–18.00', 'VII 8.00–16.00', '23.936581', '54.872358', 1),
(9, 'Kovo 11-osios g. 22, Kaunas (GIRSTUPIO turgus, prie pagrindinio įėjimo)', 'Kaunas', '+370 616 83560', 'Darbo laikas: I–V 7.30–18.30', 'VI 7.30–16.30', 'VII 7.30–15.00', '23.975135', '54.905982', 1),
(10, 'Šiaurės pr. 44, Kaunas (PC NORFA)', 'Kaunas', '+370 679 64832', 'Darbo laikas: I–V 9.00–20.00', 'VI 9.00–19.00', 'VII 9.00–18.00', '23.926799', '54.929223', 1),
(11, 'Jonavos g. 60, Kaunas (PC RIVER MALL)', 'Kaunas', '+370 639 33406', 'Darbo laikas: I–VII 9.00–20.00', '-', '-', '23.897870', '54.903420', 1),
(12, 'Herkaus Manto g. 2, Klaipėda ', 'Klaipėda', '+370 673 80933', 'Darbo laikas: I–V 7.30–20.00', 'VI–VII 9.00–20.00', '-', '21.131763', '55.712022', 1),
(13, 'Herkaus Manto g. 27, Klaipėda ', 'Klaipėda', '+370 618 58445', 'Darbo laikas: I–V 7.30–20.00', 'VI–VII 9.00–20.00', '-', '21.127983', '55.717156', 1),
(14, 'Herkaus Manto g. 90-1, Klaipėda (PC STUDLENDAS)', 'Klaipėda', '+370 645 32678', 'Darbo laikas: I–VI 9.00–20.00', 'VII 10.00-20.00', '-', '21.124444', '55.728345', 1),
(15, 'Naikupės g. 18, Klaipėda', 'Klaipėda', '+370 620 79561', 'Darbo laikas: I–V 7.30–20.00', 'VI–VII 8.00–18.00', '-', '21.155292', '55.678538', 1),
(16, 'Taikos pr. 80, Klaipėda („Naujasis turgus“)', 'Klaipėda', '+370 615 75816', 'Darbo laikas: I–VI 8.00–18.00', 'VII 8.00–17.00', '-', '21.167500', '55.674587', 1),
(17, 'Taikos pr. 115, Klaipėda (PC IKI)', 'Klaipėda', '-', 'Darbo laikas: I–VII 9.00–20.00', '-', '-', '21.171235', '55.672031', 1),
(18, 'Taikos pr. 139, Klaipėda (PC MOLAS)', 'Klaipėda', '-', 'Darbo laikas: I–VII 9.00–20.00', '-', '-', '21.176192', '55.665236', 1),
(19, 'Taikos pr. 141, Klaipėda (PC BIG)', 'Klaipėda', '+370 672 03360', 'Darbo laikas: I–VII 9.00–21.00', '-', '-', '21.177052', '55.663536', 1),
(20, 'Lyros g. 13, Šiauliai (PC LYRA, vidiniame kiemelyje)', 'Šiauliai', '+370 630 04903', 'Darbo laikas: I–V 8.30–19.00', 'VI 8.30–17.00', 'VII 9.00–15.30', '23.259794', '55.914463', 1),
(21, 'Sevastopolio g. 19, Šiauliai', 'Šiauliai', '+370 630 04905', 'Darbo laikas: I–V 8.30–19.00', 'VI 8.30–17.00', 'VII 9.00–15.30', '23.264348', '55.907109', 1),
(22, 'Vilniaus g. 212, Šiauliai (DVARO turgus)', 'Šiauliai', '+370 630 04902', 'Darbo laikas: I–V 8.00–17.30', 'VI 8.00–16.00', '-', '23.305342', '55.937563', 1),
(23, 'Pramonės g. 6, Šiauliai (PC BRUKLINAS)', 'Šiauliai', '+370 630 04904', 'Darbo laikas: I–V 9.00–20.00', 'VI 9.00–20.00', 'VII 9.00–18.00', '23.303222', '55.914447', 1),
(24, 'A. Mickevičiaus g. 2a, Šiauliai (Pėsčiųjų bulvaras)', 'Šiauliai', '+370 655 17287', 'Darbo laikas: I–V 7.30–20.00', 'VI 9.00–20.00', 'VII nedirbame', '23.310297', '55.933968', 1),
(25, 'Vilniaus g. 179 , Šiauliai (Pėsčiųjų bulvaras)', 'Šiauliai', '+370 655 75219', 'Darbo laikas: I–V 7.30–20.00', 'VI 9.00–20.00', 'VII 9.00–19.00', '23.316033', '55.930616', 1),
(26, 'Gardino g. 2 , Šiauliai (PC IKI)', 'Šiauliai', '+370 602 02219', 'Darbo laikas: I–VII 8.00–20.00', '-', '-', '23.273002', '55.913770', 1),
(27, 'Lyros g. 5A, Šiauliai', 'Šiauliai', '+370 601 36014', 'Darbo laikas: I–V 10.00–19.00', 'VI 8.00–16.00', 'VII nedirbame', '23.256723', '55.913675', 1),
(28, 'Pylimo g. 58, Vilnius (HALĖS turgus, prie įėjimo iš Senamiesčio pusės)', 'Vilnius', '+370 607 11557', 'Darbo laikas: I nedirbame', 'II–VI 7.00–17.00', 'VII 7.00–16.00', '25.286123', '54.673645', 1),
(29, 'Šeškinės g. 28, Vilnius', 'Vilnius', '+370 628 77737', 'Darbo laikas: I–V 9.00–19.00', 'VI–VII 9.00–17.00', '-', '25.244473', '54.716054', 1),
(30, 'Žirmūnų g. 2, Vilnius (PC IKI)', 'Vilnius', '+370 633 87373', 'Darbo laikas: I–V 9.00–20.00', 'VI–VII 9.00–18.00', '-', '25.298830', '54.697334', 1),
(31, 'Viršuliškių g. 40, Vilnius (PC MADA)', 'Vilnius', '+370 612 22069', 'Darbo laikas: II–VI 9.00–20.00', 'VII 10.00–18.00', '-', '25.227286', '54.708029', 1),
(32, 'Liepkalnio g. 112, Vilnius (PC MAXIMA)', 'Vilnius', '+370 650 20013', 'Darbo laikas: I–V 9.00–20.00', 'VI 9.00–20.00', 'VII 9.00–18.00', '25.303797', '54.653444', 1),
(33, 'Žeimių g. 3, Jonava', 'Jonava', '+370 624 88624', 'Darbo laikas: I–V 8.00–19.30', 'VI 8.00–18.00', 'VII 9.00–17.00', '24.278350', '55.072852', 1),
(34, 'Basanavičiaus g. 80, Kėdainiai (GIRAITĖS turgus)', 'Kėdainiai', '+370 620 51133', 'Darbo laikas: I–V 8.00–18.30', 'VI 8.00–15.00', 'VII nedirbame', '23.963807', '55.279854', 1),
(35, 'Žemaitės g. 21, Kėdainiai', 'Kėdainiai', '+370 620 51133', 'Darbo laikas: I–V 8.00–19.00', 'VI 8.00–14.00', 'VII nedirbame', '23.983742', '55.290821', 1),
(36, 'Turgaus aikštė 17A, Telšiai', 'Telšiai', '+370 686 47281', 'Darbo laikas: I–V 8.00–17.30', 'VI 7.30–19.00', 'VII 8.00–18.00', '22.252382', '55.983754', 1),
(37, 'Vytauto g. 11, Plungė', 'Plungė', '+370 614 12574', 'Darbo laikas: I–V 8.00–17.30', 'VI 8.00–18.00', 'VII 8.30–18.00', '21.842929', '55.913048', 1),
(38, 'Lietuvininkų g.  40, Šilutė', 'Šilutė', '+370 665 18863', 'Darbo laikas: I–V 8.00–17.30', 'VI 8.00–18.00', 'VII nedirbame', '21.471019', '55.342671', 1),
(39, 'Dariaus ir Girėno g. 3, Šilalė', 'Šilalė', '+370 612 64005', 'Darbo laikas: I–V 8.00–17.30', 'VI 7.30–17.00', 'VII 9.00–17.00', '22.180670', '55.490575', 1),
(40, 'Dariaus ir Girėno g. 22, Radviliškis', 'Radviliškis', '+370 652 72880', 'Darbo laikas: I–V 8.00–19.00', 'VI 9.00–15.30', 'VII 9.00–15.00', '23.538626', '55.809044', 1),
(41, 'Naujoji g. 8, Alytus (PC ŽUVINTAS)', 'Alytus', '+370 643 48712', 'Darbo laikas: I–V 7.00–18.00', 'VI 7.00–15.00', 'VII Nedirbame', '24.030488', '54.397106', 1),
(42, 'Jaunimo g. 24, Alytus (PC IKI)', 'Alytus', '+370 699 01492', 'Darbo laikas: I–V 7.30–19.30', 'VI 8.00–18.00', 'VII 8.00–18.00', '24.022054', '54.391399', 1),
(43, 'Ukmergės g. 18, Panevėžys (PC IKI)', 'Panevėžys', '+370 601 37236', 'Darbo laikas: I–V 8.00–20.00', 'VI 9.00-19.00', 'VII 9.00-18.00', '24.365924', '55.728007', 1),
(44, 'Naftininkų g. 40A, Mažeikiai', 'Mažeikiai', '+370 645 32683', 'Darbo laikas: I–V 8.00–18.00', '-', '-', '22.336888', '56.302940', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gaminiai`
--
ALTER TABLE `gaminiai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `miestai`
--
ALTER TABLE `miestai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `padaliniai`
--
ALTER TABLE `padaliniai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gaminiai`
--
ALTER TABLE `gaminiai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `miestai`
--
ALTER TABLE `miestai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `padaliniai`
--
ALTER TABLE `padaliniai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;