# Use the pandoc/extra base image
FROM pandoc/extra:latest-ubuntu

# Install necessary packages (if any)
# RUN apt-get update && apt-get install -y <necessary-packages>

# Install pandoc-sidenote
RUN apt -y install pandoc-sidenote

# Set the entrypoint (if needed)
ENTRYPOINT [ "pandoc" ]

# Copy your content and configuration into the container
# COPY . /path/to/directory/in/container
