markdown

# OMSA Docker Container

This repository contains the necessary files to run Dell OpenManage Server Administrator (OMSA) inside a Docker container based on Rocky Linux.

## Getting Started

To build and run the OMSA Docker container, follow these steps:

1. Clone this repository.
2. Navigate to the repository directory.
3. Build the Docker image:
docker build -t local/omsa:latest .

4. Run the container:
docker run --privileged -it -v /lib/modules:/lib/modules:ro -v /usr/src:/usr/src:ro -p 1311:1311 local/omsa:latest


For more detailed instructions and configuration options, please refer to the official Dell OMSA documentation.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
