# Use a small base image
FROM alpine:3.19

# Simple command to run when container starts
CMD ["sudo apt install nginx -y"]

CMD ["echo", "Hello from Docker! Your workflow works perfectly!"]

CMD ["flask", "run", "--host=0.0.0.0"]
