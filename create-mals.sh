#! /bin/bash

#mkdir -p malDir troDir virDir worDir

cd ../malDir
touch  malware1.mal malware2.mal trojan3.tro virus4.vir worm5.wor desc1.txt
cd ../troDir
touch trojan1.tro trojan2.tro virus3.vir worm4.wor malware5.mal desc2.txt
cd ../virDir
touch virus1.vir virus2.vir worm3.wor malware4.mal trojan5.tro desc3.txt
cd ../worDir
touch worm1.wor worm2.wor malware3.mal trojan4.tro virus5.vir desc4.txt
