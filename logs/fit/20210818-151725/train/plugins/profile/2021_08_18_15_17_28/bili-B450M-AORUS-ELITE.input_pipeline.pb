	???9F@???9F@!???9F@	??E?et????E?et??!??E?et??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???9F@?\???>??1)?k{?:@A?=^H????Ij3NCT?0@Yv?1<???rEagerKernelExecute 0*	~?5^??V@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeattE)!XU??!??%<??@@)O?\???1wz?z><@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?????ՙ?!r??:?;@)Ǻ????1??ٍ?U1@:Preprocessing2U
Iterator::Model::ParallelMapV2?9?ؗl??!k??a?.@)?9?ؗl??1k??a?.@:Preprocessing2F
Iterator::Model??????!x??V>@)?Z?!???1???K?-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??ӝ'???!?`V??8%@)??ӝ'???1?`V??8%@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorU?wE??u?!?U??@)U?wE??u?1?U??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??O?m??!???XPjQ@)??hUMp?1?@8v?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?׺????!S?mi?[?@)A??h:;i?1WF?4K@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?38.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??E?et??I{:????C@Q??ĖN@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?\???>???\???>??!?\???>??      ??!       "	)?k{?:@)?k{?:@!)?k{?:@*      ??!       2	?=^H?????=^H????!?=^H????:	j3NCT?0@j3NCT?0@!j3NCT?0@B      ??!       J	v?1<???v?1<???!v?1<???R      ??!       Z	v?1<???v?1<???!v?1<???b      ??!       JGPUY??E?et??b q{:????C@y??ĖN@