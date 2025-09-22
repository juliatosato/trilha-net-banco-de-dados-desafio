-- 1. Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM FILMES;

-- 2. Buscar o nome e ano dos filmes, ordenar por ordem crescente pelo ano 

SELECT Nome, Ano FROM FILMES
ORDER BY Ano ASC;

-- 3. Buscar pelo filme de volta para o futuro, trazendo nome, ano e a duração

SELECT Nome, Ano, Duracao FROM FILMES
WHERE Nome = 'De Volta para o Futuro';

-- 4. Buscar os filmes lançados em 1997

SELECT Nome, Ano, Duracao FROM FILMES
WHERE Ano = 1997;

-- 5. Buscar os filmes lançados após o ano 2000

SELECT Nome, Ano, Duracao FROM FILMES
WHERE Ano > 2000;

-- 6. Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome, Ano, Duracao FROM FILMES
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7. Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(*) AS Quantidade
FROM FILMES
GROUP BY Ano
ORDER BY SUM (Duracao) DESC;

-- 8. Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT *
FROM Atores
WHERE Genero = 'M';

-- 9. Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10. Buscar o nome do filme e o gênero

SELECT f.Nome, g.Genero
FROM FILMES AS f
INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
INNER JOIN Generos AS g ON fg.IdGenero = g.Id;

-- 11. Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT f.Nome, g.Genero
FROM Filmes AS f
INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
INNER JOIN Generos AS g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- 12. Buscar o nome do filme e os atores, trazendo PrimeiroNome, UltimoNome e seu papel

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes as f
INNER JOIN ElencoFilme AS ef ON f.Id = ef.IdFilme
INNER JOIN Atores AS a ON ef.IdAtor = a.Id;
