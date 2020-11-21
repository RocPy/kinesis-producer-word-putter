# kinesis-producer-word-putter

This project contains an example Kinesis producer application from the sample application [KCL for Python](https://github.com/awslabs/amazon-kinesis-client-python) 

A corresponding consumer demo application can be found at https://github.com/RocPy/kinesis-consumer-demo

- `delete-stack.sh` - Removes the CloudFormation stack
- `docker-buld.sh` - Build the Docker image
- `docker-run.sh` - Run the Docker image 
- `docker-shell.sh` - Examples of how to shell into a Docker image
- `Dockerfile` - The current Docker image configuration
- `Pipfile` - Manages Python library dependencies
- `run-wordputter.sh` - The entry point for the Docker container
- `samconfig.toml` - SAM configuration to support CloudFormation creation
- `sample_kinesis_wordputter.py` - The Kinesis producer application
- `template.yaml` - The CloudFormation template
- `update-stack.sh` - Updates the CloudFormation stack

## Environment

The application uses [Pipenv](https://github.com/pypa/pipenv) to manage packages and the development virtual environment for Python.

After cloning, run the following from the root of the project. The `--dev` option will include the `[dev-packages]` from the Pipfile.

```bash
pipenv install --dev
```

The primary IDE used to create this project was [VS Code](https://docs.aws.amazon.com/toolkit-for-vscode/latest/userguide/welcome.html)

Within VS Code make sure you are using the virtual environment created by Pipenv. This can be selected by clicking the Python version indication in the lower left corner of the VS Code window. If the Python version is not folowed by a virtual environment namne the virtual environment is not being used. 

## Development Credentials

Local development depends on 2 environment variables
- `LOCAL_KINESIS_ACCESS_KEY_ID`
- `LOCAL_KINESIS_SECRET_ACCESS_KEY`

These are used in `docker-run.sh`. The 2 variables are converted to `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` respectively, for running the application within a Docker container. 

## Running The Application

The `docker-run.sh` script has an example of how to run the application Docker. 

Using the Docker `docker run` example requires a `docker build` be run before, if any changes are made. It's recommended that the `docker-build.sh` is used to ensure the correct `Dockerfile` is used. 
