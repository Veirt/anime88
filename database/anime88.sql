-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 07:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anime88`
--

-- --------------------------------------------------------

--
-- Table structure for table `anime`
--

CREATE TABLE `anime` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `episodes` int(11) NOT NULL,
  `status` enum('Airing','Finished','Upcoming') NOT NULL,
  `season` enum('Winter','Spring','Summer','Fall') NOT NULL,
  `year` year(4) NOT NULL,
  `studio` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `anime`
--

INSERT INTO `anime` (`id`, `name`, `synopsis`, `episodes`, `status`, `season`, `year`, `studio`, `poster`) VALUES
(1, 'Vinland Saga', 'Young Thorfinn grew up listening to the stories of old sailors that had traveled the ocean and reached the place of legend, Vinland. It\'s said to be warm and fertile, a place where there would be no need for fighting—not at all like the frozen village in Iceland where he was born, and certainly not like his current life as a mercenary. War is his home now. Though his father once told him, \"You have no enemies, nobody does. There is nobody who it\'s okay to hurt,\" as he grew, Thorfinn knew that nothing was further from the truth. The war between England and the Danes grows worse with each passing year. Death has become commonplace, and the viking mercenaries are loving every moment of it. Allying with either side will cause a massive swing in the balance of power, and the vikings are happy to make names for themselves and take any spoils they earn along the way. Among the chaos, Thorfinn must take his revenge and kill Askeladd, the man who murdered his father. The only paradise for the vikings, it seems, is the era of war and death that rages on.', 23, 'Finished', 'Summer', '2019', 'WIT Studio', 'vinland-saga.png'),
(2, '16bit Sensation: Another Layerssss', 'Konoha Akisato is an illustrator who loves beautiful girls and bishoujo games. She works at a video game studio and aspires to become a super famous illustrator. However, reality did not work out as well as she had hoped. In the present, where mobile games are all the rage, Konoha spent her days as a sub-illustrator just coloring the back of background characters.\r\n\r\nOne day, after some happenings, Konoha got her hand on a masterpiece of a bishoujo game from the owner of a game shop. Thinking back to the golden age of bishoujo games, Konoha opened the package of \"Dokyusei\" and was suddenly enveloped by a dazzling light, transferring her to the past!\r\n\r\nShe arrived in the year 1992â€”The golden age of bishoujo games! Now joining a company named \"Alcoholsoft,\" will Konoha be able to think, draw, and create her beautiful girls?!\r\n\r\nA story about a girl brought to you by her overwhelming love for beautiful girlsâ€”\"Now, let\'s start!\"', 13, 'Airing', 'Fall', '2023', 'Silver', '16bit-sensation-another-layerssss.jpg'),
(3, 'Hai to Gensou no Grimgar', 'Fear, survival, instinct. Thrown into a foreign land with nothing but hazy memories and the knowledge of their name, they can feel only these three emotions resonating deep within their souls. A group of strangers is given no other choice than to accept the only paying job in this game-like world--the role of a soldier in the Reserve Army--and eliminate anything that threatens the peace in their new world, Grimgar.\r\n\r\nWhen all of the stronger candidates join together, those left behind must create a party together to survive: Manato, a charismatic leader and priest; Haruhiro, a nervous thief; Yume, a cheerful hunter; Shihoru, a shy mage; Moguzo, a kind warrior; and Ranta, a rowdy dark knight. Despite its resemblance to one, this is no game--there are no redos or respawns; it is kill or be killed.\r\n\r\nIt is now up to this ragtag group of unlikely fighters to survive together in a world where life and death are separated only by a fine line.', 11, 'Finished', 'Winter', '2016', 'A-1 Pictures', 'hai-to-gensou-no-grimgar.png'),
(4, 'Netoge no Yome wa Onnanoko ja Nai to Omotta?', 'After mustering up the courage to propose to a girl in an online game, naive otaku Hideki \"Rusian\" Nishimura is devastated when she flat-out rejects him. To make matters worse, the girl reveals that she is actually an older man in real life. With his dreams crushed and his heart broken, Rusian comes to an abrupt decision in the midst of his raging fit: he will never trust another girl in an online game again.\r\n<br>\r\nYears later, Rusian is now in a guild with three other players, one of whom possesses a female avatar by the name of Ako. Ako is deeply in love with Rusian and wants to marry him. Although he entertains the possibility that she might be a guy, Rusian accepts her proposal, claiming that her gender does not matter as long as she is cute in-game. However, after a discussion between the guild members that led to all of them having an offline meeting, Rusian finds out that Ako, along with the other members, is not just a girl but also his schoolmate.\r\n', 12, 'Finished', 'Spring', '2016', 'Project No.9', 'netoge-no-yome-wa-onnanoko-ja-nai-to-omotta-.png'),
(5, 'Kimi no Koto ga Daidaidaidaidaisuki na 100-nin no Kanojo', 'Upon graduating middle school, Rentarou Aijou manages to confess to the girl he loves. Unfortunately, he gets rejected, making it his 100th rejection in a row. Having experienced heartbreak after heartbreak, he goes to a matchmaking shrine and prays with the hope of finally getting a girlfriend in high school. Suddenly, the god of the shrine appears, promising Rentarou that he will meet one hundred soulmates in high school.\r\n\r\nAlthough skeptical at first, Rentarou quickly acknowledges the truth behind the god\'s words when two of his soulmates—Hakari Hanazono and Karane Inda—confess to him the very same day that they meet him. However, there was one detail that the god forgot to tell Rentarou: if any of his soulmates fails to get into a relationship with him, they will die. Now trapped in a matter of life and death, Rentarou decides to date all of his soulmates.\r\n\r\nWith a heart so big that it can be shared among one hundred girlfriends, Rentarou makes the most out of his unanticipated high school life, with the Rentarou family growing ever larger!', 24, 'Airing', 'Fall', '2023', 'Bibury Animation Studios', 'kimi-no-koto-ga-daidaidaidaidaisuki-na-100-nin-no-kanojo.jpg'),
(6, 'Yahari Ore no Seishun Love Comedy wa Machigatteiru.', 'Hachiman Hikigaya is an apathetic high school student with narcissistic and semi-nihilistic tendencies. He firmly believes that joyful youth is nothing but a farce, and everyone who says otherwise is just lying to themselves.\r\n\r\nIn a novel punishment for writing an essay mocking modern social relationships, Hachiman\'s teacher forces him to join the Volunteer Service Club, a club that aims to extend a helping hand to any student who seeks their support in achieving their goals. With the only other club member being the beautiful ice queen Yukino Yukinoshita, Hachiman finds himself on the front line of other people\'s problems—a place he never dreamed he would be. As Hachiman and Yukino use their wits to solve many students\' problems, will Hachiman\'s rotten view of society prove to be a hindrance or a tool he can use to his advantage?', 13, 'Finished', 'Spring', '2013', 'Brain\'s Base', 'yahari-ore-no-seishun-love-comedy-wa-machigatteiru-.jpg'),
(7, 'Yahari Ore no Seishun Love Comedy wa Machigatteiru. Zoku', 'With the Volunteer Service Club now firmly established, it is receiving more requests from students in search of solutions to their various issues. However, the club members often struggle to see eye to eye when it comes to their problem-solving ideals. The suggestions that Hachiman Hikigaya recommends frequently clash with those of Yukino Yukinoshita, fracturing the relationships within the club.\r\n\r\nDespite their differences, with the trio constantly trying to find common ground, they may soon reach a point where they discover something genuine.', 13, 'Finished', 'Spring', '2015', 'feel.', 'yahari-ore-no-seishun-love-comedy-wa-machigatteiru-zoku.jpg'),
(8, 'Yahari Ore no Seishun Love Comedy wa Machigatteiru. Kan', 'Resolved to become a more independent person, Yukino Yukinoshita decides to smoothen things out with her parents, and the first step toward achieving that goal is to prove herself.\r\n\r\nAs graduation draws closer for the third-year students, Iroha Isshiki—the president of the student council—requests a graduation prom in collaboration with the Volunteer Service Club. Yukino accepts this request of her own volition, hoping to use it as a chance to demonstrate her self-reliance, but what lies ahead of her may prove to be a hard hurdle to cross.\r\n\r\nYahari Ore no Seishun Love Comedy wa Machigatteiru. Kan revolves around the graduation prom as emotions are poured into the preparations for the event. At the same time, a chance for the Volunteer Service Club members to better understand each other presents itself. And thus, Hachiman Hikigaya\'s hectic and bittersweet high school life begins to draw to a close.', 12, 'Finished', 'Summer', '2020', 'feel.', 'yahari-ore-no-seishun-love-comedy-wa-machigatteiru-kan.jpg'),
(9, 'Otonari no Tenshi-sama ni Itsunomanika Dame Ningen ni Sareteita Ken', 'Mahiru Shiina is worthy of her nickname \"Angel\": she is a divine beauty loved by all, and she excels in both academics and athletics. Shiina lives in an entirely different world from Amane Fujimiya, her next-door neighbor. Despite living so close together, they have never spoken once. But their silence is broken when Fujimiya spots Shiina gloomily sitting on a swing amidst a heavy rainstorm and lends her his umbrella.\r\n\r\nWhen Fujimiya catches a cold the next day, Shiina wishes to return the favor for the umbrella by nursing him back to health. Believing that this would be their first and last interaction, he silently appreciates her kindness. However, Shiina—who can not help but worry about Fujimiya\'s lack of tidiness and proper nutrition—begins to cook and clean for him. As the unlikely pair spend time together in Fujimiya\'s apartment, they explore the true nature of their relationship and the gentle emotions that emerge from it.', 12, 'Finished', 'Winter', '2023', 'Project No.9', 'otonari-no-tenshi-sama-ni-itsunomanika-dame-ningen-ni-sareteita-ken.jpg'),
(10, 'Steins;Gate', 'Eccentric scientist Rintarou Okabe has a never-ending thirst for scientific exploration. Together with his ditzy but well-meaning friend Mayuri Shiina and his roommate Itaru Hashida, Rintarou founds the Future Gadget Laboratory in the hopes of creating technological innovations that baffle the human psyche. Despite claims of grandeur, the only notable \"gadget\" the trio have created is a microwave that has the mystifying power to turn bananas into green goo.\r\n\r\nHowever, when Rintarou decides to attend neuroscientist Kurisu Makise\'s conference on time travel, he experiences a series of strange events that lead him to believe that there is more to the \"Phone Microwave\" gadget than meets the eye. Apparently able to send text messages into the past using the microwave, Rintarou dabbles further with the \"time machine,\" attracting the ire and attention of the mysterious organization SERN.\r\n\r\nDue to the novel discovery, Rintarou and his friends find themselves in an ever-present danger. As he works to mitigate the damage his invention has caused to the timeline, he is not only fighting a battle to save his loved ones, but also one against his degrading sanity.', 24, 'Finished', 'Spring', '2011', 'White Fox', 'steins-gate.jpg'),
(11, 'Steins;Gate 0', 'The eccentric, self-proclaimed mad scientist Rintarou Okabe has become a shell of his former self. Depressed and traumatized after failing to rescue his friend Makise Kurisu, he has decided to forsake his mad scientist alter ego and live as an ordinary college student. Surrounded by friends who know little of his time travel experiences, Okabe spends his days trying to forget the horrors of his adventures alone.\r\n\r\nWhile working as a receptionist at a college technology forum, Okabe meets the short, spunky Maho Hiyajo, who\r\nlater turns out to be the interpreter at the forum\'s presentation, conducted by Professor Alexis Leskinen. In front of a stunned crowd, Alexis and Maho unveil Amadeus—a revolutionary AI capable of storing a person\'s memories and creating a perfect simulation of that person complete with their personality and quirks. Meeting with Maho and Alexis after the presentation, Okabe learns that the two were Kurisu\'s colleagues in university, and that they have simulated her in Amadeus. Hired by Alexis to research the simulation\'s behavior, Okabe is given the chance to interact with the shadow of a long-lost dear friend. Dangerously tangled in the past, Okabe must face the harsh reality and carefully maneuver around the disastrous consequences that come with disturbing the natural flow of time.', 23, 'Finished', 'Spring', '2018', 'White Fox', 'steins-gate-0.jpg'),
(12, 'Summertime Render', 'Since the death of his parents, Shinpei Ajiro had lived with the Kofune family and their two daughters—Mio and Ushio. Although he then left his home island to continue his education in Tokyo, Shinpei returns after Ushio tragically drowns during the attempted rescue of a little girl. During the funeral, his best friend informs him about bruises found around Ushio\'s neck, casting doubt over the cause of her death.\r\n\r\nSuspecting a murder has taken place, Shinpei reevaluates recent events, but strange incidents only continue to transpire. Disappearing people and other unexplainable occurrences lead Mio to recall an old folktale referring to entities called \"Shadows,\" which may not be entirely fantasy. Supposedly, an encounter with one\'s Shadow foretells the person\'s impending demise.\r\n\r\nFacing the dark side of Hitogashima Island, Shinpei stands against his grim fate to fulfill Ushio\'s final will—to protect Mio.', 25, 'Finished', 'Spring', '2022', 'OLM', 'summertime-render.jpg'),
(13, '\"Oshi no Ko\"', 'In the entertainment world, celebrities often show exaggerated versions of themselves to the public, concealing their true thoughts and struggles beneath elaborate lies. Fans buy into these fabrications, showering their idols with undying love and support, until something breaks the illusion. Sixteen-year-old rising star Ai Hoshino of pop idol group B Komachi has the world captivated; however, when she announces a hiatus due to health concerns, the news causes many to become worried.\r\n\r\nAs a huge fan of Ai, gynecologist Gorou Amemiya cheers her on from his countryside medical practice, wishing he could meet her in person one day. His wish comes true when Ai shows up at his hospital—not sick, but pregnant with twins! While the doctor promises Ai to safely deliver her children, he wonders if this encounter with the idol will forever change the nature of his relationship with her.', 11, 'Finished', 'Spring', '2023', 'Doga Kobo', '-oshi-no-ko-.jpg'),
(14, 'Fate/stay night', 'After a mysterious inferno kills his family, Shirou is saved and adopted by Kiritsugu Emiya, who teaches him the ways of magic and justice.\r\n\r\nOne night, years after Kiritsugu\'s death, Shirou is cleaning at school, when he finds himself caught in the middle of a deadly encounter between two superhumans known as Servants. During his attempt to escape, the boy is caught by one of the Servants and receives a life-threatening injury. Miraculously, he survives, but the same Servant returns to finish what he started. In desperation, Shirou summons a Servant of his own, a knight named Saber. The two must now participate in the Fifth Holy Grail War, a battle royale of seven Servants and the mages who summoned them, with the grand prize being none other than the omnipotent Holy Grail itself.\r\n\r\nFate/stay night follows Shirou as he struggles to find the fine line between a hero and a killer, his ideals clashing with the harsh reality around him. Will the boy become a hero like his foster father, or die trying?', 24, 'Finished', 'Winter', '2006', 'Studio Deen', 'fate-stay-night.jpg'),
(15, 'Fate/Zero', 'With the promise of granting any wish, the omnipotent Holy Grail triggered three wars in the past, each too cruel and fierce to leave a victor. In spite of that, the wealthy Einzbern family is confident that the Fourth Holy Grail War will be different; namely, with a vessel of the Holy Grail now in their grasp. Solely for this reason, the much hated \"Magus Killer\" Kiritsugu Emiya is hired by the Einzberns, with marriage to their only daughter Irisviel as binding contract.\r\n\r\nKiritsugu now stands at the center of a cutthroat game of survival, facing off against six other participants, each armed with an ancient familiar, and fueled by unique desires and ideals. Accompanied by his own familiar, Saber, the notorious mercenary soon finds his greatest opponent in Kirei Kotomine, a priest who seeks salvation from the emptiness within himself in pursuit of Kiritsugu.', 13, 'Finished', 'Fall', '2011', 'ufotable', 'fate-zero.jpg'),
(16, 'Fate/Zero 2nd Season', 'As the Fourth Holy Grail War rages on with no clear victor in sight, the remaining Servants and their Masters are called upon by Church supervisor Risei Kotomine, in order to band together and confront an impending threat that could unravel the Grail War and bring about the destruction of Fuyuki City. The uneasy truce soon collapses as Masters demonstrate that they will do anything in their power, no matter how despicable, to win.\r\n\r\nSeeds of doubt are sown between Kiritsugu Emiya and Saber, his Servant, as their conflicting ideologies on heroism and chivalry clash. Meanwhile, an ominous bond forms between Kirei Kotomine, who still seeks to find his purpose in life, and one of the remaining Servants. As the countdown to the end of the war reaches zero, the cost of winning begins to blur the line between victory and defeat.', 12, 'Finished', 'Spring', '2012', 'ufotable', 'fate-zero-2nd-season.jpg'),
(17, 'Fate/stay night: Unlimited Blade Works', 'The Holy Grail War is a battle royale among seven magi who serve as Masters. Masters, through the use of the command seals they are given when they enter the war, command Heroic Spirits known as Servants to fight for them in battle. In the Fifth Holy Grail War, Rin Toosaka is among the magi entering the competition. With her Servant, Archer, she hopes to obtain the ultimate prize—the Holy Grail, a magical artifact capable of granting its wielder any wish.\r\n\r\nOne of Rin\'s classmates, Shirou Emiya, accidentally enters the competition and ends up commanding a Servant of his own known as Saber. As they find themselves facing mutual enemies, Rin and Shirou decide to form a temporary alliance as they challenge their opponents in the Holy Grail War.', 12, 'Finished', 'Fall', '2014', 'ufotable', 'fate-stay-night-unlimited-blade-works.jpg'),
(18, 'Fate/stay night: Unlimited Blade Works 2nd Season', 'In the midst of the Fifth Holy Grail War, Caster sets her plans into motion, beginning with the capture of Shirou\'s Servant Saber. With the witch growing ever more powerful, Rin and Archer determine she is a threat that must be dealt with at once. But as the balance of power in the war begins to shift, the Master and Servant find themselves walking separate ways.\r\n\r\nMeanwhile, despite losing his Servant and stumbling from injuries, Shirou ignores Rin\'s warning to abandon the battle royale, forcing his way into the fight against Caster. Determined to show his resolve in his will to fight, Shirou\'s potential to become a protector of the people is put to the test.\r\n\r\nAmidst the bloodshed and chaos, the motivations of each Master and Servant are slowly revealed as they sacrifice everything in order to arise as the victor and claim the Holy Grail.', 13, 'Finished', 'Spring', '2015', 'ufotable', 'fate-stay-night-unlimited-blade-works-2nd-season.jpg'),
(19, 'Fate/Apocrypha', 'The Holy Grail is a powerful, ancient relic capable of granting any wish the beholder desires. In order to obtain this power, various magi known as \"masters\" summon legendary Heroic Spirits called \"servants\" to fight for them in a destructive battle royale—the Holy Grail War. Only the last master-servant pair standing may claim the Grail for themselves. Yet, the third war ended inconclusively, as the Grail mysteriously disappeared following the conflict.\r\n\r\nMany years later, the magi clan Yggdmillennia announces its possession of the Holy Grail, and intends to leave the Mage\'s Association. In response, the Association sends 50 elite magi to retrieve the Grail; however, all but one are killed by an unknown servant. The lone survivor is used as a messenger to convey Yggdmillennia\'s declaration of war on the Association.\r\n\r\nAs there are only two parties involved in the conflict, the Holy Grail War takes on an unusual form. Yggdmillennia and the Mage\'s Association will each deploy seven master-servant pairs, and the side that loses all its combatants first will forfeit the artifact. As the 14 masters summon their servants and assemble on the battlefield, the magical world shivers in anticipation with the rise of the Great Holy Grail War.', 25, 'Finished', 'Summer', '2017', 'A-1 Pictures', 'fate-apocrypha.jpg'),
(20, 'Sousou no Frieren', 'The demon king has been defeated, and the victorious hero party returns home before disbanding. The four—mage Frieren, hero Himmel, priest Heiter, and warrior Eisen—reminisce about their decade-long journey as the moment to bid each other farewell arrives. But the passing of time is different for elves, thus Frieren witnesses her companions slowly pass away one by one.\r\n\r\nBefore his death, Heiter manages to foist a young human apprentice called Fern onto Frieren. Driven by the elf\'s passion for collecting a myriad of magic spells, the pair embarks on a seemingly aimless journey, revisiting the places that the heroes of yore had visited. Along their travels, Frieren slowly confronts her regrets of missed opportunities to form deeper bonds with her now-deceased comrades.', 28, 'Airing', 'Fall', '2023', 'Madhouse', 'sousou-no-frieren.jpg'),
(21, 'Kanojo mo Kanojo', 'Naoya Mukai is having the time of his life after his childhood friend Saki Saki finally accepts one of his countless confessions. Ensuring that their relationship will stay strong, he spares no effort in showering affection to his now beloved girlfriend.\r\n\r\nHowever, one afternoon, another girl named Nagisa Minase suddenly confesses to Naoya following months of preparation. Even though he politely rejects her, Nagisa\'s irresistible charm and determination continue to attract Naoya. Wanting to fulfill both Saki and Nagisa\'s desires, Naoya ends up proposing a crazy idea—to date the two of them simultaneously, with both girls fully aware. This unprecedented state of affairs ultimately causes wacky and hilarious situations in whatever they do to keep their unusual relationship going.', 12, 'Finished', 'Summer', '2021', 'Tezuka Productions', 'kanojo-mo-kanojo.jpg'),
(22, 'Kanojo mo Kanojo Season 2', 'Second season of Kanojo mo Kanojo.', 12, 'Airing', 'Fall', '2023', 'SynergySP', 'kanojo-mo-kanojo-season-2.jpg'),
(23, 'Dr. Stone', 'After five years of harboring unspoken feelings, high-schooler Taiju Ooki is finally ready to confess his love to Yuzuriha Ogawa. Just when Taiju begins his confession however, a blinding green light strikes the Earth and petrifies mankind around the world—turning every single human into stone.\r\n\r\nSeveral millennia later, Taiju awakens to find the modern world completely nonexistent, as nature has flourished in the years humanity stood still. Among a stone world of statues, Taiju encounters one other living human: his science-loving friend Senkuu, who has been active for a few months. Taiju learns that Senkuu has developed a grand scheme—to launch the complete revival of civilization with science. Taiju\'s brawn and Senkuu\'s brains combine to forge a formidable partnership, and they soon uncover a method to revive those petrified.\r\n\r\nHowever, Senkuu\'s master plan is threatened when his ideologies are challenged by those who awaken. All the while, the reason for mankind\'s petrification remains unknown.', 24, 'Finished', 'Summer', '2019', 'TMS Entertainment', 'dr-stone.jpg'),
(24, 'Dr. Stone: Stone Wars', 'Senkuu has made it his goal to bring back two million years of human achievement and revive the entirety of those turned to statues. However, one man stands in his way: Tsukasa Shishiou, who believes that only the fittest of those petrified should be revived.\r\n\r\nAs the snow melts and spring approaches, Senkuu and his allies in Ishigami Village finish the preparations for their attack on the Tsukasa Empire. With a reinvented cell phone model now at their disposal, the Kingdom of Science is ready to launch its newest scheme to recruit the sizable numbers of Tsukasa\'s army to their side. However, it is a race against time; for every day the Kingdom of Science spends perfecting their inventions, the empire rapidly grows in number.\r\n\r\nReuniting with old friends and gaining new allies, Senkuu and the Kingdom of Science must stop Tsukasa\'s forces in order to fulfill their goal of restoring humanity and all its creations. With the two sides each in pursuit of their ideal world, the Stone Wars have now begun!', 11, 'Finished', 'Winter', '2021', 'TMS Entertainment', 'dr-stone-stone-wars.jpg'),
(25, 'Dr. Stone: New World', 'With the ambitious Ryuusui Nanami on board, Senkuu Ishigami and his team are almost ready to sail the seas and reach the other side of the world—where the bizarre green light that petrified humanity originated. Thanks to the revival of a skillful chef, enough food is being prepared for the entire crew, and the incredible reinvention of the GPS promises to ensure safety on the open sea.\r\n\r\nPreparations for the upcoming journey progress swimmingly until Senkuu receives an eerie message from a mysterious source. More driven than ever, the scientist sets out to explore the new world and discover what it can offer for his scientific cause. Though the uncharted territories may hide unkind surprises, Senkuu, with a little help from science, is ready to take on any challenge.', 11, 'Finished', 'Spring', '2023', 'TMS Entertainment', 'dr-stone-new-world.jpg'),
(26, 'Dr. Stone: New World Part 2', 'Part two of Dr. Stone: New World.', 11, 'Airing', 'Fall', '2023', 'TMS Entertainment', 'dr-stone-new-world-part-2.jpg'),
(28, 's baru', 'sinopsis baru', 13, 'Airing', 'Summer', '2024', 'studio baru', 's-baru.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `anime_genre`
--

CREATE TABLE `anime_genre` (
  `id_anime` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `anime_genre`
--

INSERT INTO `anime_genre` (`id_anime`, `id_genre`) VALUES
(1, 1),
(1, 2),
(1, 5),
(2, 3),
(2, 20),
(3, 1),
(3, 2),
(3, 5),
(3, 7),
(4, 3),
(4, 13),
(5, 3),
(5, 18),
(5, 13),
(6, 3),
(6, 5),
(6, 13),
(6, 14),
(7, 3),
(7, 5),
(7, 13),
(7, 14),
(8, 3),
(8, 5),
(8, 13),
(8, 14),
(9, 13),
(9, 14),
(10, 5),
(10, 15),
(11, 5),
(11, 15),
(12, 4),
(12, 20),
(13, 5),
(13, 20),
(14, 1),
(14, 7),
(14, 13),
(14, 20),
(15, 1),
(15, 7),
(15, 20),
(16, 1),
(16, 7),
(16, 20),
(17, 1),
(17, 7),
(17, 20),
(18, 1),
(18, 7),
(18, 20),
(19, 1),
(19, 7),
(19, 20),
(20, 2),
(20, 5),
(20, 7),
(21, 3),
(21, 18),
(21, 13),
(21, 14),
(22, 3),
(22, 18),
(22, 13),
(22, 14),
(23, 2),
(23, 3),
(23, 15),
(24, 2),
(24, 3),
(24, 15),
(25, 2),
(25, 3),
(25, 15),
(26, 2),
(26, 3),
(26, 15),
(28, 1),
(28, 2);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`, `details`) VALUES
(1, 'Action', ''),
(2, 'Adventure', ''),
(3, 'Comedy', ''),
(4, 'Mystery', ''),
(5, 'Drama', ''),
(6, 'Mythology', ''),
(7, 'Fantasy', ''),
(8, 'Historical', ''),
(9, 'Horror', ''),
(10, 'Mecha', ''),
(11, 'Music', ''),
(12, 'Parody', ''),
(13, 'Romance', ''),
(14, 'School', ''),
(15, 'Sci-Fi', ''),
(16, 'Sports', ''),
(17, 'Super Power', ''),
(18, 'Harem', ''),
(19, 'Slice of Life', ''),
(20, 'Supernatural', ''),
(21, 'Military', ''),
(22, 'Psychological', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id_user` int(11) NOT NULL,
  `id_anime` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id_user`, `id_anime`, `rating`, `comment`) VALUES
(1, 1, 10, 'ntapz');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'vei', '$2y$10$Khwl2o6ivjWjKZtLPcbnWOY1nOX1kPGVeA2P2nRGca7FLZYqfIwli', 'user'),
(2, 'test', '$2y$10$8e8PcZ8fhRIQiteK1xK.meD3FHMUkcijfJ5LqrhHfsZ8plXUbubB.', 'user'),
(3, 'user', '$2y$10$q8qdX3PkiQx5IbDAdmsGzOEamQ3MlkqLBODFpuIybjmZjLlDsIKGS', 'user'),
(4, 'admin', '$2y$10$Py/EWVcW6TKUGoGtZqzE/uHg4098ohjdhoR/7XKYeF0tATp8AYHCG', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anime_genre`
--
ALTER TABLE `anime_genre`
  ADD KEY `id_anime` (`id_anime`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_anime` (`id_anime`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anime_genre`
--
ALTER TABLE `anime_genre`
  ADD CONSTRAINT `anime_genre_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `anime_genre_ibfk_3` FOREIGN KEY (`id_anime`) REFERENCES `anime` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`id_anime`) REFERENCES `anime` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
