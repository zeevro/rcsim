CXXFLAGS = -O3 -Wall -Werror -g -MMD
LDFLAGS = -rdynamic -g

# target specific settings
LDFLAGS += -lIrrlicht

HEADERS = $(wildcard *.h)
SRCS = $(wildcard *.cc)
OBJS = $(SRCS:.cc=.o)

rcsim: ${OBJS}
	$(CXX) ${OBJS} -o rcsim $(LDFLAGS)

-include *.d

run: rcsim
	./rcsim

format:
	clang-format -i $(HEADERS) $(SRCS)

clean:
	rm -f *.d ${OBJS} rcsim

.PHONY: all clean
