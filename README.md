# AI Design Benchmark

A collection of design benchmark prototypes comparing different AI assistant brand styles.

## Project Overview

This project evaluates AI models based on their ability to replicate design systems from major AI companies without external references. Each benchmark section contains implementations by different AI models.

### Structure

```
/
├── index.html                          # Main landing page
├── anthropic/                          # Anthropic design benchmark
│   ├── claude4.6opus/
│   ├── gemini3.1pro/
│   └── gpt5.4/
└── google/                             # Google design benchmark
    ├── opus4.6/
    ├── gemini3.1/
    └── gpt5.4/
```

## Benchmarks

### Anthropic Design Benchmark
Evaluates how different AI models replicate the Anthropic brand design and aesthetic.

### Google Design Benchmark
Evaluates how different AI models create a Google-style official introduction homepage based on performance alone.

## Local Development

### Using Python's built-in server
```bash
python3 -m http.server 8000
```

### Using Docker
```bash
docker-compose up
```

Then open `http://localhost:3000/`.

## Deployment

This is a static site that can be deployed to:
- Dokploy (using provided Dockerfile)
- Vercel
- GitHub Pages
- Any static host

### Docker Deployment (Dokploy)

The project includes a Dockerfile configured for Dokploy. Simply connect your repository and Dokploy will automatically build and deploy.

## Technologies

- HTML5
- CSS3
- Responsive Design
- Docker & Docker Compose

## License

MIT

