INSERT INTO `users` (`id`, `email`, `password`, `token`)
VALUES (unhex(replace(uuid(), '-', '')), 'baroniusokay@gmail.com',
        '$2a$10$EfPJyzhtoYfnu/c9kpL1vuyFIIxue.E1dDYMkHFwptbKSQ4iWiBYC',
        'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJiYXJvbml1c29rYXlAZ21haWwuY29tIiwiaWF0IjoxNzAzMjcxNDAwfQ.4zV2TGcPW-MRalO1t8YqufmhsnJiuZlacU2U9OM5Iy4');
SET @user_id = (SELECT id
                FROM `users`
                WHERE email = 'baroniusokay@gmail.com');
INSERT INTO `surveys` (`id`, `created_at`, `open`, `subtitle`, `title`, `user_id`)
VALUES (unhex(replace(uuid(), '-', '')), NULL, 0, 'test', 'test', @user_id),
       (unhex(replace(uuid(), '-', '')), NULL, 0, 'subtitle', 'title', @user_id),
       (unhex(replace(uuid(), '-', '')), NULL, 0, 'subtitle', 'title', @user_id),
       (unhex(replace(uuid(), '-', '')), NULL, 0, 'subtitle', 'title', @user_id),
       (unhex(replace(uuid(), '-', '')), NULL, 0, 'subtitle', 'title', @user_id);
