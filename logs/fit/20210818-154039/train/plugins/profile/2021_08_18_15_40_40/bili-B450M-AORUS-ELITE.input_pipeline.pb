	`9B??@`9B??@!`9B??@	әU-h?#@әU-h?#@!әU-h?#@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL`9B??@?f*?#???1???????A3܀?#??I??|?5???Y{m??]??rEagerKernelExecute 0*	?p=
?cT@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat1|DL?$??!b?WM?@){??????1?Qe?E9@:Preprocessing2F
Iterator::Model%??1??!???? dC@)??ek}???1?c??3@:Preprocessing2U
Iterator::Model::ParallelMapV2??????!lC??o?2@)??????1lC??o?2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[4]::Concatenate[0]::TensorSlice-[닄???!??~??01@)-[닄???1??~??01@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor׆?q?&t?!?1?I%!@)׆?q?&t?1?1?I%!@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[4]::Concatenate???U+??!?(?L??6@)U???N@s?1??]??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?-?l???!H]o??N@)??<?n?1rHyۉ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????h??!J^71H9@)ŏ1w-!_?1+	AV??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 9.8% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?38.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t30.5 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9әU-h?#@I>(?M?nQ@Q!?????4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?f*?#????f*?#???!?f*?#???      ??!       "	??????????????!???????*      ??!       2	3܀?#??3܀?#??!3܀?#??:	??|?5?????|?5???!??|?5???B      ??!       J	{m??]??{m??]??!{m??]??R      ??!       Z	{m??]??{m??]??!{m??]??b      ??!       JGPUYәU-h?#@b q>(?M?nQ@y!?????4@