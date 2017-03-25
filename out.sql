.headers on
.mode tabs
.output Repositories.tsv
select Id,IdOnGitHub,Name,Description,Homepage,CreatedAt,PushedAt,UpdatedAt from Repositories order by CreatedAt desc;

