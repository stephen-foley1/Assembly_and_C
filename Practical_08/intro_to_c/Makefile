CXX				:= gcc

BUILD_DIR		:= ./bin
SRC_DIR			:= ./src

MSG_LESSON		:= "Lesson"
MSG_SRC			:= "SRC"

MSG_START		:= "Build Started"
MSG_END			:= "Build Complete"
MSG_CLEAN		:= "Cleaning up"


ifeq ($(OS),Windows_NT)
    os  := Windows
	SDK			:=${MYSYS2}
	SDK_PATH	:=$(subst \,/,$(subst C:\,/c/,$(SDK)))
	INCLUDES	:= -I${SDK_PATH}/include -I.
	LIBS		:= -L${SDK_PATH}/lib
	CXXFLAGS 	:= -std=c99 -Wall -Wextra -g ${INCLUDES}
	LIBRARIES	:= # put any LIBRARIES dependancies here 
	TARGET		:= ${BUILD_DIR}/sampleapp.exe
else
    os := $(shell uname -s)
	INCLUDES	:= -I.
	LIBS		:= -L.
	CXXFLAGS 	:= -std=gnu99 -Wall -Wextra -g ${INCLUDES}
	LIBRARIES	:= # put any LIBRARIES dependancies here 
	TARGET		:= ${BUILD_DIR}/sampleapp.bin
endif

SRC				:=	$(wildcard ${SRC_DIR}/${lesson}/*.c) # List the CPP src files

all				:= build $(lesson)

build:
	@echo 		${MSG_SRC} ${SRC}
	@echo 		${MSG_LESSON} ${lesson}
	@echo 		${MSG_START} ${os}

	@echo 		"***	C Compiler	***"
	@echo 		${CXX}
	@echo 		"*** C Flags		***"
	@echo 		${CXXFLAGS}
	@echo 		"*** LIBRARIES		***"
	@echo 		${LIBRARIES}
	@echo 		"*** SRC		***"
	@echo 		${SRC}
	@echo 		"*** TARGET		***"
	@echo 		${TARGET}

	@#remove directory if it exits and then create directory
	@rm -rf 	${BUILD_DIR} 	|| 	true

	@#create bin directory
	@mkdir 		${BUILD_DIR}

	${CXX} ${CXXFLAGS} -o ${TARGET} ${SRC} ${LIBS} ${LIBRARIES}
	
	@echo ${MSG_END}
	
	@# Run TARGET
	./${TARGET}

.PHONY: clean

clean:
	@echo 		${MSG_CLEAN}
	rm -rf 		${BUILD_DIR} || true