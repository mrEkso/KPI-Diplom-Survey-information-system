INSERT INTO `users` (
                `id`,
                `username`,
                `email`,
                `password`,
                `token`,
                `role`
        )
VALUES (
                unhex(replace(uuid(), '-', '')),
                'baron',
                'baroniusokay@gmail.com',
                '$2a$10$EfPJyzhtoYfnu/c9kpL1vuyFIIxue.E1dDYMkHFwptbKSQ4iWiBYC',
                'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJiYXJAZ21haWwuY29tIiwiaWF0IjoxNzI2NDk4ODcxfQ.DnStYFvNhqegkwl1yXtKX49PgUP3zLBG-s_0r5u_zD8',
                1
        );
INSERT INTO `users` (
                `id`,
                `username`,
                `email`,
                `password`,
                `token`,
                `role`
        )
VALUES (
                unhex(replace(uuid(), '-', '')),
                'test',
                'test@gmail.com',
                '$2a$10$JFdzaFBZtffT548tqHsZR.Cvje5BhA86h86J5.jN/0YIuvSlExnJi',
                'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0ZXN0QGdtYWlsLmNvbSIsImlhdCI6MTc0NDI4NjMwMX0.6XmCp1IwpXd1BxjgRDlJOiepvNmURUvymVDZ--FKptU',
                2
        );
SET @user_id = (
                SELECT id
                FROM `users`
                WHERE email = 'baroniusokay@gmail.com'
        );
INSERT INTO `surveys` (
                `id`,
                `created_at`,
                `open`,
                `subtitle`,
                `title`,
                `user_id`
        )
VALUES (
                unhex(replace(uuid(), '-', '')),
                NULL,
                1,
                'test',
                'test',
                @user_id
        ),
        (
                unhex(replace(uuid(), '-', '')),
                NULL,
                1,
                'subtitle',
                'title',
                @user_id
        ),
        (
                unhex(replace(uuid(), '-', '')),
                NULL,
                1,
                'subtitle',
                'title',
                @user_id
        ),
        (
                unhex(replace(uuid(), '-', '')),
                NULL,
                0,
                'subtitle',
                'title',
                @user_id
        ),
        (
                unhex(replace(uuid(), '-', '')),
                NULL,
                0,
                'subtitle',
                'title',
                @user_id
        );