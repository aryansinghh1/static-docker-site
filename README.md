# My Microservice Portfolio

A simple, responsive HTML portfolio website showcasing microservice architecture, containerized using Docker and served with nginx.

## Project Structure

```
.
├── index.html              # Home page with portfolio showcase
├── about.html              # About page with skills and experience
├── contact.html            # Contact page with contact form
├── style.css               # Stylesheet with responsive design
├── portfolio-banner.svg    # Portfolio banner image
├── Dockerfile              # Docker configuration
└── README.md               # This file
```

## Features

- **Responsive Design**: Works seamlessly on desktop and mobile devices
- **Navigation**: Easy navigation between Home, About, and Contact pages
- **Modern Styling**: Beautiful gradient background and clean UI
- **Dockerized**: Fully containerized for easy deployment
- **Lightweight**: Uses nginx:alpine for minimal footprint

## Local Development

Simply open `index.html` in your web browser to view the website locally.

## Docker Instructions

### Build the Docker Image

```bash
docker build -t portfolio-site:v1 .
```

### Run the Container

```bash
docker run -d -p 9090:80 --name portfolio-container portfolio-site:v1
```

### Access the Website

Open your browser and navigate to:
- **Homepage**: http://localhost:9090
- **About Page**: http://localhost:9090/about.html
- **Contact Page**: http://localhost:9090/contact.html

### Manage the Container

**View running containers:**
```bash
docker ps
```

**Stop the container:**
```bash
docker stop portfolio-container
```

**Start the container:**
```bash
docker start portfolio-container
```

**Remove the container:**
```bash
docker rm portfolio-container
```

**View container logs:**
```bash
docker logs portfolio-container
```

## Docker Configuration Details

- **Base Image**: nginx:alpine (lightweight nginx server)
- **Exposed Port**: 80 (mapped to host port 9090)
- **Content Location**: /usr/share/nginx/html/
- **Server**: Default nginx configuration

## Customization

To customize the portfolio:

1. Edit `index.html`, `about.html`, or `contact.html` to update content
2. Modify `style.css` to change styling
3. Replace `portfolio-banner.svg` with your own image
4. Rebuild the Docker image: `docker build -t portfolio-site:v1 .`
5. Restart the container with the new image

## Technologies Used

- HTML5
- CSS3
- Docker
- nginx:alpine

## License

This project is open source and available for educational purposes.
