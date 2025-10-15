#!/bin/bash
# Create main directories
mkdir -p lectures practices projects/{midterm1_week12,midterm2_week16,midterm3_week20,final_project}
mkdir -p datasets/{raw,processed} notebooks/{experiments,learning} resources/{books,papers} utils

# Create week folders for lectures and practices
for i in {01..26}; do
    mkdir -p "lectures/week$i"
    mkdir -p "practices/week$i"
    touch "lectures/week$i/.gitkeep"
    touch "practices/week$i/.gitkeep"
done

# Create project subfolders
for project in midterm1_week12 midterm2_week16 midterm3_week20 final_project; do
    mkdir -p "projects/$project"/{data,notebooks,models}
    touch "projects/$project/.gitkeep"
done

# Add .gitkeep to other folders
touch datasets/raw/.gitkeep
touch datasets/processed/.gitkeep
touch notebooks/experiments/.gitkeep
touch notebooks/learning/.gitkeep
touch resources/books/.gitkeep
touch resources/papers/.gitkeep

echo "Folder structure created successfully!"
