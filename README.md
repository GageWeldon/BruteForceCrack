# BruteForceCrack
Linux .sh script that cracks a password 1-2 characters long that contains uppercase, lowercase or digits 1-9. 

This project first iterates through every possible password option using the above parameters for the case that it is a one character password and stores these values in a .txt file. 

Next the script iterates through every possible combination of 2 character passwords with the above parameters and adds these results to a .txt file. 

The script then iterates through every entry in the file, using the entries as the password in the DES-ECB encryption standard using openssl in a Debian virtual machine. 
