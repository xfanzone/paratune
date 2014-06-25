mkdir cmds && cp cmd.txt cmds && cd cmds
split -l1 -a3 cmd.txt
for i in `ls`
do
    echo "touch ${i}.result" >> ${i}
done
rm cmd.txt
rename 's/$/.cmd/' *
