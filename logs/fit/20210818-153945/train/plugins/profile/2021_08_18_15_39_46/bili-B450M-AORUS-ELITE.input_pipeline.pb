	?uS?k@?uS?k@!?uS?k@	du?
\?@du?
\?@!du?
\?@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?uS?k@;q9^????1??????A^c?????IPoF?W???Yx??!S??rEagerKernelExecute 0*	??Q??U@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?TގpZ??!L?j9.?B@)???T?t??184/V'@@:Preprocessing2U
Iterator::Model::ParallelMapV2hyܝ???!]0M??a/@)hyܝ???1]0M??a/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[4]::Concatenate[0]::TensorSlice?*?????!?s?5?,.@)?*?????1?s?5?,.@:Preprocessing2F
Iterator::Modelp??e1???!,?y??=@)x???Ĭ??1???,??*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[4]::Concatenate???"Ɩ?!?#%???9@)??"?-???1??~?ih%@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zips???M??!u?aEѹQ@)]?`7l[t?1?2a??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?St$??p?!???7@@)?St$??p?1???7@@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?TƿϘ?!?v?i<@)??hUM`?1앚'Vv@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 32.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?43.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9du?
\?@I???:?ES@Q?
Γ?m3@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	;q9^????;q9^????!;q9^????      ??!       "	????????????!??????*      ??!       2	^c?????^c?????!^c?????:	PoF?W???PoF?W???!PoF?W???B      ??!       J	x??!S??x??!S??!x??!S??R      ??!       Z	x??!S??x??!S??!x??!S??b      ??!       JGPUYdu?
\?@b q???:?ES@y?
Γ?m3@