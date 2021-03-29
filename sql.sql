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

INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES('','Tee-shirt Homme','images-Akanjo/Tee-shirt/1.jpg','Tee shirt homme, coton, coupe slim, coupe décontractée, manches courtes',10000,1,1),
('','Tee-shirt Homme','images-Akanjo/Tee-shirt/2.jpg','Tee shirt homme coupe classique col tailleur manches courtes haut athlétique & Mode Homme',15000,1,1),
('','Tee-shirt Homme','images-Akanjo/Tee-shirt/3.jpg','T-shirt pour homme grenat passepoil en coton à col V et manches courtes & Mode Homme > T-shirts Homme > T-shirts',16000,1,1),
('','Tee-shirt Homme','images-Akanjo/Tee-shirt/4.jpg','T-Shirt Puma Homme Noir La pratique du Fitness Gym douce Vous êtes à la recherche d''un tee-shirt confortable et respirant. Le tee-shirt PUMA active est idéal',15000,1,1),
('','Tee-shirt Homme','images-Akanjo/Tee-shirt/5.jpg','T-shirt pour homme bleu marine avec capuchon,100% coton et manches courtes & Mode Homme > T-shirts Homme > T-shirts',16000,1,1);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Tee-shirt Femme','images-Akanjo/Tee-shirt/6.jpg','Tee shirt femme PUMA T-Shirt Sweat Modern Sports court pour Femme, Rose, Taille L, Vêtements',15000,2,1),
('','Tee-shirt Femme','images-Akanjo/Tee-shirt/7.jpg','Tee-Shirt Femme Bleu claire - BC BC02T: Composition: 100% coton Le coloris ash est 99% coton et 1% viscose et le coloris sport grey est 85% coton et 15% viscose.',16000,2,1),
('','Tee-shirt Femme','images-Akanjo/Tee-shirt/8.jpg','Violet femme Tee-shirt pour Femmes Col Rond - Stedman STE9700: Composition: 95% coton peigne ring-spun et 5% elasthanne. Grammage: 170 g/m. Coupe body ',15000,2,1),
('','Tee-shirt Femme','images-Akanjo/Tee-shirt/9.jpg','Tee-shirt stylé, crop-top très tendance, léger, en coton disponible en plusieurs taille XS,S,L,M ',16000,2,1),
('','Tee-shirt Femme','images-Akanjo/Tee-shirt/10.jpg','Tee-shirt été imprimé,léger en coton disponible en plusieurs taille, stock très limité ',16000,2,1);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Tee-shirt Garçon','images-Akanjo/Tee-shirt/11.jpg',' Garçon T-shirt en coton bleu, manches courtes et col rond. Messages contrastés imprimés sur avant.',5000,3,1),
('','Tee-shirt Garçon','images-Akanjo/Tee-shirt/12.jpg','Garçon Confectionné en côte 1x1, ce tee-shirt bébé garçon, à manches courtes, affiche une charmante sérigraphie sur le devant, différente selon le coloris choisi.',6000,3,1),
('','Tee-shirt Garçon','images-Akanjo/Tee-shirt/13.jpg','Garçon Tee shirt enfant humour pour garçon, manches courtes ou longues, plusieurs couleurs au choix Grand motif imprimé sur le devant',7000,3,1),
('','Tee-shirt Garçon','images-Akanjo/Tee-shirt/14.jpg','Garçon T-shirt chiné en coton biologique. Col rond et manches courtes raglans. Animation imprimée et brodée.',5000,3,1),
('','Tee-shirt Garçon','images-Akanjo/Tee-shirt/15.jpg','Garçon Tee shirt enfant aloha bleu en coton disponible à partir de 5 ans à 11 ans',8000,3,1);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Tee-shirt Fille','images-Akanjo/Tee-shirt/16.jpg','Fille ref: LAJOTI1 / 21S90133D31F507 Tee Shirt Manches Courtes Rose T-shirt rose à motif chat. - Manches courtes plissées - Chat fleuri à paillettes sur le devant',4000,4,1),
('','Tee-shirt Fille','images-Akanjo/Tee-shirt/17.jpg','Fille ref: FIJOTI9 / 19SG09G4TMC301 Tee-shirt fantaisie bébé fille Avec sa délicate couleur rose pastel et sa sérigraphie fraise pailletée en avant,',6000,4,1),
('','Tee-shirt Fille','images-Akanjo/Tee-shirt/18.jpg','Fille Tee-shirt jaune Hello Kitty 100% coton disponible de 5 à 10ans',6000,4,1),
('','Tee-shirt Fille','images-Akanjo/Tee-shirt/19.jpg','Fille Tee-shirt été coton,souple,coupe classique color bleu mais aussi disponible en rouge,jaune',7000,4,1),
('','Tee-shirt Fille','images-Akanjo/Tee-shirt/20.jpg','Fille Make think disponible de 8 à 12 ans en coton , léger ',5000,4,1);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Pantalon Hommme','images-Akanjo/Pantalon/21.jpg',' Pantalon tendance à carreaux Cordon de serrage au niveau de la taille Modèle de coupe slim Composition: 64% viskose 34% polyesther 2% élasthane',10000,1,2),
('','Pantalon Hommme','images-Akanjo/Pantalon/22.jpg','Pantalon Cargot Vert armé disponible en plusieurs taille',12000,1,2),
('','Pantalon Hommme','images-Akanjo/Pantalon/23.jpg','Pantalon homme élégant pour y aller travailler ou y aller à des événements',13000,1,2),
('','Pantalon Hommme','images-Akanjo/Pantalon/24.jpg','Calvin Klein Slim-Fit Stretch Blue Neat Suit Pants - Blue 38x30',15000,1,2),
('','Pantalon Hommme','images-Akanjo/Pantalon/25.jpg','Pantalon grenat slim trés élégant',13000,1,2);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie)  VALUES
('','Pantalon Femme','images-Akanjo/Pantalon/26.jpg','comporte : 2 plis au niveau du devant, un dos élastiqué, des poches italiennes, une ceinture nouée, un faux ourlet retroussé et une fausse braguette.',15000,2,2),
('','Pantalon Femme','images-Akanjo/Pantalon/27.jpg','Pantalon Palace: la meilleure option pour être élégant en été sans avoir à faire beaucoup de choses.',14000,2,2),
('','Pantalon Femme','images-Akanjo/Pantalon/28.jpg','Tissu: Costume en laine stretch Coupe slim Patte allongée, fermetures à agrafes et braguette zippée Poches avant obliques et poches arrière passepoilées',13000,2,2),
('','Pantalon Femme','images-Akanjo/Pantalon/29.jpg','Pantalon Fleuri ',13000,2,2),
('','Pantalon Femme','images-Akanjo/Pantalon/30.jpg','Pantalon en linge Palazzo, pantalon taille haute, pantalon large pour jambes, pantalon en linge Pantalon Palazzo fait de LINGE 100% LAVÉ.',12000,2,2);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie)  VALUES
('','Pantalon Garçon','images-Akanjo/Pantalon/31.jpg','Pantalon bleu vert pour un garçon agé de 9 ans',11000,3,2),
('','Pantalon Garçon','images-Akanjo/Pantalon/32.jpg','Jogging disponible en plusieurs couleur',12000,3,2),
('','Pantalon Garçon','images-Akanjo/Pantalon/33.jpg','Pantalon cargot vert très tendance',11000,3,2),
('','Pantalon Garçon','images-Akanjo/Pantalon/34.jpg','Pantalon Indigo Jean Bourget',10000,3,2),
('','Pantalon Garçon','images-Akanjo/Pantalon/35.jpg','Pantalon de sport garçon en molleton gris chiné - Le champion du confort, idéal pour le sport,',10000,3,2);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Pantalon Fille','images-Akanjo/Pantalon/36.jpg','Pantalon rose pour fille de 12 ans avec  noeud',15000,4,2),
('','Pantalon Fille','images-Akanjo/Pantalon/37.jpg','Pantalon fleuri blanc en jean',12000,4,2),
('','Pantalon Fille','images-Akanjo/Pantalon/38.jpg','Pantalon bleu en velours avec noeud',11000,4,2),
('','Pantalon Fille','images-Akanjo/Pantalon/39.jpg','Pantalon jean pour fille de 10 ans ',16000,4,2),
('','Pantalon Fille','images-Akanjo/Pantalon/40.jpg','Pantalon vert armé très tendance',13000,4,2);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chemise Homme','images-Akanjo/Chemise/41.jpg','La chemise décontractée pour les hommes raye la chemise à manches longues de col rabattu pour le travail & Mode Homme >',13000,1,3),
('','Chemise Homme','images-Akanjo/Chemise/42.jpg','Chemise pour homme à revers avec blocs de couleurs et patchwork',12000,1,3),
('','Chemise Homme','images-Akanjo/Chemise/43.jpg','Hommes Chemise Homme Casual camisa masculina Imprimé Plage Chemises À Manches Longues Marque Vêtements Casusl Chemise Asiatique Taille 3XL #Affiliate',12000,1,3),
('','Chemise Homme','images-Akanjo/Chemise/44.jpg','Chemise classique de couleur blanc, slim',13000,1,3),
('','Chemise Homme','images-Akanjo/Chemise/45.jpg','Revers Splash - Chemise slim à manches longues pour homme imprimée',12000,1,3);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chemise Femme','images-Akanjo/Chemise/46.jpg','Chemisier à manches longues - Bordeaux - Femme |',20000,2,3),
('','Chemise Femme','images-Akanjo/Chemise/47.jpg','Chemise blanche à épaules tombantes High Low',21000,2,3),
('','Chemise Femme','images-Akanjo/Chemise/48.jpg','Chemise bleu marine Chemisier avec poches -marine',19000,2,3),
('','Chemise Femme','images-Akanjo/Chemise/49.jpg','Chemise blanc cassé décontracté ',15000,2,3),
('','Chemise Femme','images-Akanjo/Chemise/50.jpg',' Chemisier en mousseline de soie à revers creux et perles contrastantes rose -SheIn',20000,2,3);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chemise Garçon','images-Akanjo/Chemise/51.jpg','Chemise blanc imprimé 2 ans ',14000,3,3),
('','Chemise Garçon','images-Akanjo/Chemise/52.jpg','Chemise blanc imprimé 8 ans',13000,3,3),
('','Chemise Garçon','images-Akanjo/Chemise/53.jpg','Tissu en coton Estampé en quadrados Sac application sur la peau bleu carreaux ',14000,3,3),
('','Chemise Garçon','images-Akanjo/Chemise/54.jpg',' Club - Chemise en sergé de coton à col chemise bleu claire',13000,3,3),
('','Chemise Garçon','images-Akanjo/Chemise/55.jpg','Chemisze à rayure bleu,orange,noire',20000,3,3);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chemise Fille','images-Akanjo/Chemise/56.jpg','Chemises et blouses fille | jaune',13000,4,3),
('','Chemise Fille','images-Akanjo/Chemise/57.jpg','Chemise beige manche courte ',14000,4,3),
('','Chemise Fille','images-Akanjo/Chemise/58.jpg','Chemise à carreaux',15000,4,3),
('','Chemise Fille','images-Akanjo/Chemise/59.jpg',' Chemise fille denim manches longues bleu marine',16000,4,3),
('','Chemise Fille','images-Akanjo/Chemise/60.jpg','Top dos nu découpé à rayures avec des plis et nœud papillon -French SheIn(Sheinside)',17000,4,3);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Short Homme','images-Akanjo/Short/61.jpg','Ce magnifique short classique vous fera profiter pleinement de vos belles journées ensoleillées ! Composition : Coton, polyester ',18000,1,4),
('','Short Homme','images-Akanjo/Short/62.jpg','Shorts de course occasionnels de couleur unie été pour hommes Shorts de gymnastique de remise en forme',19000,1,4),
('','Short Homme','images-Akanjo/Short/63.jpg','vêtements de sport, des shorts de sport, des vêtements de sport adidas,',20000,1,4),
('','Short Homme','images-Akanjo/Short/64.jpg','Nom de marque: SULEEStyle: CasualItem Type: ShortsNuméro de modèle: k9999Matériel: COTONLongueur: Longueur du genou',13000,1,4),
('','Short Homme','images-Akanjo/Short/65.jpg','Hommes camouflage taille élastique longueur au genou course à pied sport shorts été décontracté conseil shorts',13000,1,4);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Short Femme','images-Akanjo/Short/66.jpg','des shorts taille haute, short slim',11000,2,4),
('','Short Femme','images-Akanjo/Short/67.jpg','shorts décontractés,des shorts réversibles short de sport couleur rose',12000,2,4),
('','Short Femme','images-Akanjo/Short/68.jpg','Short de running Nike Dry Reflective pour Femme, Taille: Large noire et rose',130000,2,4),
('','Short Femme','images-Akanjo/Short/69.jpg','Short taille haute, motif pied-de-poule carreaux pied de poule La Redoute Collections | ',140000,2,4),
('','Short Femme','images-Akanjo/Short/70.jpg',' Matériel: Polyester Genre: FEMME Style: Décontracté Type article: Short Décoration: Pailleté Type de fermeture: Taille élastique Type de taille: Haute Pantalon en mousseline Style: RÉGULIER',13000,2,4);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Short Garçon','images-Akanjo/Short/71.jpg','Collection "Cérémonie"100% coton,Taille ajustable par élastique,Fermeture par zip et pressions',12000,3,4),
('','Short Garçon','images-Akanjo/Short/72.jpg',' Collection "Essentiels",100% coton organique,Taille ajustable de intérieur,Fermeture par zip et bouton couleur bleu ciel Bermuda coupe slack enfant garçon',13000,3,4),
('','Short Garçon','images-Akanjo/Short/73.jpg','Short en molleton enfant garçon Collection "Paris country club",100% coton,Taille élastiquée ajustable de intérieur,Poches droites couleur blanc',12000,3,4),
('','Short Garçon','images-Akanjo/Short/74.jpg','Bermuda enfant garçon coupe worker  Collection "Essentiels",100% coton organique,Poches worker,Taille ajustable de intérieur,Ouverture zippée et boutonnée couleur bleu blanc trait vertical ',11000,3,4),
('','Short Garçon','images-Akanjo/Short/75.jpg',' Bermuda coupe slack enfant garçon couleur blanc - Collection "Essentiels",98% coton, 2% élasthanne,Taille ajustable de intérieur,Ouverture zippée et boutonnée,Poches italiennes',16000,3,4);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Short Fille','images-Akanjo/Short/76.jpg','Short enfant fille en Liberty Couleur : ROSE/MULTICO  100% coton,Fronces à la taille,Taille élastiquée,Liberty Maynard garden ou Betsy coloris exclusif Jacadi',12000,4,4),
('','Short Fille','images-Akanjo/Short/77.jpg','Short enfant fille à festons couleur Rouge laque 98% coton, 2% elasthane, Piqué de coton et doublure en popeline, bouton pressions façon pont, taille ajustable par élastique',15000,4,4),
('','Short Fille','images-Akanjo/Short/78.jpg','Short enfant fille en popeline couleur Blanc/bleu ',13000,4,4),
('','Short Fille','images-Akanjo/Short/79.jpg','Short enfant fille en satin couleur vert pale  Collection "Balade à Honfleur",Doublure en popeline,Bas de jambe festonné,Taille entièrement élastiquée',17000,4,4),
('','Short Fille','images-Akanjo/Short/80.jpg','Short enfant fille motif étoilé couleur bleu/multico dévoile un imprimé étoilé chic et graphique. Doublé en popeline de coton et ouvrant sur les côtés par pressions',18000,4,4);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Sous-vetements Homme','images-Akanjo/Sous-vetements/81.jpg','Calvin Klein,Cotton Stretch | Lot de 3 boxers tailles hautes bleus, oranges et noirs en coton stretch',12000,1,5),
('','Sous-vetements Homme','images-Akanjo/Sous-vetements/82.jpg','Quarter Plain | Lot de 3 paires de chaussettes courtes grises et bleues en coton stretch, polyester et polyamide Puma',13000,1,5),
('','Sous-vetements Homme','images-Akanjo/Sous-vetements/83.jpg','Calvin Klein,Slim Fit Woven | Lot de 3 caleçons noir et gris 100% coton',14000,1,5),
('','Sous-vetements Homme','images-Akanjo/Sous-vetements/84.jpg','Levi,Solid Basic | Lot de 2 slips bleus en coton stretch',17000,1,5),
('','Sous-vetements Homme','images-Akanjo/Sous-vetements/85.jpg','Misez sur la qualité et le confort avec le pack de 3 débardeurs, Matières : 95%COTON + 5% ELASTHANNE',18000,1,5);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Sous-vetements Femme','images-Akanjo/Sous-vetements/86.jpg','Matériel : dentelle/ microfibre ,Autre caractéristique : push up,Fermeture : agrafage,Microfibre douce et confortable couleur noire ',15000,2,5),
('','Sous-vetements Femme','images-Akanjo/Sous-vetements/87.jpg',' Nuisette Short Femme Satin Dentelle Vetement Ensemble de Lingerie, Matériau: Polyester + Dentelle',13000,2,5),
('','Sous-vetements Femme','images-Akanjo/Sous-vetements/88.jpg','Coupe : Coupe classique,Composition : 95% Coton peigné / 5% Elasthanne,Débardeur femme fines bretelles,Fines bretelles stretch,Coupé cousu couleur orange ',12000,2,5),
('','Sous-vetements Femme','images-Akanjo/Sous-vetements/89.jpg','Sous-vêtement | Sous-vêtement femme Columbine sport ',11000,2,5),
('','Sous-vetements Femme','images-Akanjo/Sous-vetements/90.jpg','Ensemble florale 2 pieces,Noir, Ensemble 2 pièces de la marque sexy Leg Avenue,95% polyester, 5% spandex',13000,2,5);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Sous-vetements Garçon','images-Akanjo/Sous-vetements/91.jpg','Lot composé de 3 boxers assortis,Large élastique à la taille,Devant doublé,Finition double piqûre,Lot de 3 boxers 95% coton, 5 % élasthanne.',14000,3,5),
('','Sous-vetements Garçon','images-Akanjo/Sous-vetements/92.jpg','Le lot de 3 slips garçon 100% Coton. Spécialement créé pour les fans de Moi Moche et Méchant.',13000,3,5),
('','Sous-vetements Garçon','images-Akanjo/Sous-vetements/93.jpg','Sous-vetements garçon s isolé sur fond blanc couleur bleu ',15000,3,5),
('','Sous-vetements Garçon','images-Akanjo/Sous-vetements/94.jpg','Lot de 2 paires de chaussettes Marvel Batman®,1 paire avec rayures, motif placé et écusson Batman®,1 paire rayée avec Motif et inscription Batman®',16000,3,5),
('','Sous-vetements Garçon','images-Akanjo/Sous-vetements/95.jpg','Ensemble enfant en coton débardeur et slip Peppa Pig - version sport rouge',18000,3,5);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Sous-vetements Fille','images-Akanjo/Sous-vetements/96.jpg','Tobani 2 – sous-vêtement en coton pour fille, culotte pour collégienne, dessin animé pour enfants, pièces/lot',11000,4,5),
('','Sous-vetements Fille','images-Akanjo/Sous-vetements/97.jpg','Sous-vetements fille Cygnes - Rose poudré',12000,4,5),
('','Sous-vetements Fille','images-Akanjo/Sous-vetements/98.jpg','Ensemble composé un top et de culottes roses sans coutures.',13000,4,5),
('','Sous-vetements Fille','images-Akanjo/Sous-vetements/99.jpg','Lot de 7 paires de chaussettes avec des dessins ',16000,4,5),
('','Sous-vetements Fille','images-Akanjo/Sous-vetements/100.jpg','MiSense 5 Paquet Sous-vetements Filles Culotte Enfants Boxer Slip Fille Coton',13000,4,5);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chaussures Homme','images-Akanjo/Chaussures/101.jpg','Baskets Blanches Pour Homme',15000,1,6),
('','Chaussures Homme','images-Akanjo/Chaussures/102.jpg','La classe à italienne comme on aime ! Ces mocassins inspirés du style italien ',18000,1,6),
('','Chaussures Homme','images-Akanjo/Chaussures/103.jpg','Chaussures habillées formelles en cuir microfibre pour hommes',19000,1,6),
('','Chaussures Homme','images-Akanjo/Chaussures/104.jpg','Hommes Boucle En Métal Élégant Slip On Business Chaussures Habillées Formelles',15000,1,6),
('','Chaussures Homme','images-Akanjo/Chaussures/105.jpg','Oxford – chaussures en cuir suédé pour homme, style décontracté, grande taille 38-48, printemps-automne',16000,1,6);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chaussures Femme','images-Akanjo/Chaussures/106.jpg','Été marque sandales femmes boucle sangle talons hauts chaussures talon carré',16000,2,6),
('','Chaussures Femme','images-Akanjo/Chaussures/107.jpg','derbie femme chaussure de couleur noir et pantalon mi court noir',18000,2,6),
('','Chaussures Femme','images-Akanjo/Chaussures/108.jpg','Sandales à talons aiguilles pour femmes avec bride à la cheville et bouts ouverts à la taille motif crocodile',19000,2,6),
('','Chaussures Femme','images-Akanjo/Chaussures/109.jpg','Baskets Femme nike | Découvrir et shopper le meilleur de la sneaker femme ',17000,2,6),
('','Chaussures Femme','images-Akanjo/Chaussures/110.jpg','Sandale été très confortable et léger',15000,2,6);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chaussures Garçon','images-Akanjo/Chaussures/111.jpg','Nike Toddler Tanjun Shoes | Basketball couleur noir',10000,3,6),
('','Chaussures Garçon','images-Akanjo/Chaussures/112.jpg',' Kids LED Glowing Blue Shoes - 161-Black coloré bleu lumineux',11000,3,6),
('','Chaussures Garçon','images-Akanjo/Chaussures/113.jpg','Tout nouveau Jordan 1 peint à la main. La taille 10,5 est également livrée avec des lacets noirs et une boîte. couleur blanc ',12000,3,6),
('','Chaussures Garçon','images-Akanjo/Chaussures/114.jpg','Nike avec motif le Roi lion',14000,3,6),
('','Chaussures Garçon','images-Akanjo/Chaussures/115.jpg','Lacoste - CARNABY EVO BL 1',13000,3,6);
INSERT INTO PRODUITS(idProduit,nom,image,description,prix,idSous_Categorie,idCategorie) VALUES
('','Chaussures Fille','images-Akanjo/Chaussures/116.jpg',' filles sandales mode été chaussures pour enfants de haute qualité',12000,4,6),
('','Chaussures Fille','images-Akanjo/Chaussures/117.jpg','Dessus : croûte de cuir,Doublure : textile,Semelle intérieure : cuir,Semelle extérieure antidérapante en élastomère, résistante et souple boots roses',13000,4,6),
('','Chaussures Fille','images-Akanjo/Chaussures/118.jpg','Baskets slip-on imprimées Dessus : toile coton imprimée, finition biais uni,Doublure : textile',15000,4,6),
('','Chaussures Fille','images-Akanjo/Chaussures/119.jpg','mode chez Reebok Classic avec cette basket basse. A la fois confortable et tendance, elle associe tige en synthétique et coloris blanc. ',16000,4,6),
('','Chaussures Fille','images-Akanjo/Chaussures/120.jpg','PUMA Chaussure Basket Cali Jungle Kids pour fille, Blanc, Taille 35',12000,4,6);



create view boom as SELECT * from SOUHAIT inner join PRODUITS on souhait.idP = produits.idProduit where valide=1;