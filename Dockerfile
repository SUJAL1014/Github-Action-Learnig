# Use a small base image
FROM alpine:3.19

# Simple command to run when container starts
CMD ["echo", "Hello from Docker! Your workflow works 🎉"]

CMD ["flask", "run", "--host=0.0.0.0"]
