DEVICE          = stm32f411ce
OPENCM3_DIR     = ${HOME}/src/libopencm3

SRCS			+= main.c
OBJS            += main.o

CFLAGS          += -O0 -ggdb3
CPPFLAGS		+= -MD
LDFLAGS         += -static -nostartfiles
LDLIBS          += -Wl,--start-group -lc -lgcc -lnosys -Wl,--end-group

include $(OPENCM3_DIR)/mk/genlink-config.mk
include $(OPENCM3_DIR)/mk/gcc-config.mk

.PHONY: clean all

all: out.elf out.hex

clean:
	$(Q)$(RM) -rf *.elf *.hex *.bin *.o *.d *.ld

include $(OPENCM3_DIR)/mk/genlink-rules.mk
include $(OPENCM3_DIR)/mk/gcc-rules.mk