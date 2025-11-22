Docker instructions

Build locally with Docker:

```fish
# build image
docker build -t personal-website:latest .

# run container
docker run --rm -p 3000:3000 personal-website:latest
```

Or run with docker-compose:

```fish
docker-compose up --build
```

Then open `http://localhost:3000` in your browser.
