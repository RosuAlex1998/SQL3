USE new_schema1;
SELECT * FROM student;
SELECT * FROM facultate;

INSERT INTO facultate SET nume = 'Vietii', adresa =  'Str. Soarelui';
SELECT * FROM facultate;

INSERT INTO student SET nume = 'Andi', prenume = 'Ionut', grupa = 2, email = 'ionut@vietii.ro', facultate_idfacultate = 1;
SELECT * FROM student;