FROM gcc
RUN apt-get update && apt-get install -y valgrind 
RUN apt-get install -y libsdl2-dev 
RUN apt-get install -y libsdl2-image-dev
RUN apt-get install -y gawk
COPY libsdl.supp /root/libsdl.supp
RUN echo "--suppressions=/root/libsdl.supp" > /root/.valgrindrc