
```bash
# Install hey
sudo apt install hey

# Start the whylogs container
make start-server

# Run the load test. The number corresponds to the number of rows per request.
make load-test-10
make load-test-50
make load-test-500
```
