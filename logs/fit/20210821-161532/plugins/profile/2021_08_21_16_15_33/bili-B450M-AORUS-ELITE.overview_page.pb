?	Y??????Y??????!Y??????      ??!       "_
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsY??????1;??u?+??I<?2T????r0:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"B67.6 % of the total step time sampled is spent on 'Kernel Launch'.*noIF??C?P@Qu7??x9@@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
      ??!             ??!       "	;??u?+??;??u?+??!;??u?+??*      ??!       2      ??!       :	<?2T????<?2T????!<?2T????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qF??C?P@yu7??x9@@?".
metrics/acc/ArgMaxArgMax??*R??!??*R??"0
metrics/acc/ArgMax_1ArgMax???.qh??!?&[1C??">
!_arg_dense_4_target_0_1/_83:_RecvUnknown?љtXU??!??,x?X??"7
_arg_input_1_0_0/_85:_RecvUnknownl?ȑ???!?Z,????"*
dense/MatMulMatMul??>3???!.5??????0",
dense_4/MatMulMatMuli?$?+h??!%?v?\???0"Z
<training/Adam/gradients/gradients/dense_4/MatMul_grad/MatMulMatMul?ȱp%??!????^[??0"Z
>training/Adam/gradients/gradients/dense_4/MatMul_grad/MatMul_1MatMul?ȱp%??!9??Da???"_
8training/Adam/Adam/update_dense/kernel/ResourceApplyAdamResourceApplyAdam@M?Q"???!??i?z??",
dense_1/MatMulMatMul??>3???!+,?\%???0Q      Y@Y?????? @a?????zX@"?	
device?Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
highB67.6 % of the total step time sampled is spent on 'Kernel Launch'.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 