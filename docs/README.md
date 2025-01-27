# Documentation

## Product Documentation

Product documentation for the toolkit is available at
<https://docs.nvidia.com/nemo/guardrails>.

## Building the Documentation

1. Build the container:

   ```console
   docker build -t guard-tk-docs:dev --build-arg UID=$(id -u) docs
   ```

1. Start the container:

   ```console
   docker run --rm -it -v $(pwd):/work -w /work -u $(id -u) guard-tk-docs:dev bash
   ```

1. Build the documentation:

   ```console
   sphinx-build -b html docs _build/docs
   ```
