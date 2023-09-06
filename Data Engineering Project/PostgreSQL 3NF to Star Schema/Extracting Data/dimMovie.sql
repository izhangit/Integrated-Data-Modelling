-- Populate dimMovie
INSERT INTO dimMovie
(
    movie_key,
    film_id,
    title,
    description,
    release_year,
    language,
    original_language,
    rental_duration,
    length,
    rating,
    special_features
)
SELECT
    f.film_id as movie_key,
    f.film_id,
    f.title,
    f.description,
    f.release_year,
    l.name as language,
    l.name as original_language_id,  
    f.rental_duration,
    f.length,
    f.rating,
    f.special_features
FROM film as f
JOIN language as l
    ON (f.language_id = l.language_id);
