	?\??SB@?\??SB@!?\??SB@	?{BQ????{BQ???!?{BQ???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?\??SB@???e???1??/???9@A????s???I+?WY۴"@Y?h o???rEagerKernelExecute 0*	_??"??S@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?|~!??!?'??3aA@)I?f??6??1R?9??<@:Preprocessing2U
Iterator::Model::ParallelMapV2aTR'????!N??No4@)aTR'????1N??No4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[4]::Concatenate[0]::TensorSlice??	??ϋ?!ET}&?.1@)??	??ϋ?1ET}&?.1@:Preprocessing2F
Iterator::Model???????!??Ɗk?@@)b?? ????1Q?2???)@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[4]::Concatenate?kC?8??!_A???8@)????9]v?1e??5??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensora2U0*?s?!?]E2}K@)a2U0*?s?1?]E2}K@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?an???!???:J?P@)?R\U?]q?1??E??u@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?::?Fv??!?"9?H?:@)??l??p_?1?	???l@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 3.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?25.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?{BQ???IA~? =@QA-O?M?Q@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???e??????e???!???e???      ??!       "	??/???9@??/???9@!??/???9@*      ??!       2	????s???????s???!????s???:	+?WY۴"@+?WY۴"@!+?WY۴"@B      ??!       J	?h o????h o???!?h o???R      ??!       Z	?h o????h o???!?h o???b      ??!       JGPUY?{BQ???b qA~? =@yA-O?M?Q@