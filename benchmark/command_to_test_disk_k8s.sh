# Random write test for IOP/s, i.e. lots of small files
sync;fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 --name=test --filename=test --bs=4k --iodepth=256 --size=4G --readwrite=randwrite --ramp_time=4

# Random Read test for IOP/s, i.e. lots of small files
sync;fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 --name=test --filename=test --bs=4k --iodepth=256 --size=512M --readwrite=randread --ramp_time=4

# Sequential write test for IOP/s, i.e. one large file
sync;fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 --name=test --filename=test --bs=4k --iodepth=256 --size=4G --readwrite=write --ramp_time=4

# Sequential Read test for IOP/s, i.e. one large file
sync;fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 --name=test --filename=test --bs=4k --iodepth=256 --size=4G --readwrite=read --ramp_time=4

# Random write test for throughput, i.e. lots of small files
sync;fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 --name=test --filename=test --bs=4M --iodepth=256 --size=10G --readwrite=randwrite --ramp_time=4

# Random Read test for throughput
sync;fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 --name=test --filename=test --bs=4M --iodepth=256 --size=10G --readwrite=randread --ramp_time=4

# Sequential write test for throughput, i.e. one large file
sync;fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 --name=test --filename=test --bs=4M --iodepth=256 --size=10G --readwrite=write --ramp_time=4

# Sequential Read test for throughput, i.e. one large file
sync;fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 --name=test --filename=test --bs=4M --iodepth=256 --size=10G --readwrite=read --ramp_time=4
