# Shell Script Race Condition

This repository demonstrates a race condition in a shell script that processes multiple files concurrently.

## The Bug

The `bug.sh` script uses `find` to locate all `.txt` files and processes them in the background using `&`.  The lack of synchronization mechanisms leads to a race condition: multiple processes might try to access and modify the same resources simultaneously, leading to unpredictable behavior. This is particularly problematic if the file processing involves writing to the files or shared resources. 

## The Solution

The `bugSolution.sh` script addresses the race condition by using a `for` loop which processes files sequentially and ensures that each file is fully processed before the next one is started.