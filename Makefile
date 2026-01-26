CXXFLAGS = -O3 -Wall -Werror -g
LDFLAGS = -rdynamic -g

# target specific settings
LDFLAGS += -lIrrlicht

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
