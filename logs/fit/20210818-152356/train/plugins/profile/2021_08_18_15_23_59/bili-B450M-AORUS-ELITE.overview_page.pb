?	?\??SB@?\??SB@!?\??SB@	?{BQ????{BQ???!?{BQ???"?
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
	???e??????e???!???e???      ??!       "	??/???9@??/???9@!??/???9@*      ??!       2	????s???????s???!????s???:	+?WY۴"@+?WY۴"@!+?WY۴"@B      ??!       J	?h o????h o???!?h o???R      ??!       Z	?h o????h o???!?h o???b      ??!       JGPUY?{BQ???b qA~? =@yA-O?M?Q@?"P
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop???Ꜻ??!???Ꜻ??0"&
CudnnRNNCudnnRNN4??????!?!?Gބ??"(
gradients/AddNAddN?@I?u?!ȡY????"*
transpose_9	Transpose??5???p?!?P?C???"C
$gradients/transpose_9_grad/transpose	Transpose?>?\ip?!#*?G???"*
transpose_0	Transpose????2b?!???9I??"S
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGradԠ???2_?!?4?????"A
"gradients/transpose_grad/transpose	TransposeԠ???2_?!?|g?{"??";
gradients/split_2_grad/concatConcatV2;??.2YY?!?~?(/??"O
3gradient_tape/model/time_distributed/dense/MatMul_1MatMul{??&T?!?S?;9??Q      Y@Y???Cӏ??a??xY??X@q?c??b@y??_????"?

both?Your program is POTENTIALLY input-bound because 3.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?25.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 