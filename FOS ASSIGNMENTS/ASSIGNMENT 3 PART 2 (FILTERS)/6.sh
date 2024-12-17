display_file_content()
{
FILE=$1
if [[ ! -f "$FILE" ]]; 
then
echo "File "$FILE" does not exist!"
exit 1
fi

echo "Displaying content of "$FILE" in capital letters:"
awk '{print toupper ($2,$3,$4)}' $FILE
}

read -p "Enter the file name: " FILENAME
display_file_content "$FILENAME"