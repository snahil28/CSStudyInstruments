SRC=$(wildcard bugs/*.md)

SRC_DIR := ./bugs
OBJ_DIR := ./bugs
SRC_FILES := $(wildcard $(SRC_DIR)/*.md)
OBJ_FILES := $(patsubst $(SRC_DIR)/%.md,$(OBJ_DIR)/%.pdf,$(SRC_FILES))

all: $(OBJ_FILES)

$(OBJ_DIR)/%.pdf: $(SRC_DIR)/%.md
	pandoc -s $^ -t latex -o $@


survey.pdf: survey.md
	pandoc -s survey.md -t latex -o survey.pdf

clean:
	- rm *.pdf
	- rm bugs/*.pdf
