CMD := $(wildcard cmds/*.cmd)

all: $(CMD:.cmd=.result)

%.result:%.cmd
    bash $<
