?	?uS?k@?uS?k@!?uS?k@	du?
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
Γ?m3@?""
ArgMaxArgMaxg?t?Ʋ??!g?t?Ʋ??"$
ArgMax_1ArgMax?
?4l??!?Io?p???"-
IteratorGetNext/_3_Send???%M??!?-??C???"-
IteratorGetNext/_1_Send?Ξ?m??!?oИ?7??"0
model/dense/MatMulMatMul?V????!?2;?????0"2
model/dense_4/MatMulMatMul?rG?;U??!?_FN??0"@
$gradient_tape/model/dense_4/MatMul_1MatMulZB.?J'??!)?2?u???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam(?Y???!L߳?p??"@
"gradient_tape/model/dense_4/MatMulMatMul(?Y???!n05-????0"K
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdamı?x???!?[?x)??Q      Y@Y?/??0@a4??}?T@q?{B\'#@ysں/C>??"?

both?Your program is POTENTIALLY input-bound because 32.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?43.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 