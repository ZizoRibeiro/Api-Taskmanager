FROM ruby:2.4.1-slim
# Install all the dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev
# Add the path project
ENV INSTALL_PATH /api-taskmanager
# Create the project directory
RUN mkdir -p $INSTALL_PATH
# Change the project directory to the default directory
WORKDIR $INSTALL_PATH
# Copy the Gemfile to the container
COPY Gemfile ./
# Create Gem path
ENV BUNDLE_PATH /box
# Copy all code to the container
COPY . .
