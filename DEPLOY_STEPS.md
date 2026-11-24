# Deploy steps (nothing has been done yet)
1. Choose the subdomain (e.g. firstcontact.12ronnies.com). Replace firstcontact in docker-compose.yml.
2. Copy the three Traefik values from the ideasnest project (see top of docker-compose.yml).
3. Get the folder onto the VPS or a Git repo that Hostinger Docker Manager can build from.
   (Docker Manager can deploy a compose from a GitHub URL; plain upload of the YAML alone is not enough
   because the image needs index.html, the cover and the two PDFs.)
4. Hostinger hPanel > VPS > Docker Manager > Create project "firstcontact-book" > Deploy
   (Deploy saves; Cancel discards, per the cutover note).
5. Cloudflare DNS: add A record firstcontact -> 168.231.112.161, proxied (orange cloud), SSL mode Full.
6. Check https://firstcontact.12ronnies.com loads, the sample and media kit PDFs open.
7. Then add a link to it from 12ronnies.com (Elementor) and clear WP Rocket cache.
Rollback: stop the project and delete the DNS record. Existing apps are untouched.
