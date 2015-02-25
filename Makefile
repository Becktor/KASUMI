CFLAGS := 


test_kasumi: kasumi_test.c kasumi.o
	gcc $(CFLAGS) $^ -o $@

kasumi.o: kasumi.c kasumi.h
	gcc $(CFLAGS) $< -c -o $@


.PHONY: clean
clean:
	rm -f *.o kasumi_test