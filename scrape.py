import os
import shutil

def get_unique_filename(dest_path, filename):
    """Generate a unique filename by appending a number if the file already exists."""
    base, ext = os.path.splitext(filename)
    counter = 1
    new_filename = filename
    while os.path.exists(os.path.join(dest_path, new_filename)):
        new_filename = f"{base}_{counter}{ext}"
        counter += 1
    return new_filename

def collect_files(source_dir, output_dir):
    """Traverse source_dir, collect all files, and copy them to output_dir."""
    # Create output directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    # Walk through all directories and subdirectories
    for root, dirs, files in os.walk(source_dir):
        # Skip the output directory to avoid infinite recursion
        if os.path.abspath(root) == os.path.abspath(output_dir):
            continue
        
        for file in files:
            src_path = os.path.join(root, file)
            # Ensure it's a file (not a symlink, etc.)
            if os.path.isfile(src_path):
                # Get a unique filename for the destination
                unique_filename = get_unique_filename(output_dir, file)
                dest_path = os.path.join(output_dir, unique_filename)
                try:
                    # Copy the file to the output directory
                    shutil.copy2(src_path, dest_path)
                    print(f"Copied: {src_path} -> {dest_path}")
                except Exception as e:
                    print(f"Error copying {src_path}: {e}")

def main():
    # Specify the source directory (current directory by default)
    source_directory = "lib"  # You can change this to any directory path
    output_directory = "output"  # Output directory name
    
    # Ensure the source directory exists
    if not os.path.exists(source_directory):
        print(f"Source directory '{source_directory}' does not exist.")
        return
    
    print(f"Collecting files from '{source_directory}' to '{output_directory}'...")
    collect_files(source_directory, output_directory)
    print("File collection completed.")

if __name__ == "__main__":
    main()