#!/bin/bash

# Step 1: Create the task2/ directory

echo "Step-1: Creating Directory Named task2 in current working Directory..."
mkdir task2

# Step 2: Create three files inside the task2/ directory using touch
echo "Step-2: Creating three files inside task2 Directory..."
touch task2/file1.txt task2/file2.txt task2/file3.txt

# Step 3: Copy the files to task2_temp/ directory
echo "Step-3:Copying files to task2_temp/ Directory..."
mkdir task2_temp
cp task2/* task2_temp/

# Step 4: Swap directory names
echo "Step-4: Swapping Directory names..."
mv task2 task2_temp/task2
mv task2_temp task2
mv task2/task2 ./task2_temp

# Step 5: Echo messages for each step
echo "Steps 1-4 completed successfully."

# Optional: Display final directory structure
echo "Final Directory structure:"
ls -R
