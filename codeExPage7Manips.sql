/*
On voudrait �crire un code qui :
1.	Lit un nom (d��tudiant).
2.	Lit une date de naissance
3.	Lit une date de d�but de formation
4.	Lit un programme (R�seaux, bases de donn�es, qualit�,�) 
5.	construit le code �tudiant, obtenu en combinant: 
�	les 3 premi�res lettres du nom (utiliser la fonction substr pour extraire une partie d�une autre chaine), 
�	le num�ro correspondant au moi de naissance (utiliser to_char pour extraire le mois de la date de naissance)
�	ainsi que les 2 premi�res lettres du programme (substr ici aussi),
�	D�termine la date 6 mois apr�s la date d�but de formation qui correspond � la date limite pour changer de programme (utiliser la fonction add_months)
6.	f.	Affiche un message indiquant le nom, le num�ro de l�employ� et la date de confirmation d�termin�e.

*/
DECLARE
nom varchar2(20);
dateNais  date;
dateDebForm date;
pgme varchar2(25);
codeEtud varchar2(50);
BEGIN
 nom:='&valNom';
 dateNais:=to_date('&dateNassance','dd-mm-yyyy');
 dateDebForm:=to_date('&dateFormaton','dd-mm-yyyy');
 pgme:='&programme';
 
 codeEtud:=substr(nom,1,3) || to_char(dateNais,'mm') || substr(pgme,1,2);
 dbms_output.put_line('Vos infos');
 dbms_output.put_line('Votre num�ro' || codeEtud);
 dbms_output.put_line('Votre date limite' || add_months(dateDebForm,6));
END;