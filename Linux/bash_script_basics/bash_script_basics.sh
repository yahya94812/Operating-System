#!/bin/bash
# This is a comment - lines starting with # are ignored
# The first line (shebang) tells the system which interpreter to use

# ======== VARIABLES ========
# No spaces around the equals sign when assigning variables
MY_NAME="Bash Script"
age=25
current_dir=$(pwd)  # Command substitution using $()

# ======== DISPLAYING OUTPUT ========
echo "Hello World! This is a basic bash script."
echo "My name is $MY_NAME and I am $age years old."
echo "Current directory: $current_dir"

# ======== USER INPUT ========
echo -n "What's your name? "
read user_name
echo "Hello, $user_name!"

# ======== CONDITIONAL STATEMENTS ========
if [ "$user_name" = "admin" ]; then
    echo "Welcome administrator!"
elif [ "$user_name" = "guest" ]; then
    echo "Limited access granted."
else
    echo "Regular user access."
fi

# ======== COMPARISON OPERATORS ========
number=42
if [ $number -eq 42 ]; then
    echo "Number equals 42"
fi
if [ $number -gt 30 ]; then
    echo "Number is greater than 30"
fi
# -eq (equal), -ne (not equal), -gt (greater than), -lt (less than), -ge (greater than or equal), -le (less than or equal)

# ======== FILE TESTING ========
test_file="./test_file.txt"
touch "$test_file"  # Create empty file

if [ -f "$test_file" ]; then
    echo "$test_file exists and is a regular file."
fi
if [ -d "/etc" ]; then
    echo "/etc exists and is a directory."
fi
# -f (file exists), -d (directory exists), -r (readable), -w (writable), -x (executable)

# ======== LOOPS ========
# For loop
echo "Counting from 1 to 5:"
for i in 1 2 3 4 5; do
    echo "Number: $i"
done

# While loop
echo "Countdown:"
counter=3
while [ $counter -gt 0 ]; do
    echo "$counter..."
    counter=$((counter-1))  # Arithmetic operation
    sleep 1
done
echo "Go!"

# ======== FUNCTIONS ========
say_hello() {
    local name="$1"  # First argument passed to the function
    echo "Hello, $name!"
}

# Call the function
say_hello "World"
say_hello "$user_name"

# Function with return value
get_sum() {
    local num1=$1
    local num2=$2
    local result=$((num1 + num2))
    echo $result  # Use echo to return values
}

sum=$(get_sum 5 7)
echo "5 + 7 = $sum"

# ======== COMMAND LINE ARGUMENTS ========
echo "Script name: $0"
echo "Total arguments: $#"
echo "All arguments: $@"
echo "First argument: $1"
echo "Second argument: $2"

# ======== ARRAYS ========
fruits=("Apple" "Banana" "Cherry" "Date")
echo "Second fruit: ${fruits[1]}"  # Arrays are zero-indexed
echo "All fruits: ${fruits[@]}"
echo "Number of fruits: ${#fruits[@]}"

# Adding to an array
fruits+=("Elderberry")
echo "All fruits now: ${fruits[@]}"

# ======== ERROR HANDLING ========
# Exit if a command fails
set -e

# Custom error function
error_exit() {
    echo "ERROR: $1" >&2  # Print to stderr
    exit 1
}

# Example usage
# [ -d "/nonexistent_directory" ] || error_exit "Directory does not exist!"

# ======== TEXT PROCESSING ========
echo "Simple grep example:"
echo -e "apple\nbanana\ncherry\ndate" | grep "a"

echo "Simple sed example (substitution):"
echo "The quick brown fox" | sed 's/quick/fast/'

# ======== CLEANUP ========
rm "$test_file"  # Remove the test file we created
echo "Script execution finished!"

# To run this script:
# 1. Save it as basic_bash.sh
# 2. Make it executable: chmod +x basic_bash.sh
# 3. Run it: ./basic_bash.sh arg1 arg2
