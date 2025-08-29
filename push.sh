#!/bin/bash

# Build the JAR
mvn clean package

# Add all important files
git add src pom.xml README.md OUTPUT.md .gitignore target/bajaj-qualifier-1.0.0.jar

# Commit
git commit -m "Add Java source, final JAR, and documentation"

# Push
git push origin main
