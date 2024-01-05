-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 05, 2024 alle 12:39
-- Versione del server: 10.1.38-MariaDB
-- Versione PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giornale`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli`
--

CREATE TABLE `articoli` (
  `id` int(11) NOT NULL,
  `titolo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sottotitolo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autore` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_pubblicazione` datetime NOT NULL,
  `testo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `immagine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_id_categoria` int(11) NOT NULL,
  `fk_id_sottocategoria` int(11) NOT NULL,
  `stato` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `articoli`
--

INSERT INTO `articoli` (`id`, `titolo`, `sottotitolo`, `autore`, `data_pubblicazione`, `testo`, `immagine`, `fk_id_categoria`, `fk_id_sottocategoria`, `stato`) VALUES
(1, 'La furia di Blanco sul palco di Sanremo: distrutti i fiori dell\'Ariston', 'Il cantante ha presentato il suo nuovo singolo \'L\'isola delle rose\', ma a causa di problemi tecnici non è riuscito ad esibirsi e si è sfogato sulle decorazioni. Amadeus: \"Mi ha chiamato per scusarsi\"', 'Carlo Moretti', '2023-02-08 13:38:00', 'SANREMO - Tensione all\'Ariston al termine dell\'esibizione di Blanco, che in precedenza aveva eseguito Brividi con Mahmood. Il cantante ha presentato sul palco il suo nuovo singolo L\'isola delle rose, ma a causa di problemi tecnici non è riuscito a cantare e si è sfogato distruggendo tutti i fiori del palco. Perché? L\'ipotesi che circola con maggior insistenza è quella di una coreografia andata male: nel suo ultimo video il cantante distrugge centinaia di rose. E durante la conferenza stampa di oggi arriva anche il commento a freddo di Amadeus: \"Sa di aver sbagliato, mi ha chiamato per chiedermi scusa. Per lui nessuna punizione\".\r\n\r\nUna furia sul palco\r\nPer sfogare la sua frustrazione ha afferrato delle griglie con dei fiori sul palco, lanciandole in aria e distruggendole. Il pubblico ha cominciato a fischiarlo, e il cantante ha provato a giustificarsi: \"Non sentivo la mia voce in cuffia e allora ho voluto divertirmi comunque\", ha detto Blanco, senza riuscire però a placare gli animi della platea che ha continuato a fischiarlo.\r\n\r\n', 'https://www.repstatic.it/content/nazionale/img/2023/02/08/001507622-bf45cc97-2cda-4100-9a26-1c20a33c04cc.jpg?webp', 3, 11, 'pubblicato'),
(2, 'Finanza, non è un lavoro per donne: solo il 32% dei capi azienda', 'Le quote rosa, in campo finanziario e assicurativo, rappresentano a livello globale solo il 19% dei membri del consiglio di amministrazione delle compagnie assicurative e il 23% dei dirigenti finanziari. In Italia Nel 2022, le donne erano al 32% in posizi', 'Redazione Economia', '2023-05-19 16:26:00', '\r\nLa finanza? Non è un “paese” per donne. Secondo uno studio McKinsey & Company le donne, in campo finanziario e assicurativo, rappresentano a livello globale solo il 19% dei membri del consiglio di amministrazione delle compagnie assicurative e il 23% dei dirigenti finanziari.  La poca presenza di donne nei cda non è una questione che riguarda solo le banche e le assicurazioni ma abbraccia tutte le industrie e le professioni legate a tematiche Stem.', 'occupazione.webp', 2, 7, 'pubblicato'),
(3, 'Eseguito a New York il primo trapianto di un intero occhio', 'Il paziente è un veterano militare dell\'Arkansas Aaron James. Eduardo Rodriguez, il medico alla guida dell\'equipe che ha condotto l\'intervento: \"Enorme passo in avanti\"', NULL, '2023-11-10 09:07:00', 'E\' stato eseguito a New York il primo trapianto di un intero occhio umano. Lo riporta Scientific America. L\'intervento, eseguito sei mesi fa durante un trapianto parziale di faccia, sembra essere andato bene secondo i medici che l\'hanno eseguito. \"Il fatto che abbiamo trapiantato un occhio è un enorme passo in avanti, è qualcosa a cui si pensava da secoli ma che non era mai stato eseguito\", ha detto Eduardo Rodriguez, il dottore alla guida dell\'equipe che ha condotto l\'intervento, durato 21 ore.\r\n \r\n\r\nL\'incidente nel 2021 Il paziente è un veterano militare dell\'Arkansas Aaron James, il cui volto ha toccato un filo in tensione mentre lavorava come manutentore elettrico in Oklahoma nel giugno 2021. L\'incidente lo aveva lasciato con gravi ustioni sul lato sinistro del viso, compreso l\'occhio sinistro, naso e labbra, e danni estesi al braccio sinistro, il suo arto dominante. \"Vorrei ringraziare il donatore e la famiglia del donatore. Senza di loro, nulla di tutto ciò sarebbe stato possibile\", ha detto James.\r\n \r\n\r\nRichiesto l\'aiuto di 140 chirurghi L\'intervento per il parziale trapianto di faccia e dell\'intero occhio ha richiesto l\'aiuto di 140 chirurghi. L\'occhio trapiantato mostra \"notevoli\" segnali di buona salute ma James ancora non può vedere e si augura che con il tempo la vista torni e che l\'innovativo intervento a cui è stato sottoposto possa aiutare la medicina dei trapianti. \"E\' la mia maggiore speranza. Se riuscirò a vedere sarà fantastico. Se l\'intervento farà da apripista a una nuova strada nel campo medico sono completamente a favore\", ha detto James alla Cnn.\".', 'medicina.jpg', 5, 20, 'pubblicato'),
(4, 'Riunione di Emergenza del Consiglio di Sicurezza dell\'ONU: Crisi nel Mediterraneo Orientale', 'Tensioni crescenti tra nazioni costiere mettono alla prova la stabilità geopolitica della regione', 'Alexandra Rossi', '2024-01-05 10:16:00', 'Una riunione straordinaria del Consiglio di Sicurezza delle Nazioni Unite è stata convocata per affrontare la crescente crisi nel Mediterraneo Orientale. Le tensioni tra diverse nazioni costiere hanno raggiunto un punto critico, mettendo a rischio la stabilità e la sicurezza nella regione.\r\n\r\nIl conflitto tra i paesi coinvolti, spesso incentrato su questioni territoriali e marittime, ha causato crescenti preoccupazioni a livello internazionale. La disputa per le risorse naturali e il controllo delle rotte commerciali ha portato a una serie di incidenti e provocazioni, sollevando timori di una possibile escalation delle ostilità.\r\n\r\nIl Segretario Generale dell\'ONU ha espresso profonda preoccupazione per la situazione e ha chiesto un\'immediata azione diplomatica per ridurre le tensioni e promuovere un dialogo costruttivo tra le parti coinvolte. La comunità internazionale è stata chiamata a intervenire per facilitare un processo di negoziazione che porti a una risoluzione pacifica del conflitto.\r\n\r\nLa riunione del Consiglio di Sicurezza, che coinvolge rappresentanti delle principali potenze mondiali, è stata vista come un tentativo urgente di evitare una potenziale crisi geopolitica nel Mediterraneo Orientale. I colloqui mirano a trovare soluzioni diplomatiche e a promuovere una cooperazione regionale per garantire la pace e la stabilità nella zona.\r\n\r\nL\'evento è seguito con grande attenzione dalla comunità internazionale, con la speranza che l\'impegno diplomatico e la cooperazione multilaterale possano contribuire a una risoluzione pacifica di questa crescente crisi nella diplomazia internazionale.', '', 1, 2, 'non pubblicato'),
(5, 'Gran Premio Mondiale di Formula E: Debutto Storico su Piste Sostenibili', 'Il campionato di corse elettriche si prepara per un\'incredibile serie di gare su circuiti innovativi', 'Lucas Ferrari', '2024-01-03 17:36:00', 'Il mondo dell\'automobilismo si prepara per un evento senza precedenti con l\'inaugurazione del Gran Premio Mondiale di Formula E, un campionato di corse automobilistiche completamente elettrico che promette di ridefinire il futuro delle competizioni su piste sostenibili.\r\n\r\nL\'attesa per il debutto di questa serie di gare innovative è alle stelle, con una lista di piloti provenienti da tutto il mondo pronti a sfidarsi su circuiti cittadini e tracciati che rappresentano un connubio perfetto tra tecnologia all\'avanguardia e sostenibilità ambientale.\r\n\r\nIl calendario comprende tappe in città emblematiche come Berlino, Parigi e New York, con circuiti appositamente progettati per esaltare le prestazioni delle monoposto elettriche, evidenziando al contempo l\'impegno nel promuovere tecnologie pulite e ridurre l\'impatto ambientale.\r\n\r\nI team automobilistici hanno investito notevolmente nello sviluppo di nuove tecnologie per le vetture, con un\'enfasi particolare sulle batterie elettriche ad alta efficienza e sulla gestione intelligente dell\'energia, garantendo non solo prestazioni di alto livello, ma anche una guida sostenibile e rispettosa dell\'ambiente.\r\n\r\nIl Gran Premio Mondiale di Formula E è atteso come un catalizzatore per l\'innovazione nel mondo delle corse automobilistiche, dimostrando che la velocità e l\'ecosostenibilità possono andare di pari passo. L\'evento promette spettacolo, emozioni e un\'importante dichiarazione sul futuro della mobilità sostenibile e delle competizioni motoristiche.', '', 4, 16, 'non pubblicato'),
(6, 'Inner Spaces, da Suzanne Ciani a James Holden per le soglie immersive dell\'edizione primaverile', 'All’Auditorium San Fedele di Milano dal 22 gennaio al 6 maggio 2024 la seconda parte della rassegna giunta all\'undicesima edizione', NULL, '2023-12-20 10:21:00', 'Dopo aver schierato da Tim Hecker a Francesco Tristano per l\'edizione autunnale, Inner Spaces torna dal 22 gennaio al 6 maggio 2024 all’Auditorium San Fedele di Milano per la tranche primaverile. La rassegna di musica elettronica e arti audiovisive da oltre dieci anni è un punto di riferimento per la sperimentazione e la ricerca interdisciplinare. Il nuovo programma stagionale è intitolato “Soglie immersive” ed è concepito come un laboratorio in otto puntate per approfondire la tematica del coinvolgimento percettivo.\r\n\r\nInner Spaces, l\'ascolto immersivo  L’auditorium San Fedele, dotato dell’acusmonium Sator, consente un ascolto in uno spazio acustico immersivo. Non una fruizione semplicemente avvolgente, ma coinvolgente interiormente e per di più nella dimensione di un’esperienza comune condivisa con gli altri. Dimensione caratterizzata sia dal linguaggio musicale degli artisti, che dagli strumenti impiegati. In questo senso, i processi di stratificazione sonora, la costituzione di continuità temporali mediante lente trasformazioni, le sequenze sovrapposte del minimalismo iterativo, l’intreccio di brani in successione, la concentrazione timbrica e materica, sono caratteristiche che contribuiscono a configurare una serie di soglie immersive distinte.\r\n \r\n\r\nI nomi in programma  Una delle principali peculiarità è che buona parte degli artisti della rassegna suonerà con sintetizzatori analogici o digitali. Nella programmazione si va dall’attesissima pioniera del Buchla, Suzanne Ciani, che si esibirà in una performance in quadrifonia in coproduzione con Jazz is Dead! festival realizzato da Arci Torino (dove invece sonorizzerà materiale visivo fornito dal Museo Nazionale del Cinema) al dj Anthony Child. Dal compositore elettroacustico Hainbach che, con la tecnica del nastro magnetico, crea avvolgente musica ambient, ai live set con modulari di musicisti tra i più apprezzati in questo momento come James Holden e l’emergente produttrice turco-tedesca JakoJako. \r\n \r\n\r\nNuove soglie immersive verranno aperte all’esplorazione dal collettivo audiovisivo milanese Otolab in un senso sinestetico, dal britannico Richard Skelton, figura maggiore della musica ambient che raramente suona dal vivo, da Konrad Sprenger in un live set esafonico (a sei canali) mediante una chitarra elettrica come generatrice di suoni che vengono rielaborati e spazializzati digitalmente, e dallo scultore del suono Giuseppe Tillieci in arte Neel (già metà dei Voices From The Lake con Donato Dozzy). \r\n\r\n \r\n\r\nInner Spaces, da Suzanne Ciani a James Holden per le soglie immersive dell\'edizione primaverile.\r\n \r\n\r\nAltri musicisti ancora perseguiranno lo stesso obiettivo, però attraverso l’uso di strumenti musicali più tradizionali, come Chiara Trentin (già vista sul palco con Francesco Messina per l’esecuzione di \"Prati Bagnati del Monte Analogo\") al violoncello elettrico a sei corde con live electronic, Francesco Zago con la chitarra elettrica ed effettistica per presentare una rielaborazione dalle ampie sonorità orchestrali della Settima Sinfonia di Bruckner e Zsófia Boros, la poetessa della chitarra acustica dal suono delicato e avvincente, qui grazie al Forum Austriaco di Cultura, che ha registrato tre album per la prestigiosa ECM in un programma di musiche argentine. \r\n\r\nRimane sempre l’attenzione ai fondatori della musica elettronica, in questa edizione con due ritratti. L’ungherese Ákos Rózmann (1939-2005), per molti anni organista della cattedrale cattolica di Stoccolma, autore di alcuni monumentali cicli di composizioni elettroacustiche dalle sonorità massicce e altamente drammatiche, con titoli spesso ispirati dalla liturgia della Messa. La fisarmonicista statunitense Pauline Oliveros (1932-2016), tra le iniziatrici della nuova musica nel continente americano. \r\n\r\n \r\n\r\nEvento speciale  Al cuore della rassegna, lo Speciale Inner Spaces dal titolo Hieremias propheta nella Chiesa di San Fedele, con la partecipazione di Nicolás Jaar, in una sacra rappresentazione del libro del profeta Geremia in cui si alterneranno le leçons de ténèbres di François Couperin (1688-1733), sequenze elettroniche con voce del gruppo Ars Discantica (A. Pileggi e M. Colombo) e due grandi affreschi di live electronic dell’artista cileno.', 'artevisiva.jpg', 3, 9, 'pubblicato'),
(7, 'La Juve piomba su Tiago Djaló per gennaio: Giuntoli prova a bruciare l\'Inter', 'Il difensore in uscita dal Lille: sarà svincolato tra pochi mesi, i piemontesi cercano di anticipare Marotta', NULL, '2024-01-05 00:00:00', 'l derby di mercato tra Inter e Juventus per Tiago Djaló si è ufficialmente infuocato. I nerazzurri, che da tempo lavoravano per bloccare il centrale ex Milan per giugno, devono adesso fare i conti per la Vecchia Signora. Che ha deciso di tornare prepotentemente sul 23enne portoghese per giocare d\'anticipo. L\'obiettivo di Giuntoli è liberarlo immediatamente dal Lille (è in scadenza il prossimo giugno) pagando un piccolo indennizzo: seppur non disponibile da subito causa rottura del legamento crociato (è sulla via del recupero), potrebbe trattarsi di un rinforzo importante per Allegri nei prossimi mesi, ossia nella fase più calda della stagione. Una bella lotta fra le due rivali che ricorda quella che stiamo vedendo, e vedremo ancora, per lo scudetto.\r\n\r\nL\'inserimento della Juventus, in procinto di liberarsi di Dean Huijsen (c\'è stata l\'apertura alla Roma), non ha però cambiato i piani di Marotta: Tiago Dialó resta una pista praticabile in Viale della Liberazione solo per giugno, non prima. I grandi progressi di Bisseck tranquillizzano Inzaghi, deciso ad andare avanti con i volti noti nel reparto difensivo. L\'ad nerazzurro proverà comunque a rovinare le velleità bianconere trovando l\'accordo per l\'estate a parametro zero: molto dipenderà dalla voglia del calciatore, il quale potrebbe decidere di non aspettare sei mesi al Lille senza giocare anche dopo il recupero visto l\'addio praticamente certo.\r\n\r\nDal canto suo Giuntoli, che gradisce e non poco il portoghese passato anche dal Milan, deve trovare i milioni necessari per accordarsi i francesi. Necessario quindi cedere: incassare dalla partenza di qualche giovane promettente è l\'unica via per chiudere l\'affare relativo al 23enne cresciuto nello Sporting Lisbona.', 'calcio.jpg', 4, 13, 'pubblicato'),
(8, 'Basket, Eurolega: Bologna è una meraviglia, battuto anche il Bayern Monaco', 'La Segafredo trionfa in rimonta 85-83 contro i bavaresi e fa tredici su diciotto, solo il Real Madrid è sopra in classifica', NULL, '2024-01-03 00:00:00', 'Nella diciottesima giornata di Eurolega di basket trionfa ancora la Virtus Bologna, che si impone per 85-83 alla Segafredo Arena contro il Bayern Monaco in rimonta. I bavaresi conducono di fatto per tutta la gara, grazie a un incontenibile Edwards e all’eterno Ibaka. Nei minuti finali Hackett e Lundberg trascinano le V-nere al successo. Tredicesima vittoria su diciotto per gli emiliani, secondi soltanto al Real Madrid.\r\n\r\nVIRTUS SEGAFREDO BOLOGNA-BAYERN MONACO 85-83\r\n\r\nTredicesimo successo per Bologna in Eurolega, 85-83 in casa contro il Bayern Monaco. Nel primo periodo si scatena subito Edwards tra le file dei bavaresi, incontenibile per la difesa di casa. Hackett tiene a galla le V-nere, che chiudono i primi dieci minuti sotto di due punti. Nel quarto successivo si iscrive alla partita anche Serge Ibaka, infallibile sia dentro che fuori dall’arco. Pajola e Lundberg segnano punti pesanti per la Segafredo, che alla pausa lunga insegue il Bayern di quattro punti, sul 46-42. Le percentuali dei tedeschi rimangono altissime anche dopo l’intervallo, con Edwards e Francisco che salgono in cattedra in più occasioni. Nonostante l’affanno Bologna rimane aggrappata al match, sempre a quattro lunghezze di distanza (69-65). Nei dieci minuti conclusivi Obst prova a mandare il Bayern in fuga con due triple sontuose, ma i bolognesi rimangono a contatto grazie al super lavoro di Hackett. Belinelli segna tre punti fondamentali per il pareggio, con Cordinier che poi firma il sorpasso in schiacciata con il tap-in. Nei secondi decisivi ci pensa ancora una volta Lundberg, con un tiro in sospensione difficilissimo che non tocca nient’altro che la retina. Vince Bologna 85-83 e consolida il secondo posto in classifica, con sole cinque sconfitte in diciotto appuntamenti.\r\n\r\nTABELLINO\r\n\r\nVirtus Segafredo Bologna-Bayern Monaco 85-83\r\n\r\nParziali: 22-24, 42-46, 65-69.\r\n\r\nVirtus Segafredo Bologna: Belinelli 16 (2/7, 2/8, 6/8 tl), Shengelia 18 (4/7, 2/7, 4/6 tl), Hackett 15 (2/4, 3/5, 2/4 tl), Cordinier 11 (3/10, 1/1, 2/2 tl), Dunston 4 (2/3); Lundberg 9 (3/5, 1/3), Pajola 8 (1/1, 2/2), Polonara 3 (1/1 da 3), Abass (0/1 da 3), Zizic 1 (1/2 tl). N.e.: Lomasz, Mascolo. All.: Banchi.\r\n\r\nBayern Monaco: Edwards 22 (7/8, 2/6, 2/2 tl), Ibaka 15 (3/3, 3/4), Booker 6 (3/5, 0/2), Bonga 5 (1/2, 1/2), Bolmaro 5 (1/2, 1/1, 0/2 tl); Weiler-Babb 4 (0/2, 1/4, 1/2 tl), Francisco 12 (2/5, 1/4, 5/5 tl), Radoncic 2 (2/2 tl), Lucic (0/1, 0/1), Obst 12 (4/8 da 3), Brankovic, Giffey. All.: Laso.', 'basket.jpg', 4, 14, 'pubblicato'),
(9, 'Threads, la nuova app di Meta arriva in Italia il 14 dicembre', 'Nessuna comunicazione ufficiale da parte di Mark Zuckerberg ma alcuni indizi sul sito della piattaforma e su Instagram lo confermano', NULL, '2024-01-11 00:00:00', 'Threads arriverà anche in Italia. Dopo il lancio lo scorso luglio negli Stati Uniti e nel Regno Unito, il nuovo social di Meta sarà disponibile anche nel nostro Paese dal 14 dicembre. Nessuna comunicazione ufficiale da parte di Mark Zuckerberg ma sul sito web della piattaforma raggiungibile dall\'Unione europea è apparso un conto alla rovescia che scade alle ore dodici di giovedì. Su Instagram, app sulla quale il nuovo social si basa per recepire informazioni sul profilo e sugli account da seguire, comincia ad apparire agli iscritti un post che, se cliccato, apre a un biglietto virtuale con scadenza il 14 dicembre.\r\n\r\nGli altri indizi del lancio su Instagram Su Instagram è anche possibile cercare il termine \"biglietto\" all\'interno dell\'app per scoprire l\'invito digitale a Threads, insieme a un codice QR scansionabile e un orario di lancio, che può variare a seconda del Paese di residenza. Qui la dicitura è chiara: \"Lancio di Threads nella Ue\". \r\n \r\n\r\nPerchè nell\'Unione l\'app arriva più tardi? Il ritardo in Italia e nel resto delle nazioni dell\'Unione dell\'implementazione del nuovo social, focalizzato principalmente su post brevi e testuali, è stato causato da ciò che Christine Pai di Meta aveva descritto a suo tempo come \"un\'incertezza normativa\", probabilmente in riferimento alle rigide regole previste dal Digital Markets Act del blocco. Meta, insieme ad altri giganti della tecnologia come Microsoft e Apple, è stata formalmente designata come \"guardiano\" della piattaforma ai sensi della legge a luglio, e obbligata a rispettare nuove norme relative al consenso degli utenti e alla protezione dei dati. \r\n\r\nL\'uso del nuovo social nella Ue Per soddisfare i requisiti richiesti, l\'esperienza di Threads nella Ue sarà essere leggermente diversa da quella in altri mercati. L\'azienda fondata da Mark Zuckerberg consentirà agli utenti europei di usare Threads soltanto per avere accesso ai contenuti senza quindi un profilo che permetta loro di pubblicare post.\r\n \r\n\r\nCome funziona la piattaforma Threads ha alcune somiglianze con X, come la possibilità di seguire altri utenti e di essere seguiti, usare gli hashtag e interagire apertamente con i messaggi altrui.  Tuttavia, il nuovo social di Meta offre anche alcune funzionalità innovative rispetto alla diretta concorrenza della piattaforma di Musk.\r\nAlcuni esempi sono la possibilità di creare gruppi privati, di usare le emoji animate e di accedere ai contenuti esclusivi delle celebrità.', 'threads.jpg', 5, 19, 'pubblicato'),
(10, 'Sudafrica, Oscar Pistorius è stato rilasciato all’alba', 'L’ex campione paralimpico, dopo aver scontato quasi 9 anni di carcere per l\'omicidio della fidanzata Reeva Steenkamp, come già annunciato nei giorni scorsi è stato rilasciato dalla prigione di Atteridgeville. Ora si trova nella villa dello zio Arnold a Wa', 'Getty', '2024-01-05 08:18:00', 'Oscar Pistorius è ufficialmente da oggi in libertà vigilata. In un comunicato rilasciato all’alba dal Ministero della Giustizia del Sudafrica si conferma che l’ex campione paralimpico, come previsto, è stato rilasciato dalla prigione di Atteridgeville, a pochi chilometri dalla capitale Pretoria, dopo aver scontato quasi 9 anni di carcere per l\'omicidio della fidanzata, Reeva Steenkamp. Pistorius si trova già nella lussuosa villa dello zio Arnold Pistorius a Waterkloof, ricco quartiere di Pretoria. La madre di Reeva Steenkamp ha commentato il rilascio, dicendo di star scontando \"l\'ergastolo\" nel suo dolore. Il marito di lei, Barry Steenkamp, è morto lo scorso 14 settembre, \"di dolore\" per la perdita della figlia, secondo quanto dichiarato da June.\r\n\r\nProibiti alcol e interviste coi media durante libertà vigilata\r\nNei giorni scorsi il Dipartimento dei Servizi Carcerari del Sudafrica aveva già confermato il rilancio imminente. Pistorius avrà l\'obbligo di sottostare a tutte le condizioni di libertà vigilata tra cui il divieto di consumare alcolici e di rilasciare interviste ai media. \"Pistorius sarà monitorato fino alla data di scadenza della sua pena, nel 2029”, si legge in un comunicato. “L\'elevato profilo pubblico legato a Pistorius non lo rende diverso dagli altri detenuti né giustifica un trattamento incoerente con la legge. Di conseguenza, i dettagli in termini di piani di trasporto e tempi di rilascio non saranno resi pubblici. La divulgazione di tali dettagli può comportare una minaccia alla sicurezza del detenuto e delle altre parti interessate. Le condizioni generali per la libertà vigilata si applicheranno a Pistorius. Per esempio, dovrà sempre trovarsi a casa in determinate ore del giorno. Non potrà consumare alcol e altre sostanze proibite. Sarà inoltre obbligatoria la partecipazione ad altri programmi di riabilitazione\", si legge nel comunicato. \r\n\r\nIl caso\r\nL’ex atleta paralimpico era stato giudicato colpevole dell\'omicidio della sua fidanzata, Reeva Steenkamp, avvenuto nelle prime ore del giorno di San Valentino del 2013. L\'ex velocista sudafricano aveva sostenuto di averla scambiata per un ladro e aveva sparato più volte attraverso la porta del bagno uccidendola. Nel 2016 la condanna; lo scorso novembre Pistorius aveva ottenuto la condizionale. Ricordato come \'l\'uomo più veloce senza gambe\', il sudafricano è stato l\'unico atleta amputato capace di vincere una medaglia in una competizione mondiale per normodotati (argento con la staffetta 4x400 metri a Taegu 2011).', 'pistorius.jpg', 6, 12, 'pubblicato'),
(11, 'Regina Elisabetta II, i funerali costati 186 milioni di euro', 'Lo ha comunicato il ministero del Tesoro, secondo cui i costi maggiori sono stati coperti dal ministero dell\'Interno britannico', NULL, '2023-05-18 18:17:00', 'I funerali di Stato della regina Elisabetta II, avvenuto il 19 settembre scorso, e gli altri eventi organizzati nei giorni di lutto nazionale per rendere omaggio alla sovrana morta l\'8 settembre nel castello scozzese di Balmoral sono costati ai contribuenti britannici circa 162 milioni di sterline (186 milioni di euro). Lo ha comunicato il ministero del Tesoro britannico, secondo cui i costi maggiori sono stati coperti dal ministero dell\'Interno per 74 milioni di sterline (85 milioni di euro).\r\nL\'Home Office era incaricato del complesso sistema di sicurezza per consentire tra l\'altro a leader internazionali e teste coronate di prendere parte alla cerimonia funebre all\'abbazia di Westminster e a centinaia di migliaia di sudditi di rendere omaggio al feretro della sovrana nelle camere ardenti allestite a Londra alla Westminster Hall e prima nella cattedrale di St. Giles a Edimburgo.\r\n\r\n \r\n\r\nIl Dipartimento della cultura, dei media e dello sport ha contribuito per 57 milioni di sterline (65 milioni di euro). Secondo il viceministro del Tesoro John Glen, \"la priorità del governo era che questi eventi si svolgessero senza problemi\", \"assicurando al tempo stesso la sicurezza del pubblico\".\r\n\r\n \r\n\r\nNon sono ancora stati comunicati dati ufficiali sui costi dell\'incoronazione di re Carlo III svoltasi il 6 maggio, ma secondo il gruppo antimonarchico Republic sarebbero di almeno 100 milioni di sterline (115 milioni di euro).', 'regina.jpg', 1, 4, 'pubblicato'),
(12, 'Il Ritorno dell\'Intrigo: Nuovo Romanzo di Mistero di Amelia Rossi', 'L\'autrice bestseller torna con un\'opera avvincente che cattura l\'essenza del mistero e dell\'inganno', 'Natalia Bianchi', '2023-12-28 00:00:00', 'La notizia della prossima pubblicazione del tanto atteso romanzo \"L\'Enigma di Penrose Manor\" sta già generando entusiasmo tra gli amanti del genere letterario del mistero e del thriller. L\'autrice Amelia Rossi, celebre per i suoi bestseller internazionali, si prepara a svelare una storia avvolta nell\'intrigo, con una trama avvincente e personaggi misteriosi.\r\n\r\nL\'opera, ambientata nell\'affascinante contesto di un\'antica dimora inglese, promette di portare i lettori in un viaggio mozzafiato attraverso segreti sepolti, oscure rivelazioni e colpi di scena inaspettati. Amelia Rossi, con la sua prosa accattivante e l\'abilità nel tessere trame intricate, sembra destinata a regalare ai suoi lettori un\'esperienza di lettura coinvolgente e memorabile.\r\n\r\nIl ritorno dell\'autrice sul palcoscenico letterario è atteso con grande fervore, con i fan che non vedono l\'ora di immergersi nelle pagine del nuovo romanzo, anticipando emozioni forti e colpi di scena che caratterizzano la firma distintiva della scrittrice.\r\n\r\nCon il suo stile avvincente e la capacità di creare un\'atmosfera ricca di suspense, Amelia Rossi si appresta a confermare la sua posizione come una delle voci più acclamate nel mondo della letteratura del mistero, pronta a conquistare nuovi lettori e a deliziare i suoi affezionati fan.', '', 3, 10, 'non pubblicato'),
(13, '\"Il ragazzo e l\'airone\", il 2024 inizia al cinema con il film-testamento di Hayao Miyazaki', 'La nuova opera del maestro dell\'animazione giapponese arriva a dieci anni dal precedente lavoro e dopo che Miyazaki aveva annunciato di volersi ritirare', 'Ufficio Stampa', '2024-01-01 08:22:00', 'Il 2024 cinematografico inizia con un piccolo evento: il 1° gennaio esce nelle sale italiane \"Il ragazzo e l\'airone\", il nuovo film del maestro dell\'animazione Hayao Miyazaki, che arriva a dieci anni dal precedente titolo, \"Si alza il vento\". E\' la storia di un ragazzo, Mahito, che, spinto dal desiderio di rivedere sua madre decide di avventurarsi in un regno abitato da creature incredibili e affascinantii; un luogo dove la morte finisce e la vita sembra trovare un nuovo inizio. Il ragazzo e l\'airone è una storia sul mistero dell\'esistenza e della creazione, un omaggio all\'amicizia partorito dalla mente di uno dei più grandi maestri dell\'animazione mondiale.\r\n\r\nArrivato nelle sale giapponesi il 14 luglio, \"Il ragazzo e l\'airone\" ha conquistato il box office fin dal primo weekend con 11,3 milioni di dollari e battendo i record precedenti dello Studio Ghibli. A poco più di un mese dall’uscita, ha incassato in patria oltre 45 milioni di dollari. Il film è sbarcato a settembre negli Stati Uniti, dove sta facendo il pienone, aprendo il Toronto Film Festival con il titolo internazionale \"The Boy and the Heron\".\r\n\r\n \r\n\r\nA dieci anni dal suo ultimo lungometraggio \"Si alza il vento\" e dopo aver cresciuto generazioni di spettatori con capolavori come \"Nausicaä della Valle del vento\", \"Il mio vicino Totoro\", \"Porco rosso\", \"La città incantata\", \"Ponyo sulla scogliera\" e molti altri, Miyazaki torna con un film che ha già conquistato il cuore del pubblico e della critica che hanno avuto la fortuna di vederlo. \"Il ragazzo e l\'airone\" è un regalo di Hayao Miyazaki per i fan in tutto il mondo, dal momento che il regista de \"La città incantata\" aveva annunciato di volersi ritirare. Un vero e proprio testamento, a meno di altri ripensamenti del premio Oscar 82enne, questa opera applaudita in anteprima ad Alice nella città e alla Festa del Cinema di Roma e al festival di Toronto, candidata ai Golden Globe come Miglior Film d\'Animazione.\r\n\r\n \r\n\r\nC\'è sempre un\'aura di leggenda per i film di Miyazaki e anche quest\'opera non sfugge: sembra che l\'anziano maestro abbia scritto la storia pensando al nipote, a un modo di passare il testimone della vita. \"Il ragazzo e l\'airone\" è in effetti un film testamento: attraverso il viaggio interiore del protagonista che elabora il lutto della perdita della madre superando una serie di prove per diventare maturo. Un coming of age doloroso ma con l\'incomparabile tocco di Miyazaki in cui in una sinfonia di natura, animali, colori, personaggi deliziosi si fa largo la grande umanità da ricercare nel mondo dei vivi e in quello dei morti, in un viaggio fantastico che ci parla del mondo che stiamo distruggendo e ci spinge a un nuovo inizio. ', 'cinema.jpg', 3, 12, 'pubblicato'),
(14, 'Mattarella prepara il suo nono discorso di fine anno: pace giusta e richiamo all\'unità', 'Il Presidente della Repubblica parlerà, come ogni anno da una delle sale del palazzo presidenziale, ripercorrendo i dodici mesi passati', NULL, '2023-12-30 16:18:00', 'Un messaggio rassicurante, per quanto possibile, che non crei ansia inutile nei cittadini ma che allo stesso tempo non trascuri temi cruciali, pur se angosciosi, come le guerre. Sergio Mattarella è alle prese con il discorso di fine anno, il suo nono discorso. Un record che finora aveva toccato solo il presidente emerito Napolitano scomparso pochi mesi fa.\r\nIl riferimento ai conflitti in Europa Dunque le guerre, al plurale, perché al conflitto in Ucraina -a febbraio saranno due anni dall\'invasione russa- quest\'anno si aggiunge quello israeliano-palestinese. Il Capo dello Stato parlerà di entrambi e per entrambi invocherà una pace giusta, come detto più volte negli ultimi mesi. Che si coniughi, cioè, con diritti e sviluppo. Mattarella non mancherà di evidenziare il ruolo che anche l’Italia dovrà svolgere in questo contesto, soprattutto in vista della prossima presidenza del G7.\r\nIl Capo dello Stato che dovrebbe parlare per circa 15 minuti, probabilmente affronterà anche il tema delle scadenze elettorali europee di giugno: \"Un grande esercizio di democrazia\", come ha detto di recente, al quale spera che la nostra politica arrivi \"dimostrando giudizio e lungimiranza\".\r\n\r\nI temi da affrontare Un discorso quello del Presidente della Repubblica che toccherà anche un tema a lui caro come i giovani e che, ovviamente, non entrerà nella polemica politica spicciola. Rivolgendosi al nostro Paese, il Presidente dovrebbe tornare sulla necessità di contrastare nel modo più deciso la violenza alle donne. E con altrettanta urgenza sottolineerà l\'esigenza per donne e giovani di un lavoro dignitoso. Ma come già negli anni passati, anche in quelli più duri per un paese piegato dalla pandemia, Mattarella intende ricordare a tutti che l\'Italia ha le potenzialità per superare ogni difficoltà, quando si mostra unita e quando i suoi cittadini si mostrano solidali come nel recente passato. Un messaggio che sarà anche di fiducia, dunque, rivolto ai milioni di italiani che dopodomani lo seguiranno dalle 20,30 a reti unificate in televisione, ma anche alla radio e, pochi minuti dopo, anche sui social.\r\nAncora una volta il Capo dello Stato non dovrebbe essere seduto alla sua scrivania, ma in piedi con le bandiere di Quirinale, Italia ed Europa alle spalle.', 'mattarella.jpg', 1, 4, 'pubblicato'),
(15, 'La guerra con Hamas sta affondando l\'economia di Israele', 'Palestinesi via, riservisti richiamati, turismo azzerato, la moneta ai minimi storici: l\'assedio di Gaza ha messo in crisi la startup nation', 'Paolo Mosetti', '2023-11-11 14:35:00', 'A un mese dall\'orribile eccidio del 7 ottobre, che ha lasciato 1.400 persone uccise e oltre 200 ostaggi nelle mani di Hamas, Israele sta lottando non solo per eliminare i suoi nemici da Gaza ma anche per non fare andare sottosopra la sua economia.\r\n\r\nAppena un mese fa il primo ministro israeliano Benjamin Netanyahu dipingeva un quadro a dir poco roseo di una nuova era di pace e prosperità, basata sulla sempre crescente accettazione di Israele nella regione. Oltreoceano gli faceva eco l\'influente consigliere per la sicurezza nazionale statunitense Jake Sullivan, secondo il quale il Medio Oriente non era mai stato così tranquillo negli ultimi vent\'anni. La realtà sul terreno odierno, con la guerra tra Israele e Hamas giunta ormai alla quarta settimana, con oltre 9.000 palestinesi uccisi, ci dice che quella narrazione è in frantumi.\r\n\r\nSe gli attacchi aerei israeliani hanno portato alla distruzione di interi quartieri a Gaza e alla catastrofe umanitaria nei Territori occupati, inclusa una West Bank in via di sfollamento a causa delle violenze dei coloni, le conseguenze della guerra rischiano di avere un impatto duraturo anche sul Paese impegnato nella rappresaglia.\r\n\r\nL’economia congelata\r\nLa mobilitazione di un contingente di 360mila riservisti, in età da lavoro, ha causato gravi problemi in vari settori. Secondo quanto riporta Associated Press, i ristoranti e i negozi restano vuoti, le compagnie aeree hanno cancellato la maggior parte dei voli per Israele e i turisti sono in fuga. Una delle conseguenze più evidenti del conflitto è l\'evacuazione di massa di civili dalle comunità lungo il confine di Gaza a sud e dal confine libanese a nord. Oltre 126.000 persone sono state costrette a lasciare le proprie case e vengono ospitate in alberghi, centri comunitari e altre strutture in tutto il Paese.\r\n\r\nA causa della mancanza improvvisa di manodopera nei territori più colpiti da Hamas, e con migliaia di immigrati palestinesi con permesso di lavoro che ora temono per la propria vita, molte aziende agricole sono andate in malora e al momento si contano oltre 60mila lavoratori sono in congedo non retribuito.', 'gaa.jpg', 2, 8, 'pubblicato');

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli_tag`
--

CREATE TABLE `articoli_tag` (
  `id_articolo` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `articoli_tag`
--

INSERT INTO `articoli_tag` (`id_articolo`, `id_tag`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 13),
(5, 14),
(5, 15),
(6, 16),
(6, 17),
(6, 18),
(7, 19),
(7, 20),
(7, 21),
(8, 22),
(8, 23),
(8, 24),
(9, 25),
(9, 26),
(9, 27),
(10, 28),
(10, 29),
(10, 30),
(11, 31),
(11, 32),
(11, 33),
(12, 34),
(12, 35),
(12, 36),
(13, 37),
(13, 38),
(13, 39),
(14, 40),
(14, 41),
(14, 42),
(15, 43),
(15, 44),
(15, 45);

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `codice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `categorie`
--

INSERT INTO `categorie` (`id`, `codice`, `descrizione`) VALUES
(1, 'politica', 'Articoli che riguardano eventi, politiche e discussioni legate al governo, alla politica nazionale e internazionale.'),
(2, 'economia', 'Notizie, analisi e rapporti su questioni economiche, mercati finanziari, imprese e industrie.'),
(3, 'cultura', 'Articoli su arte, letteratura, musica, cinema, teatro, eventi culturali e tendenze.'),
(4, 'sport', 'Notizie, risultati, commenti e approfondimenti su eventi sportivi, squadre, atleti e competizioni.'),
(5, 'scienza e tecnologia', 'Informazioni riguardanti gli ultimi sviluppi scientifici, scoperte, innovazioni tecnologiche, gadget e progressi nel settore della tecnologia.'),
(6, 'cronaca', 'articoli che riportano incidenti, incidenti stradali, catastrofi naturali o eventi simili.');

-- --------------------------------------------------------

--
-- Struttura della tabella `sottocategorie`
--

CREATE TABLE `sottocategorie` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `sottocategorie`
--

INSERT INTO `sottocategorie` (`id`, `nome`) VALUES
(1, 'Elezioni'),
(2, 'Diplomazia internazionale'),
(3, 'Politica nazionale'),
(4, 'Governo locale'),
(5, 'Mercati finanziari'),
(6, 'Imprese e finanza'),
(7, 'Lavoro e occupazione'),
(8, 'Commercio internazionale'),
(9, 'Arte visiva'),
(10, 'Letteratura'),
(11, 'Musica e spettacoli'),
(12, 'Cinema e televisione'),
(13, 'Calcio'),
(14, 'Basket'),
(15, 'Tennis'),
(16, 'Sport motoristici'),
(17, 'Innovazioni tecnologiche'),
(18, 'Scoperte scientifiche'),
(19, 'Informatica e tecnologia digitale'),
(20, 'Salute e medicina');

-- --------------------------------------------------------

--
-- Struttura della tabella `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `parola` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `tag`
--

INSERT INTO `tag` (`id`, `parola`) VALUES
(1, 'sanremo'),
(2, 'musica'),
(3, 'blanco'),
(4, 'finanza'),
(5, 'donne'),
(6, 'lavoro'),
(7, 'medicina'),
(8, 'trapianto'),
(9, 'cuore'),
(10, 'riunione'),
(11, 'emergenza'),
(12, 'onu'),
(13, 'formula'),
(14, 'automobilismo'),
(15, 'gran premio'),
(16, 'milano'),
(17, 'arte'),
(18, 'auditorium'),
(19, 'juve'),
(20, 'calcio'),
(21, 'derby'),
(22, 'basket'),
(23, 'eurolega'),
(24, 'bologna'),
(25, 'threads'),
(26, 'social'),
(27, 'instagram'),
(28, 'pistorius'),
(29, 'omicidio'),
(30, 'femminicidio'),
(31, 'regina'),
(32, 'inghilterra'),
(33, 'funerale'),
(34, 'romanzo'),
(35, 'amelia rossi'),
(36, 'pubblicazione'),
(37, 'hayao miyazaki'),
(38, 'cinema'),
(39, 'studio ghibli'),
(40, 'mattarella'),
(41, 'presidente della repubblica'),
(42, 'discorso di fine anno'),
(43, 'palestina'),
(44, 'guerra'),
(45, 'hamas');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `articoli`
--
ALTER TABLE `articoli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`fk_id_categoria`),
  ADD KEY `sottocategoria` (`fk_id_sottocategoria`);

--
-- Indici per le tabelle `articoli_tag`
--
ALTER TABLE `articoli_tag`
  ADD KEY `articolo` (`id_articolo`),
  ADD KEY `tag` (`id_tag`);

--
-- Indici per le tabelle `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `sottocategorie`
--
ALTER TABLE `sottocategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articoli`
--
ALTER TABLE `articoli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `sottocategorie`
--
ALTER TABLE `sottocategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `articoli`
--
ALTER TABLE `articoli`
  ADD CONSTRAINT `categoria` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categorie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sottocategoria` FOREIGN KEY (`fk_id_sottocategoria`) REFERENCES `sottocategorie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `articoli_tag`
--
ALTER TABLE `articoli_tag`
  ADD CONSTRAINT `articolo` FOREIGN KEY (`id_articolo`) REFERENCES `articoli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tag` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
