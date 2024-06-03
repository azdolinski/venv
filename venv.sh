#!/bin/sh

# Function to create a virtual environment
create_venv() {
  python3 -m venv ./venv
  echo "Virtual environment created at ./venv"
}

# Function to activate the virtual environment
activate_venv() {
  tmpfile=$(mktemp)
  echo "source ./venv/bin/activate" > "$tmpfile"
  exec bash --rcfile "$tmpfile"
  rm "$tmpfile"  # Remove the temporary file (although the exec won't reach this line)
}


# Function to deactivate the virtual environment
deactivate_venv() {
  bash -c "deactivate"   
  echo "Virtual environment deactivated."
}

# Function to remove the virtual environment
remove_venv() {
  rm -rf ./venv
  echo "Virtual environment removed."
}

# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 {create|activate|deactivate|remove}"
  exit 1
fi

# Perform action based on the argument
case "$1" in
  create)
    create_venv
    ;;
  activate|active)
    activate_venv
    ;;
  deactivate|deactive)
    deactivate_venv
    ;;
  remove)
    remove_venv
    ;;
  *)
    echo "Invalid action. Use: {create|activate|deactivate|remove}"
    exit 1
    ;;
esac
