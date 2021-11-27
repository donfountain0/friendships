-- Return all users who are friends with Kermit, make sure their names are displayed in results.
-- Return the count of all friendships

-- SELECT users.id, users.first_name, users.last_name
-- FROM users
-- JOIN friendships on friendships.user_id = users.id
-- WHERE friendships.friend_id = 4


-- SELECT COUNT(friendships.friend_id) as number_of_friendships
-- FROM friendships

-- SELECT * FROM friendships

-- Find out who has the most friends and return the count of their friends.

-- SELECT friendships.user_id, COUNT(user_id)
-- FROM friendships
-- GROUP BY user_id;

-- Create a new user and make them friends with Eli Byers, Kermit The Frog, and Marky Mark
-- INSERT users (first_name, last_name, created_at, updated_at)
-- VALUES ("Don", "Fountain", NOW(), NOW());

-- INSERT INTO friendships(user_id, friend_id, created_at, updated_at)
-- VALUES (6, 2,NOW(), NOW()), (6, 4,NOW(), NOW()), (6, 5,NOW(), NOW());


-- SELECT * FROM users

-- Return the friends of Eli in alphabetical order

-- SELECT users.first_name
-- FROM users
-- JOIN friendships on friendships.user_id = users.id
-- WHERE friendships.friend_id = 2;


-- Remove Marky Mark from Eli’s friends.

-- DELETE FROM friendships 
-- WHERE friendships.friend_id =5 AND friendships.user_id = 2;

-- SELECT * FROM friendships

-- Return all friendships, displaying just the first and last name of both friends

SELECT users.first_name, users.last_name, user2.first_name as friend_first_name, user2.last_name as friend_last_name FROM users
JOIN friendships ON friendships.user_id = users.id 
LEFT JOIN users as user2 ON friendships.friend_id = user2.id;




