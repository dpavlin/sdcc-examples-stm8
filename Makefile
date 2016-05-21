SDCC=sdcc
SDLD=sdld
OBJECTS=blinky.ihx uart.ihx
OBJECT=blinky

.PHONY: all clean flash

all: $(OBJECTS)

clean:
	rm -f $(OBJECTS)

flash: $(OBJECT).ihx
#	./stm8flash -c stlinkv2 -p stm8s103f3 -w $(OBJECT).ihx
	./stm8flash -c stlinkv2 -p stm8s003f3 -w $(OBJECT).ihx

%.ihx: %.c
	$(SDCC) -lstm8 -mstm8 --out-fmt-ihx $(CFLAGS) $(LDFLAGS) $<
