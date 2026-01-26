CXXFLAGS = -O3 -Wall -Werror -g -I../raylib-cpp/include
LDFLAGS = -rdynamic -g

# target specific settings
LDFLAGS += -lraylib

HEADERS = $(wildcard *.h)
SRCS = $(wildcard *.cc)
OBJS = $(SRCS:.cc=.o)

rcsim: ${OBJS}
	$(CXX) ${OBJS} -o rcsim $(LDFLAGS)

format:
	clang-format -i $(HEADERS) $(SRCS)

clean:
	rm -f ${OBJS} rcsim

.PHONY: all clean
