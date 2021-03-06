?	?N????A@?N????A@!?N????A@	 ?9?Ss?? ?9?Ss??! ?9?Ss??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?N????A@V-?(s??1?`????9@AB`??"ۙ?I"?D??@Y?x#????rEagerKernelExecute 0*	??x?&?V@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatF;?I??!,?	A@)Q?????1?'='??;@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[4]::Concatenate[0]::TensorSlice???Δ?!?bB<??6@)???Δ?1?bB<??6@:Preprocessing2U
Iterator::Model::ParallelMapV2?????!?? ?{?1@)?????1?? ?{?1@:Preprocessing2F
Iterator::Model???B??!?JǠ%}=@)t?p??[??1ޛ??S'@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?+e?Xw?!B?l+B@)?+e?Xw?1B?l+B@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[4]::Concatenatec???&???!6_q?<@)I?2??v?1???xK?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?PlMK??![-Η??Q@)#??t?1D?(??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???ʦ??!??c ?>@)?????`?1"6DEjX@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 4.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?21.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9 ?9?Ss??I???A?g:@Q)!AR@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	V-?(s??V-?(s??!V-?(s??      ??!       "	?`????9@?`????9@!?`????9@*      ??!       2	B`??"ۙ?B`??"ۙ?!B`??"ۙ?:	"?D??@"?D??@!"?D??@B      ??!       J	?x#?????x#????!?x#????R      ??!       Z	?x#?????x#????!?x#????b      ??!       JGPUY ?9?Ss??b q???A?g:@y)!AR@?"P
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop?HWa????!?HWa????0"&
CudnnRNNCudnnRNN?'l`??!?\Zdw??"(
gradients/AddNAddN!8??|nu?!??]????"C
$gradients/transpose_9_grad/transpose	Transpose? v?9q?!B??????"*
transpose_9	Transpose;?I?/q?!RX#1,???"*
transpose_0	Transposeh???E?b?!7w????"A
"gradients/transpose_grad/transpose	Transpose????_?!??Ɨ??"S
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad??^???]?!??ձ???";
gradients/split_2_grad/concatConcatV2?a??}X?!???p?#??"O
3gradient_tape/model/time_distributed/dense/MatMul_1MatMul?????!T?!??g?-??Q      Y@Y?F?????as??8??X@q???I?@y}??<??"?

both?Your program is POTENTIALLY input-bound because 4.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?21.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 