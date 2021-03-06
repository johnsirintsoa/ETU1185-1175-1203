CREATE DATABASE DATA;
USE DATA;
CREATE TABLE PRODUITS(
	idProduit INT NOT NULL AUTO_INCREMENT,
	nom VARCHAR(30) NOT NULL,
	image VARCHAR(50) NOT NULL,
	description VARCHAR(255) NOT NULL,
	prix decimal(10.2) NOT NULL,
	idSous_Categorie INT NOT NULL,
	idCategorie  INT NOT NULL,
	PRIMARY KEY(idProduit),
	FOREIGN KEY (idSous_Categorie) REFERENCES SOUS_CATEGORIRE(idSous_Categorie),
	FOREIGN KEY (idCategorie) REFERENCES CATEGORIRE(idCategorie)
);
CREATE TABLE SOUS_CATEGORIE(
	idSous_Categorie INT NOT NULL AUTO_INCREMENT,
	nom VARCHAR(30) NOT NULL,
	PRIMARY KEY(idSous_Categorie)
);
CREATE TABLE CATEGORIE(
	idCategorie  INT NOT NULL AUTO_INCREMENT,
	nom VARCHAR(30) NOT NULL,
	PRIMARY KEY(idCategorie)
);
CREATE TABLE CLIENT(
	idClient INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	email VARCHAR(30) NOT NULL,
	mdp VARCHAR(100) NOT NULL,
	argent INT NOT NULL,
	PRIMARY KEY(idClient)
);
CREATE TABLE PANIER(
	idPanier INT NOT NULL AUTO_INCREMENT,
	idProduit INT,
	idWish INT,
	quantite INT,
	PRIMARY KEY (idPanier),
	FOREIGN KEY (idProduit) REFERENCES PRODUITS(idProduit),
	FOREIGN KEY (idWish) REFERENCES WISH(idWish)
);

CREATE TABLE SOUHAIT(
	idSouhait INT NOT NULL AUTO_INCREMENT,
	idClient INT,
	idP INT,
	valide INT,
	PRIMARY KEY (idSouhait),
	FOREIGN KEY (idClient) REFERENCES CLIENT(idClient),
	FOREIGN KEY (idP) REFERENCES PRODUITS(idProduit)
);
CREATE TABLE ACHAT(
	idAchat INT NOT NULL AUTO_INCREMENT,
	idSouhait INT,
	moment DATE,
	PRIMARY KEY (idAchat),
	FOREIGN KEY (idSouhait) REFERENCES SOUHAIT(idSouhait)
);
CREATE TABLE ADMIN(
	idAdmin INT NOT NULL,
	name VARCHAR(30) NOT NULL,
	email VARCHAR(30) NOT NULL,
	mdp VARCHAR(100) NOT NULL,
	PRIMARY KEY (idAdmin)
);

INSERT INTO CLIENT VALUES('','JHON','jhon@gmail.com',sha1('jhon'),1000000);
INSERT INTO CLIENT VALUES('','Kate','kate@gmail.com',sha1('kate'),8000);
INSERT INTO CLIENT VALUES('','Asus','asus@gmail.com',sha1('asus'),12000);
INSERT INTO CLIENT VALUES('','Bicth','bicth@gmail.com',sha1('bicth'),90000);
INSERT INTO CLIENT VALUES('','Natt','nate@gmail.com',sha1('nate'),70000);


INSERT INTO ADMIN VALUES(idAdmin,'Administrateur1','admin1@gmail.com',sha1('admin1'));

INSERT INTO SOUS_CATEGORIE(idSous_Categorie,nom) VALUES('','Homme'),
('','Femme'),
('','Garcon'),
('','Fille');


INSERT INTO CATEGORIE(idCategorie,nom) VALUES ('','Tee-shirt'),
('','Pantalon'),
('','Chemise'),
('','Short'),
('','Sous-vetements'),
('','Chaussures');

INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES('','Tee-shirt Homme','images-Akanjo/Tee-shirt/1.jpg','Tee shirt homme, coton, coupe slim, coupe d??contract??e, manches courtes',10000,1,1),
('','Tee-shirt Homme','images-Akanjo/Tee-shirt/2.jpg','Tee shirt homme coupe classique col tailleur manches courtes haut athl??tique & Mode Homme',15000,1,1),
('','Tee-shirt Homme','images-Akanjo/Tee-shirt/3.jpg','T-shirt pour homme grenat passepoil en coton ?? col V et manches courtes & Mode Homme > T-shirts Homme > T-shirts',16000,1,1),
('','Tee-shirt Homme','images-Akanjo/Tee-shirt/4.jpg','T-Shirt Puma Homme Noir La pratique du Fitness Gym douce Vous ??tes ?? la recherche d''un tee-shirt confortable et respirant. Le tee-shirt PUMA active est id??al',15000,1,1),
('','Tee-shirt Homme','images-Akanjo/Tee-shirt/5.jpg','T-shirt pour homme bleu marine avec capuchon,100% coton et manches courtes & Mode Homme > T-shirts Homme > T-shirts',16000,1,1);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Tee-shirt Femme','images-Akanjo/Tee-shirt/6.jpg','Tee shirt femme PUMA T-Shirt Sweat Modern Sports court pour Femme, Rose, Taille L, V??tements',15000,2,1),
('','Tee-shirt Femme','images-Akanjo/Tee-shirt/7.jpg','Tee-Shirt Femme Bleu claire - BC BC02T: Composition: 100% coton Le coloris ash est 99% coton et 1% viscose et le coloris sport grey est 85% coton et 15% viscose.',16000,2,1),
('','Tee-shirt Femme','images-Akanjo/Tee-shirt/8.jpg','Violet femme Tee-shirt pour Femmes Col Rond - Stedman STE9700: Composition: 95% coton peigne ring-spun et 5% elasthanne. Grammage: 170 g/m. Coupe body ',15000,2,1),
('','Tee-shirt Femme','images-Akanjo/Tee-shirt/9.jpg','Tee-shirt styl??, crop-top tr??s tendance, l??ger, en coton disponible en plusieurs taille XS,S,L,M ',16000,2,1),
('','Tee-shirt Femme','images-Akanjo/Tee-shirt/10.jpg','Tee-shirt ??t?? imprim??,l??ger en coton disponible en plusieurs taille, stock tr??s limit?? ',16000,2,1);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Tee-shirt Gar??on','images-Akanjo/Tee-shirt/11.jpg',' Gar??on T-shirt en coton bleu, manches courtes et col rond. Messages contrast??s imprim??s sur avant.',5000,3,1),
('','Tee-shirt Gar??on','images-Akanjo/Tee-shirt/12.jpg','Gar??on Confectionn?? en c??te 1x1, ce tee-shirt b??b?? gar??on, ?? manches courtes, affiche une charmante s??rigraphie sur le devant, diff??rente selon le coloris choisi.',6000,3,1),
('','Tee-shirt Gar??on','images-Akanjo/Tee-shirt/13.jpg','Gar??on Tee shirt enfant humour pour gar??on, manches courtes ou longues, plusieurs couleurs au choix Grand motif imprim?? sur le devant',7000,3,1),
('','Tee-shirt Gar??on','images-Akanjo/Tee-shirt/14.jpg','Gar??on T-shirt chin?? en coton biologique. Col rond et manches courtes raglans. Animation imprim??e et brod??e.',5000,3,1),
('','Tee-shirt Gar??on','images-Akanjo/Tee-shirt/15.jpg','Gar??on Tee shirt enfant aloha bleu en coton disponible ?? partir de 5 ans ?? 11 ans',8000,3,1);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Tee-shirt Fille','images-Akanjo/Tee-shirt/16.jpg','Fille ref: LAJOTI1 / 21S90133D31F507 Tee Shirt Manches Courtes Rose T-shirt rose ?? motif chat. - Manches courtes pliss??es - Chat fleuri ?? paillettes sur le devant',4000,4,1),
('','Tee-shirt Fille','images-Akanjo/Tee-shirt/17.jpg','Fille ref: FIJOTI9 / 19SG09G4TMC301 Tee-shirt fantaisie b??b?? fille Avec sa d??licate couleur rose pastel et sa s??rigraphie fraise paillet??e en avant,',6000,4,1),
('','Tee-shirt Fille','images-Akanjo/Tee-shirt/18.jpg','Fille Tee-shirt jaune Hello Kitty 100% coton disponible de 5 ?? 10ans',6000,4,1),
('','Tee-shirt Fille','images-Akanjo/Tee-shirt/19.jpg','Fille Tee-shirt ??t?? coton,souple,coupe classique color bleu mais aussi disponible en rouge,jaune',7000,4,1),
('','Tee-shirt Fille','images-Akanjo/Tee-shirt/20.jpg','Fille Make think disponible de 8 ?? 12 ans en coton , l??ger ',5000,4,1);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Pantalon Hommme','images-Akanjo/Pantalon/21.jpg',' Pantalon tendance ?? carreaux Cordon de serrage au niveau de la taille Mod??le de coupe slim Composition: 64% viskose 34% polyesther 2% ??lasthane',10000,1,2),
('','Pantalon Hommme','images-Akanjo/Pantalon/22.jpg','Pantalon Cargot Vert arm?? disponible en plusieurs taille',12000,1,2),
('','Pantalon Hommme','images-Akanjo/Pantalon/23.jpg','Pantalon homme ??l??gant pour y aller travailler ou y aller ?? des ??v??nements',13000,1,2),
('','Pantalon Hommme','images-Akanjo/Pantalon/24.jpg','Calvin Klein Slim-Fit Stretch Blue Neat Suit Pants - Blue 38x30',15000,1,2),
('','Pantalon Hommme','images-Akanjo/Pantalon/25.jpg','Pantalon grenat slim tr??s ??l??gant',13000,1,2);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie)  VALUES
('','Pantalon Femme','images-Akanjo/Pantalon/26.jpg','comporte : 2 plis au niveau du devant, un dos ??lastiqu??, des poches italiennes, une ceinture nou??e, un faux ourlet retrouss?? et une fausse braguette.',15000,2,2),
('','Pantalon Femme','images-Akanjo/Pantalon/27.jpg','Pantalon Palace: la meilleure option pour ??tre ??l??gant en ??t?? sans avoir ?? faire beaucoup de choses.',14000,2,2),
('','Pantalon Femme','images-Akanjo/Pantalon/28.jpg','Tissu: Costume en laine stretch Coupe slim Patte allong??e, fermetures ?? agrafes et braguette zipp??e Poches avant obliques et poches arri??re passepoil??es',13000,2,2),
('','Pantalon Femme','images-Akanjo/Pantalon/29.jpg','Pantalon Fleuri ',13000,2,2),
('','Pantalon Femme','images-Akanjo/Pantalon/30.jpg','Pantalon en linge Palazzo, pantalon taille haute, pantalon large pour jambes, pantalon en linge Pantalon Palazzo fait de LINGE 100% LAV??.',12000,2,2);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie)  VALUES
('','Pantalon Gar??on','images-Akanjo/Pantalon/31.jpg','Pantalon bleu vert pour un gar??on ag?? de 9 ans',11000,3,2),
('','Pantalon Gar??on','images-Akanjo/Pantalon/32.jpg','Jogging disponible en plusieurs couleur',12000,3,2),
('','Pantalon Gar??on','images-Akanjo/Pantalon/33.jpg','Pantalon cargot vert tr??s tendance',11000,3,2),
('','Pantalon Gar??on','images-Akanjo/Pantalon/34.jpg','Pantalon Indigo Jean Bourget',10000,3,2),
('','Pantalon Gar??on','images-Akanjo/Pantalon/35.jpg','Pantalon de sport gar??on en molleton gris chin?? - Le champion du confort, id??al pour le sport,',10000,3,2);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Pantalon Fille','images-Akanjo/Pantalon/36.jpg','Pantalon rose pour fille de 12 ans avec  noeud',15000,4,2),
('','Pantalon Fille','images-Akanjo/Pantalon/37.jpg','Pantalon fleuri blanc en jean',12000,4,2),
('','Pantalon Fille','images-Akanjo/Pantalon/38.jpg','Pantalon bleu en velours avec noeud',11000,4,2),
('','Pantalon Fille','images-Akanjo/Pantalon/39.jpg','Pantalon jean pour fille de 10 ans ',16000,4,2),
('','Pantalon Fille','images-Akanjo/Pantalon/40.jpg','Pantalon vert arm?? tr??s tendance',13000,4,2);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chemise Homme','images-Akanjo/Chemise/41.jpg','La chemise d??contract??e pour les hommes raye la chemise ?? manches longues de col rabattu pour le travail & Mode Homme >',13000,1,3),
('','Chemise Homme','images-Akanjo/Chemise/42.jpg','Chemise pour homme ?? revers avec blocs de couleurs et patchwork',12000,1,3),
('','Chemise Homme','images-Akanjo/Chemise/43.jpg','Hommes Chemise Homme Casual camisa masculina Imprim?? Plage Chemises ?? Manches Longues Marque V??tements Casusl Chemise Asiatique Taille 3XL #Affiliate',12000,1,3),
('','Chemise Homme','images-Akanjo/Chemise/44.jpg','Chemise classique de couleur blanc, slim',13000,1,3),
('','Chemise Homme','images-Akanjo/Chemise/45.jpg','Revers Splash - Chemise slim ?? manches longues pour homme imprim??e',12000,1,3);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chemise Femme','images-Akanjo/Chemise/46.jpg','Chemisier ?? manches longues - Bordeaux - Femme |',20000,2,3),
('','Chemise Femme','images-Akanjo/Chemise/47.jpg','Chemise blanche ?? ??paules tombantes High Low',21000,2,3),
('','Chemise Femme','images-Akanjo/Chemise/48.jpg','Chemise bleu marine Chemisier avec poches -marine',19000,2,3),
('','Chemise Femme','images-Akanjo/Chemise/49.jpg','Chemise blanc cass?? d??contract?? ',15000,2,3),
('','Chemise Femme','images-Akanjo/Chemise/50.jpg',' Chemisier en mousseline de soie ?? revers creux et perles contrastantes rose -SheIn',20000,2,3);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chemise Gar??on','images-Akanjo/Chemise/51.jpg','Chemise blanc imprim?? 2 ans ',14000,3,3),
('','Chemise Gar??on','images-Akanjo/Chemise/52.jpg','Chemise blanc imprim?? 8 ans',13000,3,3),
('','Chemise Gar??on','images-Akanjo/Chemise/53.jpg','Tissu en coton Estamp?? en quadrados Sac application sur la peau bleu carreaux ',14000,3,3),
('','Chemise Gar??on','images-Akanjo/Chemise/54.jpg',' Club - Chemise en serg?? de coton ?? col chemise bleu claire',13000,3,3),
('','Chemise Gar??on','images-Akanjo/Chemise/55.jpg','Chemisze ?? rayure bleu,orange,noire',20000,3,3);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chemise Fille','images-Akanjo/Chemise/56.jpg','Chemises et blouses fille | jaune',13000,4,3),
('','Chemise Fille','images-Akanjo/Chemise/57.jpg','Chemise beige manche courte ',14000,4,3),
('','Chemise Fille','images-Akanjo/Chemise/58.jpg','Chemise ?? carreaux',15000,4,3),
('','Chemise Fille','images-Akanjo/Chemise/59.jpg',' Chemise fille denim manches longues bleu marine',16000,4,3),
('','Chemise Fille','images-Akanjo/Chemise/60.jpg','Top dos nu d??coup?? ?? rayures avec des plis et n??ud papillon -French SheIn(Sheinside)',17000,4,3);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Short Homme','images-Akanjo/Short/61.jpg','Ce magnifique short classique vous fera profiter pleinement de vos belles journ??es ensoleill??es ! Composition : Coton, polyester ',18000,1,4),
('','Short Homme','images-Akanjo/Short/62.jpg','Shorts de course occasionnels de couleur unie ??t?? pour hommes Shorts de gymnastique de remise en forme',19000,1,4),
('','Short Homme','images-Akanjo/Short/63.jpg','v??tements de sport, des shorts de sport, des v??tements de sport adidas,',20000,1,4),
('','Short Homme','images-Akanjo/Short/64.jpg','Nom de marque: SULEEStyle: CasualItem Type: ShortsNum??ro de mod??le: k9999Mat??riel: COTONLongueur: Longueur du genou',13000,1,4),
('','Short Homme','images-Akanjo/Short/65.jpg','Hommes camouflage taille ??lastique longueur au genou course ?? pied sport shorts ??t?? d??contract?? conseil shorts',13000,1,4);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Short Femme','images-Akanjo/Short/66.jpg','des shorts taille haute, short slim',11000,2,4),
('','Short Femme','images-Akanjo/Short/67.jpg','shorts d??contract??s,des shorts r??versibles short de sport couleur rose',12000,2,4),
('','Short Femme','images-Akanjo/Short/68.jpg','Short de running Nike Dry Reflective pour Femme, Taille: Large noire et rose',130000,2,4),
('','Short Femme','images-Akanjo/Short/69.jpg','Short taille haute, motif pied-de-poule carreaux pied de poule La Redoute Collections | ',140000,2,4),
('','Short Femme','images-Akanjo/Short/70.jpg',' Mat??riel: Polyester Genre: FEMME Style: D??contract?? Type article: Short D??coration: Paillet?? Type de fermeture: Taille ??lastique Type de taille: Haute Pantalon en mousseline Style: R??GULIER',13000,2,4);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Short Gar??on','images-Akanjo/Short/71.jpg','Collection "C??r??monie"100% coton,Taille ajustable par ??lastique,Fermeture par zip et pressions',12000,3,4),
('','Short Gar??on','images-Akanjo/Short/72.jpg',' Collection "Essentiels",100% coton organique,Taille ajustable de int??rieur,Fermeture par zip et bouton couleur bleu ciel Bermuda coupe slack enfant gar??on',13000,3,4),
('','Short Gar??on','images-Akanjo/Short/73.jpg','Short en molleton enfant gar??on Collection "Paris country club",100% coton,Taille ??lastiqu??e ajustable de int??rieur,Poches droites couleur blanc',12000,3,4),
('','Short Gar??on','images-Akanjo/Short/74.jpg','Bermuda enfant gar??on coupe worker  Collection "Essentiels",100% coton organique,Poches worker,Taille ajustable de int??rieur,Ouverture zipp??e et boutonn??e couleur bleu blanc trait vertical ',11000,3,4),
('','Short Gar??on','images-Akanjo/Short/75.jpg',' Bermuda coupe slack enfant gar??on couleur blanc - Collection "Essentiels",98% coton, 2% ??lasthanne,Taille ajustable de int??rieur,Ouverture zipp??e et boutonn??e,Poches italiennes',16000,3,4);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Short Fille','images-Akanjo/Short/76.jpg','Short enfant fille en Liberty Couleur : ROSE/MULTICO  100% coton,Fronces ?? la taille,Taille ??lastiqu??e,Liberty Maynard garden ou Betsy coloris exclusif Jacadi',12000,4,4),
('','Short Fille','images-Akanjo/Short/77.jpg','Short enfant fille ?? festons couleur Rouge laque 98% coton, 2% elasthane, Piqu?? de coton et doublure en popeline, bouton pressions fa??on pont, taille ajustable par ??lastique',15000,4,4),
('','Short Fille','images-Akanjo/Short/78.jpg','Short enfant fille en popeline couleur Blanc/bleu ',13000,4,4),
('','Short Fille','images-Akanjo/Short/79.jpg','Short enfant fille en satin couleur vert pale  Collection "Balade ?? Honfleur",Doublure en popeline,Bas de jambe festonn??,Taille enti??rement ??lastiqu??e',17000,4,4),
('','Short Fille','images-Akanjo/Short/80.jpg','Short enfant fille motif ??toil?? couleur bleu/multico d??voile un imprim?? ??toil?? chic et graphique. Doubl?? en popeline de coton et ouvrant sur les c??t??s par pressions',18000,4,4);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Sous-vetements Homme','images-Akanjo/Sous-vetements/81.jpg','Calvin Klein,Cotton Stretch | Lot de 3 boxers tailles hautes bleus, oranges et noirs en coton stretch',12000,1,5),
('','Sous-vetements Homme','images-Akanjo/Sous-vetements/82.jpg','Quarter Plain | Lot de 3 paires de chaussettes courtes grises et bleues en coton stretch, polyester et polyamide Puma',13000,1,5),
('','Sous-vetements Homme','images-Akanjo/Sous-vetements/83.jpg','Calvin Klein,Slim Fit Woven | Lot de 3 cale??ons noir et gris 100% coton',14000,1,5),
('','Sous-vetements Homme','images-Akanjo/Sous-vetements/84.jpg','Levi,Solid Basic | Lot de 2 slips bleus en coton stretch',17000,1,5),
('','Sous-vetements Homme','images-Akanjo/Sous-vetements/85.jpg','Misez sur la qualit?? et le confort avec le pack de 3 d??bardeurs, Mati??res : 95%COTON + 5% ELASTHANNE',18000,1,5);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Sous-vetements Femme','images-Akanjo/Sous-vetements/86.jpg','Mat??riel : dentelle/ microfibre ,Autre caract??ristique : push up,Fermeture : agrafage,Microfibre douce et confortable couleur noire ',15000,2,5),
('','Sous-vetements Femme','images-Akanjo/Sous-vetements/87.jpg',' Nuisette Short Femme Satin Dentelle Vetement Ensemble de Lingerie, Mat??riau: Polyester + Dentelle',13000,2,5),
('','Sous-vetements Femme','images-Akanjo/Sous-vetements/88.jpg','Coupe : Coupe classique,Composition : 95% Coton peign?? / 5% Elasthanne,D??bardeur femme fines bretelles,Fines bretelles stretch,Coup?? cousu couleur orange ',12000,2,5),
('','Sous-vetements Femme','images-Akanjo/Sous-vetements/89.jpg','Sous-v??tement | Sous-v??tement femme Columbine sport ',11000,2,5),
('','Sous-vetements Femme','images-Akanjo/Sous-vetements/90.jpg','Ensemble florale 2 pieces,Noir, Ensemble 2 pi??ces de la marque sexy Leg Avenue,95% polyester, 5% spandex',13000,2,5);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Sous-vetements Gar??on','images-Akanjo/Sous-vetements/91.jpg','Lot compos?? de 3 boxers assortis,Large ??lastique ?? la taille,Devant doubl??,Finition double piq??re,Lot de 3 boxers 95% coton, 5 % ??lasthanne.',14000,3,5),
('','Sous-vetements Gar??on','images-Akanjo/Sous-vetements/92.jpg','Le lot de 3 slips gar??on 100% Coton. Sp??cialement cr???? pour les fans de Moi Moche et M??chant.',13000,3,5),
('','Sous-vetements Gar??on','images-Akanjo/Sous-vetements/93.jpg','Sous-vetements gar??on s isol?? sur fond blanc couleur bleu ',15000,3,5),
('','Sous-vetements Gar??on','images-Akanjo/Sous-vetements/94.jpg','Lot de 2 paires de chaussettes Marvel Batman??,1 paire avec rayures, motif plac?? et ??cusson Batman??,1 paire ray??e avec Motif et inscription Batman??',16000,3,5),
('','Sous-vetements Gar??on','images-Akanjo/Sous-vetements/95.jpg','Ensemble enfant en coton d??bardeur et slip Peppa Pig - version sport rouge',18000,3,5);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Sous-vetements Fille','images-Akanjo/Sous-vetements/96.jpg','Tobani 2 ??? sous-v??tement en coton pour fille, culotte pour coll??gienne, dessin anim?? pour enfants, pi??ces/lot',11000,4,5),
('','Sous-vetements Fille','images-Akanjo/Sous-vetements/97.jpg','Sous-vetements fille Cygnes - Rose poudr??',12000,4,5),
('','Sous-vetements Fille','images-Akanjo/Sous-vetements/98.jpg','Ensemble compos?? un top et de culottes roses sans coutures.',13000,4,5),
('','Sous-vetements Fille','images-Akanjo/Sous-vetements/99.jpg','Lot de 7 paires de chaussettes avec des dessins ',16000,4,5),
('','Sous-vetements Fille','images-Akanjo/Sous-vetements/100.jpg','MiSense 5 Paquet Sous-vetements Filles Culotte Enfants Boxer Slip Fille Coton',13000,4,5);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chaussures Homme','images-Akanjo/Chaussures/101.jpg','Baskets Blanches Pour Homme',15000,1,6),
('','Chaussures Homme','images-Akanjo/Chaussures/102.jpg','La classe ?? italienne comme on aime ! Ces mocassins inspir??s du style italien ',18000,1,6),
('','Chaussures Homme','images-Akanjo/Chaussures/103.jpg','Chaussures habill??es formelles en cuir microfibre pour hommes',19000,1,6),
('','Chaussures Homme','images-Akanjo/Chaussures/104.jpg','Hommes Boucle En M??tal ??l??gant Slip On Business Chaussures Habill??es Formelles',15000,1,6),
('','Chaussures Homme','images-Akanjo/Chaussures/105.jpg','Oxford ??? chaussures en cuir su??d?? pour homme, style d??contract??, grande taille 38-48, printemps-automne',16000,1,6);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chaussures Femme','images-Akanjo/Chaussures/106.jpg','??t?? marque sandales femmes boucle sangle talons hauts chaussures talon carr??',16000,2,6),
('','Chaussures Femme','images-Akanjo/Chaussures/107.jpg','derbie femme chaussure de couleur noir et pantalon mi court noir',18000,2,6),
('','Chaussures Femme','images-Akanjo/Chaussures/108.jpg','Sandales ?? talons aiguilles pour femmes avec bride ?? la cheville et bouts ouverts ?? la taille motif crocodile',19000,2,6),
('','Chaussures Femme','images-Akanjo/Chaussures/109.jpg','Baskets Femme nike | D??couvrir et shopper le meilleur de la sneaker femme ',17000,2,6),
('','Chaussures Femme','images-Akanjo/Chaussures/110.jpg','Sandale ??t?? tr??s confortable et l??ger',15000,2,6);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chaussures Gar??on','images-Akanjo/Chaussures/111.jpg','Nike Toddler Tanjun Shoes | Basketball couleur noir',10000,3,6),
('','Chaussures Gar??on','images-Akanjo/Chaussures/112.jpg',' Kids LED Glowing Blue Shoes - 161-Black color?? bleu lumineux',11000,3,6),
('','Chaussures Gar??on','images-Akanjo/Chaussures/113.jpg','Tout nouveau Jordan 1 peint ?? la main. La taille 10,5 est ??galement livr??e avec des lacets noirs et une bo??te. couleur blanc ',12000,3,6),
('','Chaussures Gar??on','images-Akanjo/Chaussures/114.jpg','Nike avec motif le Roi lion',14000,3,6),
('','Chaussures Gar??on','images-Akanjo/Chaussures/115.jpg','Lacoste - CARNABY EVO BL 1',13000,3,6);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chaussures Fille','images-Akanjo/Chaussures/116.jpg',' filles sandales mode ??t?? chaussures pour enfants de haute qualit??',12000,4,6),
('','Chaussures Fille','images-Akanjo/Chaussures/117.jpg','Dessus : cro??te de cuir,Doublure : textile,Semelle int??rieure : cuir,Semelle ext??rieure antid??rapante en ??lastom??re, r??sistante et souple boots roses',13000,4,6),
('','Chaussures Fille','images-Akanjo/Chaussures/118.jpg','Baskets slip-on imprim??es Dessus : toile coton imprim??e, finition biais uni,Doublure : textile',15000,4,6),
('','Chaussures Fille','images-Akanjo/Chaussures/119.jpg','mode chez Reebok Classic avec cette basket basse. A la fois confortable et tendance, elle associe tige en synth??tique et coloris blanc. ',16000,4,6),
('','Chaussures Fille','images-Akanjo/Chaussures/120.jpg','PUMA Chaussure Basket Cali Jungle Kids pour fille, Blanc, Taille 35',12000,4,6);



create view boom as SELECT * from SOUHAIT inner join PRODUITS on souhait.idP = produits.idProduit where valide=1;