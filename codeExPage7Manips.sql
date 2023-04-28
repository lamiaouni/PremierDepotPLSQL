/*
On voudrait écrire un code qui :
1.	Lit un nom (d’étudiant).
2.	Lit une date de naissance
3.	Lit une date de début de formation
4.	Lit un programme (Réseaux, bases de données, qualité,…) 
5.	construit le code étudiant, obtenu en combinant: 
•	les 3 premières lettres du nom (utiliser la fonction substr pour extraire une partie d’une autre chaine), 
•	le numéro correspondant au moi de naissance (utiliser to_char pour extraire le mois de la date de naissance)
•	ainsi que les 2 premières lettres du programme (substr ici aussi),
•	Détermine la date 6 mois après la date début de formation qui correspond à la date limite pour changer de programme (utiliser la fonction add_months)
6.	f.	Affiche un message indiquant le nom, le numéro de l’employé et la date de confirmation déterminée.

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
 dbms_output.put_line('Votre numéro' || codeEtud);
 dbms_output.put_line('Votre date limite' || add_months(dateDebForm,6));
END;