#!/bin/bash
STRING=bruteForceCrack.txt
padding="00000000000000"
padding2="000000000000"
for c1 in 30 31 32 33 34 35 36 37 38 39 41 42 43 44 45 46 47 48 49 4a \
               4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 61 62 63 64 \
               65 66 67 68 69 6a 6b 6c 6d 6e 6f 70 71 72 73 74 75 76 77 78 \
                79 7a;do
		((counter++))
		echo $c1$padding >> bruteForceCrack.txt
done

for c2 in 30 31 32 33 34 35 36 37 38 39 41 42 43 44 45 46 47 48 49 4a \
		4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 61 62 63 64 \
             	65 66 67 68 69 6a 6b 6c 6d 6e 6f 70 71 72 73 74 75 76 77 78 \
                79 7a;do
	for c3 in 30 31 32 33 34 35 36 37 38 39 41 42 43 44 45 46 47 48 49 4a 4b 4c \
                4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 61 62 63 64 65 66 \
                67 68 69 6a 6b 6c 6d 6e 6f 70 71 72 73 74 75 76 77 78 79 7a;do
		echo $c2$c3$padding2 >> bruteForceCrack.txt

	((counter++))
	while read STRING
	do
		if openssl enc -d -DES-ECB \
			-K K:$STRING -in file11.cipher -out file11Plain.txt
		then
			break
		else
			echo $counter $STRING
		fi
done
done
done < bruteForceCrack.txt
