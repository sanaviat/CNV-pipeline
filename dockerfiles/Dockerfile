FROM 4dndcic/ubuntu16.04-miniconda-python36:v1
MAINTAINER Tiziana Sanavia (tiziana.sanavia@gmail.com)

# general updates & installing necessary Linux components
RUN apt-get update && apt-get install -y \
nano

RUN wget http://compbio.med.harvard.edu/BIC-seq/NBICseq-norm_v0.2.4.tar.gz \
    && tar -xzf NBICseq-norm_v0.2.4.tar.gz \
    && chown -R root:root /NBICseq-norm_v0.2.4 \
    && cd /NBICseq-norm_v0.2.4 \
    && chmod 755 NBICseq-norm.pl BRS_1bp BRS_1bp randomSample DataPrepare \
    && chmod 644 R/*.R \
    && rm /NBICseq-norm_v0.2.4.tar.gz

RUN wget http://compbio.med.harvard.edu/BIC-seq/NBICseq-seg_v0.7.2.tar.gz \
    && tar -xzf NBICseq-seg_v0.7.2.tar.gz \
    && chown -R root:root /NBICseq-seg_v0.7.2 \
    && cd /NBICseq-seg_v0.7.2 \
    && chmod 755 . combineFile MBIC-seq_v0.1.5 R bootstrap \
    && chmod 644 *.pl R/*.R \
    && chmod 755 MBIC-seq_v0.1.5/MBICseq combineFile/combineFile BICseqTwoSample.pl bootstrap/bootstrapTest \
    && rm /NBICseq-seg_v0.7.2.tar.gz

# BICseq2 normalization
#ADD ./dockerfiles/NBICseq-norm_v0.2.4 ./NBICseq-norm_v0.2.4
#RUN cd NBICseq-norm_v0.2.4 && \
#make clean && \
#make

# BICseq2 segmentation 
#ADD ./dockerfiles/NBICseq-seg_v0.7.2 ./NBICseq-seg_v0.7.2
#RUN cd NBICseq-seg_v0.7.2 && \
#make clean && \
#make

#ENV PATH=/usr/local/bin/NBICseq-norm_v0.2.4/:$PATH
#ENV PATH=/usr/local/bin/NBICseq-seg_v0.7.2/:$PATH

CMD ["bash"]
