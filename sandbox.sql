UPDATE personas
SET correo = 'leonardo.rodriguez@example.com'
WHERE nombre = 'Leonardo Rodriguez Villicana' AND correo IS NULL;

UPDATE personas
SET correo = 'brian.hernandez@example.com'
WHERE nombre = 'Brian Emmanuel Hernández Zuniga' AND correo IS NULL;

--Editar datos en la tabla personas