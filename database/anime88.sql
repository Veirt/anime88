-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Nov 16, 2023 at 12:31 PM
-- Server version: 10.6.15-MariaDB-1:10.6.15+maria~ubu2004
-- PHP Version: 8.2.12

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
(2, '16bit Sensation: Another Layer', 'Konoha Akisato is an illustrator who loves beautiful girls and bishoujo games. She works at a video game studio and aspires to become a super famous illustrator. However, reality did not work out as well as she had hoped. In the present, where mobile games are all the rage, Konoha spent her days as a sub-illustrator just coloring the back of background characters.\r\n\r\nOne day, after some happenings, Konoha got her hand on a masterpiece of a bishoujo game from the owner of a game shop. Thinking back to the golden age of bishoujo games, Konoha opened the package of \"Dokyusei\" and was suddenly enveloped by a dazzling light, transferring her to the past!\r\n\r\nShe arrived in the year 1992â€”The golden age of bishoujo games! Now joining a company named \"Alcoholsoft,\" will Konoha be able to think, draw, and create her beautiful girls?!\r\n\r\nA story about a girl brought to you by her overwhelming love for beautiful girlsâ€”\"Now, let\'s start!\"', 13, 'Airing', 'Fall', '2023', 'Silver', '16bit-sensation-another-layer.png'),
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
(29, 'Zom 100: Zombie ni Naru made ni Shitai 100 no Koto', 'After graduating from a top university with an impressive extracurricular record in the rugby club, Akira Tendou has nailed every step of the way to securing his dream job. On top of that, a beautiful and kind co-worker always brightens his day in the office! Life seems to be going very well for Akira until he slowly realizes that sleepless nights and brutal work are his new reality.\r\n\r\nDue to three years of mind-numbing labor in an exploitative company, Akira is unable to recognize the tired, unaccomplished person he has become. On track to losing all passion in life like several of his overworked colleagues, Akira finds his saving grace in the most unexpected way possible—the breakout of a zombie apocalypse.\r\n\r\nWith the free time he finally has, Akira decides to complete a bucket list of a hundred things he wants to do before he eventually gets turned into a zombie. Although he is surrounded by the dead, Akira has never felt more alive!', 12, 'Airing', 'Summer', '2023', 'BUG FILMS', 'zom-100-zombie-ni-naru-made-ni-shitai-100-no-koto.jpg'),
(30, '5-toubun no Hanayome', 'Fuutarou Uesugi is an ace high school student, but leads an otherwise tough life. His standoffish personality and reclusive nature have left him friendless, and his father is debt-ridden, forcing his family to scrape by.\r\n\r\nOne day during his lunch break, Uesugi argues with a female transfer student who has claimed \"his seat,\" leading both of them to dislike each other. That same day, he is presented with a golden opportunity to clear his family\'s debt: a private tutoring gig for a wealthy family\'s daughter, with a wage of five times the market price. He accepts the proposal, but is horrified to discover that the client, Itsuki Nakano, is the girl he confronted earlier!\r\n\r\nAfter unsuccessfully trying to get back on Itsuki\'s good side, Uesugi finds out that his problems don\'t end there: Itsuki is actually a quintuplet, so in addition to her, he must also tutor her sisters—Miku, Yotsuba, Nino, and Ichika—who, despite the very real threat of flunking, want nothing to do with a tutor. However, his family\'s livelihood is on the line so Uesugi pushes on, adamant in his resolve to rid the sisters of their detest for studying and successfully lead them to graduation.', 12, 'Finished', 'Winter', '2019', 'Tezuka Productions', '5-toubun-no-hanayome.jpg'),
(31, '5-toubun no Hanayome 2nd Season', 'Through their tutor Fuutarou Uesugi\'s diligent guidance, the Nakano quintuplets\' academic performance shows signs of improvement, even if their path to graduation is still rocky. However, as they continue to cause various situations that delay any actual tutoring, Fuutarou becomes increasingly involved with their personal lives, further complicating their relationship with each other.\r\n\r\nOn another note, Fuutarou slowly begins to realize the existence of a possible connection between him and the past he believes to have shared with one of the five girls. With everyone\'s feelings beginning to develop and overlap, will they be able to keep their bond strictly to that of a teacher and his students—or will it mature into something else entirely?', 12, 'Finished', 'Winter', '2021', 'Bibury Animation Studios', '5-toubun-no-hanayome-2nd-season.jpg'),
(32, '86', 'According to the Republic of San Magnolia, their ongoing war against the Giadian Empire has no casualties—however, that is mere propaganda. While the silver-haired Alba of the Republic\'s eighty-five sectors live safely behind protective walls, those of different appearances are interned in a secret eighty-sixth faction. Known within the military as the Eighty-Six, they are forced to fight against the Empire\'s autonomous Legion under the command of the Republican \"Handlers.\"\r\n\r\nVladilena Milizé is assigned to the Spearhead squadron to replace their previous Handler. Shunned by her peers for being a fellow Eighty-Six supporter, she continues to fight against their inhumane discrimination. Shinei Nouzen is the captain of the Spearhead squadron. Infamous for being the sole survivor of every squadron he\'s been in, he insists on shouldering the names and wishes of his fallen comrades. When the fates of these young souls from two different worlds collide, will it ignite the spark that lights their path to salvation, or will they burn themselves in the flames of despair?', 11, 'Finished', 'Spring', '2021', 'A-1 Pictures', '86.jpg'),
(33, '86 Part 2', 'The disappearance of the Spearhead Squadron beyond the horizon does little to hide the intensity of the Republic of San Magnolia\'s endless propaganda. Vladilena Milizé continues to operate as \"Handler One,\" the commander of yet another dehumanized 86th faction\'s squadron in the continuous war against the Legion.\r\n\r\nOn the Western Front, Shinei Nouzen and his squad are quarantined in a military base controlled by the Federal Republic of Giad, formerly known as the Giadian Empire. The newly-established government grants the saved Eighty-Six full citizenship and freedom. Housed by the president Ernst Zimmerman himself, the group meets his adoptive daughter and the last Empress, Augusta Frederica Adel-Adler.\r\n\r\nHowever, within the calm of this tender society, Shinei and his team feel that their purpose is on the battlefield. Before long, they are once again in the midst of the Legion\'s onslaught as a part of the Federacy\'s Nordlicht Squadron, accompanied by Augusta Frederica. But, as history repeats itself, they realize that no matter the side, death and pain on the front lines are the only comfort they know.', 12, 'Finished', 'Fall', '2021', 'A-1 Pictures', '86-part-2.jpg'),
(34, 'Bakemonogatari', 'Koyomi Araragi, a third-year high school student, manages to survive a vampire attack with the help of Meme Oshino, a strange man residing in an abandoned building. Though being saved from vampirism and now a human again, several side effects such as superhuman healing abilities and enhanced vision still remain. Regardless, Araragi tries to live the life of a normal student, with the help of his friend and the class president, Tsubasa Hanekawa.\r\n\r\nWhen fellow classmate Hitagi Senjougahara falls down the stairs and is caught by Araragi, the boy realizes that the girl is unnaturally weightless. Despite Senjougahara\'s protests, Araragi insists he help her, deciding to enlist the aid of Oshino, the very man who had once helped him with his own predicament.\r\n\r\nThrough several tales involving demons and gods, Bakemonogatari follows Araragi as he attempts to help those who suffer from supernatural maladies.', 15, 'Finished', 'Summer', '2009', 'Shaft', 'bakemonogatari.jpg'),
(35, 'Nisemonogatari', 'Surviving a vampire attack, meeting several girls plagued by supernatural entities, and just trying to get through life are some of the things high school student Koyomi Araragi has had to deal with lately. On top of all this, he wakes up one morning to find himself kidnapped and tied up by his girlfriend Hitagi Senjougahara. Having run afoul of Deishuu Kaiki, a swindler who conned Senjougahara\'s family, she has taken it upon herself to imprison Araragi to keep him safe from the con man. But when Araragi gets a frantic message from his sister Karen, he learns that the fraud has set his sights on her.\r\n\r\nAlong with Karen\'s troubles, his other sister, Tsukihi, is having issues of her own. And when two mysterious women who seem to know more than they should about Araragi and his special group of friends step into their lives, not even he could anticipate their true goals, nor the catastrophic truths soon to be revealed.', 11, 'Finished', 'Winter', '2012', 'Shaft', 'nisemonogatari.jpg'),
(36, 'Monogatari Series: Second Season', 'Apparitions, oddities, and gods continue to manifest around Koyomi Araragi and his close-knit group of friends: Tsubasa Hanekawa, the group\'s modest genius; Shinobu Oshino, the resident doughnut-loving vampire; athletic deviant Suruga Kanbaru; bite-happy spirit Mayoi Hachikuji; Koyomi\'s cutesy stalker Nadeko Sengoku; and Hitagi Senjougahara, Koyomi\'s aloof classmate.\r\n\r\nMonogatari Series: Second Season revolves around these individuals and their struggle to overcome the darkness that is rapidly approaching. A new semester has begun and with graduation looming over Koyomi, he must quickly decide the paths he will walk, as well as the relationships and friends that he\'ll save. But as strange events begin to unfold, Koyomi is nowhere to be found, and a vicious tiger apparition has appeared in his absence. Hanekawa has become its target, and she must fend for herself—or bow to the creature\'s perspective on the feebleness of humanity.', 26, 'Finished', 'Summer', '2013', 'Shaft', 'monogatari-series-second-season.jpg'),
(37, 'Hanamonogatari', 'Now that Koyomi Araragi and Hitagi Senjougahara have graduated, very few familiar faces remain at Naoetsu Private High School. One of these is Suruga Kanbaru, holder of the Monkey\'s Paw. When she begins to hear talk of a mysterious being known as the \"Devil\" who will magically solve any problem, Kanbaru immediately thinks these rumors are about her and decides to investigate.\r\n\r\nShe discovers the Devil is actually Rouka Numachi, a former basketball rival from junior high who is no longer able to play due to a leg injury. Rouka provides free advice to those who seek her out. Acting as a collector of misfortune, she enjoys relieving the stress of her clients by providing them with the false hope of having their problems solved. Although Kanbaru sees no real harm being done, she reprimands Rouka for lying and heads home, relieved she is not the cause of the rumors. But she may have a reason to worry after all: she finds that her left hand has reverted back to its human form.', 5, 'Finished', 'Summer', '2014', 'Shaft', 'hanamonogatari.jpg'),
(38, 'Tsukimonogatari', 'Koyomi Araragi is studying hard in preparation for his college entrance exams when he begins to notice something very strange: his reflection no longer appears in a mirror, a characteristic of a true vampire. Worried about the state of his body, he enlists the help of the human-like doll Yotsugi Ononoki and her master Yozuru Kagenui, an immortal oddity specialist.\r\n\r\nQuickly realizing what is wrong with him, Yozuru gives him two choices: either abstain from using the vampiric abilities he received from Shinobu Oshino, or lose his humanity forever.', 4, 'Finished', 'Fall', '2014', 'Shaft', 'tsukimonogatari.jpg'),
(39, 'Owarimonogatari', 'A peculiar transfer student named Ougi Oshino has just arrived at Naoetsu Private High School. She is quickly introduced to senior student Koyomi Araragi by their mutual friend Kanbaru Suruga, in hopes of obtaining advice regarding a strange discovery she has made. After taking a look at the school\'s layout, Ougi notices that a classroom has appeared in an otherwise empty area—a place that should not exist.\r\n\r\nUnsure if this is the work of an apparition, Araragi and Ougi attempt to unravel the truth behind this enigma. But Araragi soon discovers, after finding himself locked in with Ougi, that the room holds the memory of an event he had long since forgotten.', 12, 'Finished', 'Fall', '2015', 'Shaft', 'owarimonogatari.jpg'),
(40, 'Yuru Camp', 'While the perfect getaway for most girls her age might be a fancy vacation with their loved ones, Rin Shima\'s ideal way of spending her days off is camping alone at the base of Mount Fuji. From pitching her tent to gathering firewood, she has always done everything by herself, and has no plans of leaving her little solitary world.\r\n\r\nHowever, what starts off as one of Rin\'s usual camping sessions somehow ends up as a surprise get-together for two when the lost Nadeshiko Kagamihara is forced to take refuge at her campsite. Originally intending to see the picturesque view of Mount Fuji for herself, Nadeshiko\'s plans are disrupted when she ends up falling asleep partway to her destination. Alone and with no other choice, she seeks help from the only other person nearby. Despite their hasty introductions, the two girls nevertheless enjoy the chilly night together, eating ramen and conversing while the campfire keeps them warm. And even after Nadeshiko\'s sister finally picks her up later that night, both girls silently ponder the possibility of another camping trip together.', 12, 'Finished', 'Winter', '2018', 'C-Station', 'yuru-camp.jpg'),
(41, 'Yuru Camp Season 2', 'Having spent Christmas camping with her new friends, Rin Shima embarks on a solo-camping trip to see the New Year sunrise by the sea. All goes according to plan until unforeseen weather blocks the roads back home, making a return trip impossible. Rin, who is now stranded for a few days, is invited by Nadeshiko Kagamihara to stay at her grandmother\'s house.\r\n\r\nWhat is supposed to be a two-day trip becomes an extended period of sightseeing and new experiences for Rin, and she encounters some new and old faces along the way. Yuru Camp? Season 2 continues the story of Rin, Nadeshiko, and their friends as they further explore the joys of camping.', 13, 'Finished', 'Winter', '2021', 'C-Station', 'yuru-camp-season-2.jpg'),
(42, 'Ansatsu Kyoushitsu', 'Tucked in the mountains near the elite Kunugigaoka Middle School lies a small derelict building that houses the delinquents and dropouts of Class 3-E. Looked down upon by their peers, the students in this class appear to have little hope in advancing their academic careers. That is, until the national government tasks them with eliminating the greatest threat to their planet: their new teacher.\r\n\r\nHaving already destroyed the moon, the octopus-like professor—dubbed \"Koro-sensei\"—has now threatened to destroy the Earth by March of the following year. In light of their mission, the students have found that killing him is easier said than done. Not only can Koro-sensei move at speeds of up to Mach 20, but he can also resist almost every earthly weapon. Ironically, he also proves to be one of the best teachers Class 3-E has ever had. Training the class to excel in both their studies as students and skills as assassins, Koro-sensei is confident that his students\' ingenuity and indomitable will could return them to the main campus.\r\n\r\nThrough trial and error, Nagisa Shiota, as well as the other students of Class 3-E, must figure out Koro-sensei\'s weaknesses—and fast, for the very fate of the world depends upon it.', 22, 'Finished', 'Winter', '2015', 'Lerche', 'ansatsu-kyoushitsu.jpg'),
(43, 'Ansatsu Kyoushitsu 2nd Season', 'Returning from their summer vacation, the students of Class 3-E at the prestigious Kunugigaoka Middle School find themselves up against unbeatable odds. Faced with the possibility of world annihilation, the students must come up with increasingly elaborate and creative ways to kill their teacher, the cunning yet optimistic and helpful Koro-sensei.\r\n\r\nHowever, eliminating Koro-sensei is not the only objective the students need to worry about. Gakuhou Asano, the academy\'s merciless and cruel principal, seeks to prevent Class 3-E\'s success by brainwashing his other hard-working pupils into ruthlessly competitive studying machines. Hostility begins to linger in the air as traitors and killers alike attempt to claim the bounty on Koro-sensei\'s head for themselves.\r\n\r\nNagisa Shiota, one of Class 3-E\'s most skilled assassins, finds himself in the middle of the conflict. While he works to maintain his academic standing and prevent the end of the world, domestic affairs jeopardize his place in Class 3-E. Together with his dedicated classmates, he must now face the threats head-on.', 25, 'Finished', 'Winter', '2016', 'Lerche', 'ansatsu-kyoushitsu-2nd-season.jpg'),
(44, 'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e', 'On the surface, Koudo Ikusei Senior High School is a utopia. The students enjoy an unparalleled amount of freedom, and it is ranked highly in Japan. However, the reality is less than ideal. Four classes, A through D, are ranked in order of merit, and only the top classes receive favorable treatment.\r\n\r\nKiyotaka Ayanokouji is a student of Class D, where the school dumps its worst. There he meets the unsociable Suzune Horikita, who believes she was placed in Class D by mistake and desires to climb all the way to Class A, and the seemingly amicable class idol Kikyou Kushida, whose aim is to make as many friends as possible.\r\n\r\nWhile class membership is permanent, class rankings are not; students in lower ranked classes can rise in rankings if they score better than those in the top ones. Additionally, in Class D, there are no bars on what methods can be used to get ahead. In this cutthroat school, can they prevail against the odds and reach the top?', 12, 'Finished', 'Summer', '2017', 'Lerche', 'youkoso-jitsuryoku-shijou-shugi-no-kyoushitsu-e.jpg'),
(45, 'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e 2nd Season', 'Life back on the cruise following the Island Special Examination is anything but smooth sailing. Almost immediately after their return, the first-year students of Tokyo Metropolitan Advanced Nurturing High School face yet another special exam, with both class and individual points on the line.\r\n\r\nIn addition to the complicated ruleset, more issues arise in the form of Kakeru Ryuuen and Kei Karuizawa. Angered by the previous test\'s outcome, Ryuuen is dead set on outdoing every class in the new challenge using any means necessary. Meanwhile, Karuizawa, a crucial pillar of Class D, is close to crumbling under the pressure of her past.\r\n\r\nThe stage is now set for Kiyotaka Ayanokouji to once again—using the full extent of his planning, foresight, and ruthless manipulation—steer Class D to victory as dangerously close enemy forces try to bring it down.', 13, 'Finished', 'Summer', '2022', 'Lerche', 'youkoso-jitsuryoku-shijou-shugi-no-kyoushitsu-e-2nd-season.jpg'),
(46, 'Tokyo Ghoul', 'A sinister threat is invading Tokyo: flesh-eating \"ghouls\" who appear identical to humans and blend into their population. Reserved college student Ken Kaneki buries his nose in books and avoids the news of the growing crisis. However, the appearance of an attractive woman named Rize Kamishiro shatters his solitude when she forwardly asks him on a date.\r\n\r\nWhile walking Rize home, Kaneki discovers she isn\'t as kind as she first appeared, and she has led him on with sinister intent. After a tragic struggle, he later awakens in a hospital to learn his life was saved by transplanting the now deceased Rize\'s organs into his own body.\r\n\r\nKaneki\'s body begins to change in horrifying ways, and he transforms into a human-ghoul hybrid. As he embarks on his new dreadful journey, Kaneki clings to his humanity in the evolving bloody conflict between society\'s new monsters and the government agents who hunt them.', 12, 'Finished', 'Summer', '2014', 'Pierrot', 'tokyo-ghoul.jpg'),
(47, 'Undead Girl Murder Farce', 'In 19th-century France, the wife of vampire noble Jean Duchet Godard is murdered in her own home. With the local human authorities unwilling to properly investigate the case, Godard hires a pair of private detectives known to specialize in the supernatural: Tsugaru Shinuchi, a man with a mysterious birdcage; and his partner, Aya Rindou. This enigmatic duo has come from faraway Japan for one purpose—to track down the man who stole both Aya\'s body and Tsugaru\'s humanity.', 13, 'Finished', 'Summer', '2023', 'Lapin Track', 'undead-girl-murder-farce.jpg'),
(48, 'Nichijou', 'Nichijou primarily focuses on the daily antics of a trio of childhood friends—high school girls Mio Naganohara, Yuuko Aioi and Mai Minakami—whose stories soon intertwine with the young genius Hakase Shinonome, her robot caretaker Nano, and their talking cat Sakamoto. With every passing day, the lives of these six, as well as of the many people around them, experience both the calms of normal life and the insanity of the absurd. Walking to school, being bitten by a talking crow, spending time with friends, and watching the principal suplex a deer: they are all in a day\'s work in the extraordinary everyday lives of those in Nichijou.', 26, 'Finished', 'Spring', '2011', 'Kyoto Animation', 'nichijou.jpg'),
(49, 'Another', 'In class 3-3 of Yomiyama North Junior High, transfer student Kouichi Sakakibara makes his return after taking a sick leave for the first month of school. Among his new classmates, he is inexplicably drawn toward Mei Misaki—a reserved girl with an eyepatch whom he met in the hospital during his absence. But none of his classmates acknowledge her existence; they warn him not to acquaint himself with things that do not exist. Against their words of caution, Kouichi befriends Mei—soon learning of the sinister truth behind his friends\' apprehension.\r\n\r\nThe ominous rumors revolve around a former student of the class 3-3. However, no one will share the full details of the grim event with Kouichi. Engrossed in the curse that plagues his class, Kouichi sets out to discover its connection to his new friend. As a series of tragedies arise around them, it is now up to Kouichi, Mei, and their classmates to unravel the eerie mystery—but doing so will come at a hefty price.\r\n', 12, 'Finished', 'Winter', '2012', 'P.A. Works', 'another.jpg'),
(50, 'Haikyuu!!', 'Ever since having witnessed the \"Little Giant\" and his astonishing skills on the volleyball court, Shouyou Hinata has been bewitched by the dynamic nature of the sport. Even though his attempt to make his debut as a volleyball regular during a middle school tournament went up in flames, he longs to prove that his less-than-impressive height ceases to be a hindrance in the face of his sheer will and perseverance.\r\n\r\nWhen Hinata enrolls in Karasuno High School, the Little Giant\'s alma mater, he believes that he is one step closer to his goal of becoming a professional volleyball player. Although the school only retains a shadow of its former glory, Hinata\'s conviction isn\'t shaken until he learns that Tobio Kageyama—the prodigy who humiliated Hinata\'s middle school volleyball team in a crushing defeat—is now his teammate.\r\n\r\nTo fulfill his desire of leaving a mark on the realm of volleyball—so often regarded as the domain of the tall and the strong—Hinata must smooth out his differences with Kageyama. Only when Hinata learns what it takes to be a part of a team will he be able to join the race to the top in earnest.', 25, 'Finished', 'Spring', '2014', 'Production I.G', 'haikyuu-.jpg'),
(51, 'Haikyuu!! Second Season', 'Following their participation at the Inter-High, the Karasuno High School volleyball team attempts to refocus their efforts, aiming to conquer the Spring tournament instead.\r\n\r\nWhen they receive an invitation from long-standing rival Nekoma High, Karasuno agrees to take part in a large training camp alongside many notable volleyball teams in Tokyo and even some national level players. By playing with some of the toughest teams in Japan, they hope not only to sharpen their skills, but also come up with new attacks that would strengthen them. Moreover, Hinata and Kageyama attempt to devise a more powerful weapon, one that could possibly break the sturdiest of blocks.\r\n\r\nFacing what may be their last chance at victory before the senior players graduate, the members of Karasuno\'s volleyball team must learn to settle their differences and train harder than ever if they hope to overcome formidable opponents old and new—including their archrival Aoba Jousai and its world-class setter Tooru Oikawa.', 25, 'Finished', 'Fall', '2015', 'Production I.G', 'haikyuu-second-season.jpg');
INSERT INTO `anime` (`id`, `name`, `synopsis`, `episodes`, `status`, `season`, `year`, `studio`, `poster`) VALUES
(52, 'Haikyuu!! 3rd Season Karasuno Koukou vs. Shiratorizawa Gakuen Koukou', 'After the victory against Aoba Jousai High, Karasuno High School, once called “a fallen powerhouse, a crow that can’t fly,” has finally reached the climax of the heated Spring tournament. Now, to advance to nationals, the Karasuno team has to defeat the powerhouse Shiratorizawa Academy. Karasuno’s greatest hurdle is their adversary’s ace, Wakatoshi Ushijima, the number one player in the Miyagi Prefecture, and one of the country’s top three aces.\r\n\r\nOnly the strongest team will make it to the national tournament. Since this match is the third-year players’ last chance to qualify for nationals, Karasuno has to use everything they learned during the training camp and prior matches to attain victory. Filled with restlessness and excitement, both teams are determined to come out on top in the third season of Haikyuu!!.\r\n', 10, 'Finished', 'Fall', '2016', 'Production I.G', 'haikyuu-3rd-season-karasuno-koukou-vs-shiratorizawa-gakuen-koukou.jpg'),
(53, 'Haikyuu!! To the Top', 'After their triumphant victory over Shiratorizawa Academy, the Karasuno High School volleyball team has earned their long-awaited ticket to nationals. As preparations begin, genius setter Tobio Kageyama is invited to the All-Japan Youth Training Camp to play alongside fellow nationally recognized players. Meanwhile, Kei Tsukishima is invited to a special rookie training camp for first-years within the Miyagi Prefecture. Not receiving any invitations himself, the enthusiastic Shouyou Hinata feels left behind.\r\n\r\nHowever, Hinata does not back down. Transforming his frustration into self-motivation, he boldly decides to sneak himself into the same rookie training camp as Tsukishima. Even though Hinata only lands himself a job as the ball boy, he comes to see this as a golden opportunity. He begins to not only reflect on his skills as a volleyball player but also analyze the plethora of information available on the court and how he can apply it.\r\n\r\nAs the much-anticipated national tournament approaches, the members of Karasuno\'s volleyball team attempt to overcome their weak points and refine their skills, all while aiming for the top!', 13, 'Finished', 'Winter', '2020', 'Production I.G', 'haikyuu-to-the-top.jpg'),
(54, 'Haikyuu!! To the Top Part 2', 'Once called a fallen powerhouse and known as \"Flightless Crows,\" Karasuno High School has finally taken flight at nationals. With a comprehensive performance against Tsubakihara Academy in their first match, the team is now facing its toughest opponent yet: the runners-up of the last Spring Tournament, Inarizaki High School. Furthermore, dealing with the formidable twin Miya brothers only makes things more difficult for Karasuno.\r\n\r\nAs soon as the match begins, Karasuno is overwhelmed by all the noise and jeers from the supporters of Inarizaki High but rekindles its strength thanks to its own loyal fans. Karasuno also gains some momentum by utilizing an attack centered on Shouyou Hinata, but the eccentric play of Atsumu and Osamu Miya delivers an unexpected blow that leaves their opponent astounded.\r\n\r\nThings are bound to get intense as the match progresses between these two teams. Will Karasuno be able to defeat Inarizaki High and overcome the hurdles that threaten its pursuit to the top?', 12, 'Finished', 'Fall', '2020', 'Production I.G', 'haikyuu-to-the-top-part-2.jpg'),
(55, 'Shin no Nakama ja Nai to Yuusha no Party wo Oidasareta node, Henkyou de Slow Life suru Koto ni Shimashita', 'Far away from the reaches of demons and war, near the borderland of Zoltan, D-Rank adventurer Red lives a normal existence. Through perseverance and hard work, his dream of starting his own apothecary and peaceful life in the countryside finally came true. Abruptly, Red gets a live-in partner and assistant named Rit—the princess of Duchy Loggervia and an adventurer herself—who gives everything up to join him.\r\n\r\nAlthough honest, kind, and loved by all, Red has a secret shared only with Rit: his real name is Gideon, brother of Ruti Ragnason, the \"Hero\" and a former member of her party. Ares Drowa, the \"Sage,\" kicked Red out of their party after their war against the Demon Lord after deciding he was weak and insignificant. Now, even though Red has left the Hero\'s party behind by assuming a new life together with Rit, his past has yet to let go of him.', 13, 'Finished', 'Fall', '2021', 'Studio Flad, Wolfsbane', 'shin-no-nakama-ja-nai-to-yuusha-no-party-wo-oidasareta-node-henkyou-de-slow-life-suru-koto-ni-shimashita.jpg'),
(56, 'Koori Zokusei Danshi to Cool na Douryou Joshi', 'Kind-hearted Himuro-kun is unfortunate: when in deep concentration, stressed, or flustered, he involuntarily creates blizzard conditions for himself and anyone in his vicinity. During one such incident on the first day of his new job, Himuro-kun encounters the beautiful Fuyutsuki-san, who helps him break out of his nerve-induced ice. As it turns out, Fuyutsuki-san is his new coworker.\r\n\r\nAt the office, the cool-headed Fuyutsuki-san offers simple and rational solutions to Himuro-kun\'s icy dilemmas—everything from helping him garden without freezing his plants to ensuring he does not melt during their tropical work retreat. Every time Fuyutsuki-san does something kind for him, the tempest of emotions he experiences inside embarrassingly manifests on the outside.\r\n\r\nAs a result of the frequent snowstorms, Himuro-kun\'s feelings for Fuyutsuki-san are impossible to hide. Even though Fuyutsuki-san is unfamiliar with love, Himuro-kun remains determined to repay her kindness and warm her heart in any way he can.\r\n', 12, 'Finished', 'Winter', '2023', 'Zero-G, Liber', 'koori-zokusei-danshi-to-cool-na-douryou-joshi.jpg'),
(57, 'Seiken Gakuin no Makentsukai', 'Battles for ancient kingdoms are nothing compared to the battles of a classroom!\r\n\r\nAwakening from magical stasis after a thousand years, the Dark Lord Leonis suddenly finds himself in the body of a ten-year-old boy! He quickly meets Riselia, a girl confronting the Voids, creatures that have nearly exterminated humanity. Determined to uncover the mysteries of this strange new era, Leonis enrolls in Excalibur Academy, a school that trains students to fight back against these enigmatic monsters. Could the Voids hold some connection to Leonis\'s past?', 12, 'Airing', 'Fall', '2023', 'Passione', 'seiken-gakuin-no-makentsukai.jpg'),
(58, 'Azumanga Daiou', 'Chiyo Mihama begins her high school career as one of the strangest students in her freshman class—a tiny, 10-year-old academic prodigy with a fondness for plush dolls and homemade cooking. But her homeroom teacher, Yukari Tanizaki, is the kind of person who would hijack a student\'s bike to avoid being late, so \"strange\" is a relative word.\r\n\r\nThere certainly isn\'t a shortage of peculiar girls in Yukari-sensei\'s homeroom class. Accompanying Chiyo are students like Tomo Takino, an energetic tomboy with more enthusiasm than brains; Koyomi Mizuhara, Tomo\'s best friend whose temper has a fuse shorter than Chiyo; and Sakaki, a tall, athletic beauty whose intimidating looks hide a gentle personality and a painful obsession with cats. In addition, transfer student Ayumu Kasuga, a girl with her head stuck in the clouds, fits right in with the rest of the girls—and she has a few interesting theories about Chiyo\'s pigtails!\r\n\r\nTogether, this lovable group of girls experience the ups and downs of school life, their many adventures filled with constant laughter, surreal absurdity, and even touching commentary on the bittersweet, temporal nature of high school.', 26, 'Finished', 'Spring', '2002', 'J.C.Staff', 'azumanga-daiou.png');

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
(29, 1),
(29, 3),
(29, 9),
(29, 20),
(30, 3),
(30, 18),
(30, 13),
(30, 14),
(31, 3),
(31, 18),
(31, 13),
(31, 14),
(32, 1),
(32, 5),
(32, 10),
(32, 21),
(32, 15),
(33, 1),
(33, 5),
(33, 10),
(33, 21),
(33, 15),
(34, 4),
(34, 13),
(34, 20),
(35, 3),
(35, 4),
(35, 20),
(36, 3),
(36, 4),
(36, 13),
(36, 20),
(37, 3),
(37, 4),
(37, 20),
(38, 3),
(38, 4),
(38, 20),
(39, 3),
(39, 4),
(39, 20),
(40, 19),
(41, 19),
(42, 1),
(42, 3),
(42, 14),
(43, 1),
(43, 3),
(43, 14),
(44, 5),
(44, 22),
(44, 14),
(45, 5),
(45, 22),
(45, 14),
(46, 1),
(46, 7),
(46, 9),
(46, 22),
(47, 7),
(47, 8),
(47, 4),
(48, 3),
(48, 14),
(49, 9),
(49, 4),
(49, 14),
(49, 20),
(50, 14),
(50, 16),
(51, 14),
(51, 16),
(52, 14),
(52, 16),
(53, 14),
(53, 16),
(54, 14),
(54, 16),
(55, 2),
(55, 7),
(55, 13),
(56, 3),
(56, 7),
(56, 13),
(57, 1),
(57, 7),
(57, 18),
(57, 14),
(58, 3),
(58, 14);

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
(1, 1, 10, 'ntapz'),
(5, 5, 10, 'Anime of the Season'),
(5, 13, 10, 'Saya suka endingnya'),
(5, 2, 8, 'Saya suka visual novel'),
(5, 30, 8, 'Saya suka kembar 5'),
(5, 31, 8, 'TEAM NINO!!!'),
(5, 32, 8, 'siapa nim nya 86'),
(5, 33, 8, 'Agustina'),
(5, 49, 6, 'banyak orang mati'),
(5, 42, 9, 'anak smp membunuh gurunya, tidak sopan'),
(5, 43, 9, 'giliran dah mati baru nangis, apa coba'),
(5, 58, 1, 'anime kesukaan nizam'),
(7, 40, 10, 'ayo camping, kita sudah menunggu'),
(5, 34, 9, 'Nyanyame nyanyajyuunyanya do no nyarabi de nyaku nyaku inyanyaku nyanyahan nyanyadai nyan nyaku nyarabete nyaganyagame.'),
(7, 41, 10, 'ayo camping lagi, kita sudah menunggu'),
(5, 23, 8, 'orang pintar rambut kubis jadi dokter batu'),
(5, 25, 8, 'wordt dr batu opening'),
(5, 26, 8, 'Best dr batu opening frfr'),
(7, 44, 8, 'sangat mencerminkan gweh'),
(5, 24, 8, 'perang batu coy'),
(7, 1, 9, 'nujabes-arurian dance'),
(5, 19, 7, 'Astolfo exist here.'),
(5, 14, 7, 'only good because Illya didn\'t die in this route'),
(5, 17, 9, 'best Route, Rin best girl'),
(5, 18, 9, 'Brave shine!!!!!!!!!'),
(7, 47, 8, 'its good but there\'s some unnecessary long arc'),
(5, 15, 8, 'overated opening'),
(5, 16, 8, 'the opening is actually better than the first season\r\n'),
(7, 20, 9, 'good storytelling and worldbuilding'),
(5, 3, 5, 'goofy ah fantasy/isekai'),
(5, 50, 7, 'ga suka voli'),
(5, 51, 6, 'tetap ga suka voli'),
(5, 52, 6, 'tetap masih ga suka voli'),
(7, 31, 9, 'ichika best girl'),
(5, 53, 6, 'voli terus, masih tetap ga suka'),
(5, 54, 5, 'nyesal nonton'),
(7, 42, 10, 'mari sekolah'),
(5, 37, 8, 'great story, I just don\'t like Kanbaru'),
(7, 43, 10, 'mari sekolah tapi sambil nangis'),
(5, 21, 7, 'Polygamy NO WAY!!!'),
(5, 22, 7, 'Polygamy again NOWAY!!!!!!!!!!!'),
(5, 56, 7, 'anime kesukaan bang tegar'),
(5, 36, 8, 'Shinobu best girl'),
(5, 4, 6, 'Anime halu, ga tau kenapa dony suka'),
(5, 48, 7, 'Random banget rek'),
(9, 3, 10, 'Mantap sih adventure nya '),
(5, 35, 8, 'Purachina Disco'),
(5, 9, 10, 'Best anime pada season nya'),
(9, 5, 3, 'Anime halu'),
(5, 39, 8, 'gajelas arc nya rek'),
(5, 57, 6, 'revi suka'),
(8, 58, 10, 'Luxu banget rek, saya suka sekali.'),
(9, 13, 9, 'Saya suka Arima Kana'),
(5, 55, 7, 'slow life tapi panjang banget namanya rek'),
(5, 20, 10, 'This and 100Kanojo best anime Fall 2023'),
(8, 5, 1, 'Anime sampah, halu, tak bermutuuu!'),
(5, 10, 10, 'masukkan pisang ke microwave jadi mesin waktu cooy'),
(5, 11, 10, 'Bad ending kah ini?'),
(5, 12, 10, 'time travel, Re:Zero 2.0'),
(7, 58, 5, 'ada penyusup min'),
(5, 46, 2, 'Oshiete, oshiete yo sono shikumi wo'),
(5, 38, 8, 'VA nya the best'),
(5, 47, 8, 'Kuyang rek'),
(5, 1, 9, 'stoic'),
(5, 6, 10, 'Best Anime, Maksud lo apa yang di bawah?, bawahnya bawahku  maksud lo juga apa?'),
(5, 7, 10, 'BEST ANIME'),
(5, 8, 10, 'BEST ANIME !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'),
(5, 44, 8, 'gue banget'),
(5, 45, 8, 'Siapa yang bilang posternya tidak senonoh woi'),
(5, 40, 7, 'ga pernah nonton, tapi cute keliatannya'),
(5, 41, 7, 'yuru kah yuri ini?'),
(5, 29, 7, 'kasiannya rek di tunda 3 bulan'),
(7, 6, 8, 'orang yang diatasku suka totsuka saika'),
(9, 6, 10, 'Atasnya atas ku gay'),
(7, 14, 8, 'people die if they are killed\r\n-shirou emiya'),
(7, 32, 6, 'hai, aku granat86'),
(10, 32, 8, 'inpo min');

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
(4, 'admin', '$2y$10$Py/EWVcW6TKUGoGtZqzE/uHg4098ohjdhoR/7XKYeF0tATp8AYHCG', 'admin'),
(5, 'ikki', '$2y$10$KrhMvF.PLSrKkwgLaYVj2eK1fdrNlPrcM5CIFAVFHUaEbhp0I8b3S', 'user'),
(6, 'halo', '$2y$10$GzIhB6imaRBGuAYmP.jHmOcEerOk2II41cG4zCRwF7Y539Tt9ioVW', 'user'),
(7, 'flure', '$2y$10$uuAcxF7kGH5qTZNfbUrEJuDfkKT9N7htM7/KRa9zpYVj8lKzeLhvy', 'user'),
(8, 'Ujang_Mahendra', '$2y$10$sCGI1w668wMqUQ4InajBQ.73hD/Lce4vTaB3rImeUyLQpq//kWX5y', 'user'),
(9, 'veirt', '$2y$10$XmvtootHrJ8atiF4/JESHe/EIY/PpEoh/KTRC0SaKBPmvX37ggsV.', 'user'),
(10, 'teo', '$2y$10$xsEg8XwRpFXr7xZWu1rQJ.k03nBJXfB9U57PD47LAOzrZSemuTgHi', 'user');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
