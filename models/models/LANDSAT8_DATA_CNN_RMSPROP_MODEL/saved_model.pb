¦¦

Ð¦
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758éå

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

: @*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:@*
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@0* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@0*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:0*
dtype0
y
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	°@*
shared_namedense_7/kernel
r
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes
:	°@*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:@*
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:@*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

RMSprop/conv2d_4/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameRMSprop/conv2d_4/kernel/rms

/RMSprop/conv2d_4/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_4/kernel/rms*&
_output_shapes
: *
dtype0

RMSprop/conv2d_4/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameRMSprop/conv2d_4/bias/rms

-RMSprop/conv2d_4/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_4/bias/rms*
_output_shapes
: *
dtype0

RMSprop/dense_6/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*+
shared_nameRMSprop/dense_6/kernel/rms

.RMSprop/dense_6/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_6/kernel/rms*
_output_shapes

: @*
dtype0

RMSprop/dense_6/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameRMSprop/dense_6/bias/rms

,RMSprop/dense_6/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_6/bias/rms*
_output_shapes
:@*
dtype0

RMSprop/conv2d_5/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@0*,
shared_nameRMSprop/conv2d_5/kernel/rms

/RMSprop/conv2d_5/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_5/kernel/rms*&
_output_shapes
:@0*
dtype0

RMSprop/conv2d_5/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:0**
shared_nameRMSprop/conv2d_5/bias/rms

-RMSprop/conv2d_5/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_5/bias/rms*
_output_shapes
:0*
dtype0

RMSprop/dense_7/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	°@*+
shared_nameRMSprop/dense_7/kernel/rms

.RMSprop/dense_7/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_7/kernel/rms*
_output_shapes
:	°@*
dtype0

RMSprop/dense_7/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameRMSprop/dense_7/bias/rms

,RMSprop/dense_7/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_7/bias/rms*
_output_shapes
:@*
dtype0

RMSprop/dense_8/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*+
shared_nameRMSprop/dense_8/kernel/rms

.RMSprop/dense_8/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_8/kernel/rms*
_output_shapes

:@*
dtype0

RMSprop/dense_8/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameRMSprop/dense_8/bias/rms

,RMSprop/dense_8/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_8/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
õG
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*°G
value¦GB£G BG
Ã
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
¥
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'_random_generator
(__call__
*)&call_and_return_all_conditional_losses* 
¦

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses*
¥
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6_random_generator
7__call__
*8&call_and_return_all_conditional_losses* 

9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 
¦

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses*
¥
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K_random_generator
L__call__
*M&call_and_return_all_conditional_losses* 
¦

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses*
»
Viter
	Wdecay
Xlearning_rate
Ymomentum
Zrho
rms
rms
rms
rms
*rms
+rms
?rms
@rms 
Nrms¡
Orms¢*
J
0
1
2
3
*4
+5
?6
@7
N8
O9*
J
0
1
2
3
*4
+5
?6
@7
N8
O9*
* 
°
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

`serving_default* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
* 
* 
* 
* 
* 

knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
#	variables
$trainable_variables
%regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

*0
+1*

*0
+1*
* 

pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
2	variables
3trainable_variables
4regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
@1*

?0
@1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

N0
O1*

N0
O1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
* 
* 
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*

VARIABLE_VALUERMSprop/conv2d_4/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_4/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/dense_6/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUERMSprop/dense_6/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_5/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_5/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/dense_7/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUERMSprop/dense_7/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/dense_8/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUERMSprop/dense_8/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_conv2d_4_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ
ê
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_4_inputconv2d_4/kernelconv2d_4/biasdense_6/kerneldense_6/biasconv2d_5/kernelconv2d_5/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_233623
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/RMSprop/conv2d_4/kernel/rms/Read/ReadVariableOp-RMSprop/conv2d_4/bias/rms/Read/ReadVariableOp.RMSprop/dense_6/kernel/rms/Read/ReadVariableOp,RMSprop/dense_6/bias/rms/Read/ReadVariableOp/RMSprop/conv2d_5/kernel/rms/Read/ReadVariableOp-RMSprop/conv2d_5/bias/rms/Read/ReadVariableOp.RMSprop/dense_7/kernel/rms/Read/ReadVariableOp,RMSprop/dense_7/bias/rms/Read/ReadVariableOp.RMSprop/dense_8/kernel/rms/Read/ReadVariableOp,RMSprop/dense_8/bias/rms/Read/ReadVariableOpConst**
Tin#
!2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_233945
Õ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/biasdense_6/kerneldense_6/biasconv2d_5/kernelconv2d_5/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/conv2d_4/kernel/rmsRMSprop/conv2d_4/bias/rmsRMSprop/dense_6/kernel/rmsRMSprop/dense_6/bias/rmsRMSprop/conv2d_5/kernel/rmsRMSprop/conv2d_5/bias/rmsRMSprop/dense_7/kernel/rmsRMSprop/dense_7/bias/rmsRMSprop/dense_8/kernel/rmsRMSprop/dense_8/bias/rms*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_234042þÎ
Ã

(__inference_dense_8_layer_call_fn_233824

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_233062o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¼+
Ô
H__inference_sequential_3_layer_call_and_return_conditional_losses_233277

inputs)
conv2d_4_233247: 
conv2d_4_233249:  
dense_6_233252: @
dense_6_233254:@)
conv2d_5_233258:@0
conv2d_5_233260:0!
dense_7_233265:	°@
dense_7_233267:@ 
dense_8_233271:@
dense_8_233273:
identity¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢dense_8/StatefulPartitionedCall¢!dropout_6/StatefulPartitionedCall¢!dropout_7/StatefulPartitionedCall¢!dropout_8/StatefulPartitionedCallû
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_233247conv2d_4_233249*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_232945
dense_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0dense_6_233252dense_6_233254*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_232982÷
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_233194
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_5_233258conv2d_5_233260*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_233006
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_233161â
flatten_2/PartitionedCallPartitionedCall*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_233025
dense_7/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_7_233265dense_7_233267*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_233038
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_233122
dense_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0dense_8_233271dense_8_233273*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_233062w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_233194

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¾


-__inference_sequential_3_layer_call_fn_233447

inputs!
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@#
	unknown_3:@0
	unknown_4:0
	unknown_5:	°@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_233277o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦H

H__inference_sequential_3_layer_call_and_return_conditional_losses_233511

inputsA
'conv2d_4_conv2d_readvariableop_resource: 6
(conv2d_4_biasadd_readvariableop_resource: ;
)dense_6_tensordot_readvariableop_resource: @5
'dense_6_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@06
(conv2d_5_biasadd_readvariableop_resource:09
&dense_7_matmul_readvariableop_resource:	°@5
'dense_7_biasadd_readvariableop_resource:@8
&dense_8_matmul_readvariableop_resource:@5
'dense_8_biasadd_readvariableop_resource:
identity¢conv2d_4/BiasAdd/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢dense_6/BiasAdd/ReadVariableOp¢ dense_6/Tensordot/ReadVariableOp¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢dense_8/BiasAdd/ReadVariableOp¢dense_8/MatMul/ReadVariableOp
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¬
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          b
dense_6/Tensordot/ShapeShapeconv2d_4/Relu:activations:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¢
dense_6/Tensordot/transpose	Transposeconv2d_4/Relu:activations:0!dense_6/Tensordot/concat:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
dropout_6/IdentityIdentitydense_6/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@0*
dtype0Á
conv2d_5/Conv2DConv2Ddropout_6/Identity:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0u
dropout_7/IdentityIdentityconv2d_5/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ°  
flatten_2/ReshapeReshapedropout_7/Identity:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	°@*
dtype0
dense_7/MatMulMatMulflatten_2/Reshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
dropout_8/IdentityIdentitydense_7/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_8/MatMulMatMuldropout_8/Identity:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_8/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_5_layer_call_and_return_conditional_losses_233006

inputs8
conv2d_readvariableop_resource:@0-
biasadd_readvariableop_resource:0
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@0*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

c
*__inference_dropout_6_layer_call_fn_233693

inputs
identity¢StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_233194w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¾


-__inference_sequential_3_layer_call_fn_233422

inputs!
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@#
	unknown_3:@0
	unknown_4:0
	unknown_5:	°@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_233069o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_233757

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Ô+
Ü
H__inference_sequential_3_layer_call_and_return_conditional_losses_233391
conv2d_4_input)
conv2d_4_233361: 
conv2d_4_233363:  
dense_6_233366: @
dense_6_233368:@)
conv2d_5_233372:@0
conv2d_5_233374:0!
dense_7_233379:	°@
dense_7_233381:@ 
dense_8_233385:@
dense_8_233387:
identity¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢dense_8/StatefulPartitionedCall¢!dropout_6/StatefulPartitionedCall¢!dropout_7/StatefulPartitionedCall¢!dropout_8/StatefulPartitionedCall
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputconv2d_4_233361conv2d_4_233363*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_232945
dense_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0dense_6_233366dense_6_233368*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_232982÷
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_233194
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_5_233372conv2d_5_233374*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_233006
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_233161â
flatten_2/PartitionedCallPartitionedCall*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_233025
dense_7/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_7_233379dense_7_233381*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_233038
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_233122
dense_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0dense_8_233385dense_8_233387*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_233062w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_4_input
Å?

__inference__traced_save_233945
file_prefix.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_rmsprop_conv2d_4_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv2d_4_bias_rms_read_readvariableop9
5savev2_rmsprop_dense_6_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_6_bias_rms_read_readvariableop:
6savev2_rmsprop_conv2d_5_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv2d_5_bias_rms_read_readvariableop9
5savev2_rmsprop_dense_7_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_7_bias_rms_read_readvariableop9
5savev2_rmsprop_dense_8_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_8_bias_rms_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¾
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ç
valueÝBÚB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH©
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B û
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_rmsprop_conv2d_4_kernel_rms_read_readvariableop4savev2_rmsprop_conv2d_4_bias_rms_read_readvariableop5savev2_rmsprop_dense_6_kernel_rms_read_readvariableop3savev2_rmsprop_dense_6_bias_rms_read_readvariableop6savev2_rmsprop_conv2d_5_kernel_rms_read_readvariableop4savev2_rmsprop_conv2d_5_bias_rms_read_readvariableop5savev2_rmsprop_dense_7_kernel_rms_read_readvariableop3savev2_rmsprop_dense_7_bias_rms_read_readvariableop5savev2_rmsprop_dense_8_kernel_rms_read_readvariableop3savev2_rmsprop_dense_8_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*í
_input_shapesÛ
Ø: : : : @:@:@0:0:	°@:@:@:: : : : : : : : : : : : @:@:@0:0:	°@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:,(
&
_output_shapes
:@0: 

_output_shapes
:0:%!

_output_shapes
:	°@: 

_output_shapes
:@:$	 

_output_shapes

:@: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:,(
&
_output_shapes
:@0: 

_output_shapes
:0:%!

_output_shapes
:	°@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 

c
*__inference_dropout_7_layer_call_fn_233740

inputs
identity¢StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_233161w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Æ

(__inference_dense_7_layer_call_fn_233777

inputs
unknown:	°@
	unknown_0:@
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_233038o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ°: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_233049

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ô
C__inference_dense_8_layer_call_and_return_conditional_losses_233062

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ø
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_233698

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Â
F
*__inference_dropout_7_layer_call_fn_233735

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_233017h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Â
F
*__inference_dropout_6_layer_call_fn_233688

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_232993h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ô
C__inference_dense_8_layer_call_and_return_conditional_losses_233835

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
í

)__inference_conv2d_4_layer_call_fn_233632

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_232945w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
'
ð
H__inference_sequential_3_layer_call_and_return_conditional_losses_233358
conv2d_4_input)
conv2d_4_233328: 
conv2d_4_233330:  
dense_6_233333: @
dense_6_233335:@)
conv2d_5_233339:@0
conv2d_5_233341:0!
dense_7_233346:	°@
dense_7_233348:@ 
dense_8_233352:@
dense_8_233354:
identity¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢dense_8/StatefulPartitionedCall
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputconv2d_4_233328conv2d_4_233330*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_232945
dense_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0dense_6_233333dense_6_233335*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_232982ç
dropout_6/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_232993
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_5_233339conv2d_5_233341*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_233006è
dropout_7/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_233017Ú
flatten_2/PartitionedCallPartitionedCall"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_233025
dense_7/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_7_233346dense_7_233348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_233038ß
dropout_8/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_233049
dense_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0dense_8_233352dense_8_233354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_233062w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_4_input
ó	
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_233122

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ü&
è
H__inference_sequential_3_layer_call_and_return_conditional_losses_233069

inputs)
conv2d_4_232946: 
conv2d_4_232948:  
dense_6_232983: @
dense_6_232985:@)
conv2d_5_233007:@0
conv2d_5_233009:0!
dense_7_233039:	°@
dense_7_233041:@ 
dense_8_233063:@
dense_8_233065:
identity¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢dense_8/StatefulPartitionedCallû
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_232946conv2d_4_232948*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_232945
dense_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0dense_6_232983dense_6_232985*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_232982ç
dropout_6/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_232993
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_5_233007conv2d_5_233009*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_233006è
dropout_7/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_233017Ú
flatten_2/PartitionedCallPartitionedCall"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_233025
dense_7/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_7_233039dense_7_233041*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_233038ß
dropout_8/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_233049
dense_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0dense_8_233063dense_8_233065*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_233062w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö


-__inference_sequential_3_layer_call_fn_233325
conv2d_4_input!
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@#
	unknown_3:@0
	unknown_4:0
	unknown_5:	°@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_233277o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_4_input
ø
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_233745

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Ö


-__inference_sequential_3_layer_call_fn_233092
conv2d_4_input!
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@#
	unknown_3:@0
	unknown_4:0
	unknown_5:	°@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_233069o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_4_input

ý
D__inference_conv2d_4_layer_call_and_return_conditional_losses_232945

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


õ
C__inference_dense_7_layer_call_and_return_conditional_losses_233788

inputs1
matmul_readvariableop_resource:	°@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	°@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ°: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
 
_user_specified_nameinputs
ø
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_232993

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
í

)__inference_conv2d_5_layer_call_fn_233719

inputs!
unknown:@0
	unknown_0:0
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_233006w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ã

(__inference_dense_6_layer_call_fn_233652

inputs
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_232982w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ät
Î
"__inference__traced_restore_234042
file_prefix:
 assignvariableop_conv2d_4_kernel: .
 assignvariableop_1_conv2d_4_bias: 3
!assignvariableop_2_dense_6_kernel: @-
assignvariableop_3_dense_6_bias:@<
"assignvariableop_4_conv2d_5_kernel:@0.
 assignvariableop_5_conv2d_5_bias:04
!assignvariableop_6_dense_7_kernel:	°@-
assignvariableop_7_dense_7_bias:@3
!assignvariableop_8_dense_8_kernel:@-
assignvariableop_9_dense_8_bias:*
 assignvariableop_10_rmsprop_iter:	 +
!assignvariableop_11_rmsprop_decay: 3
)assignvariableop_12_rmsprop_learning_rate: .
$assignvariableop_13_rmsprop_momentum: )
assignvariableop_14_rmsprop_rho: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: I
/assignvariableop_19_rmsprop_conv2d_4_kernel_rms: ;
-assignvariableop_20_rmsprop_conv2d_4_bias_rms: @
.assignvariableop_21_rmsprop_dense_6_kernel_rms: @:
,assignvariableop_22_rmsprop_dense_6_bias_rms:@I
/assignvariableop_23_rmsprop_conv2d_5_kernel_rms:@0;
-assignvariableop_24_rmsprop_conv2d_5_bias_rms:0A
.assignvariableop_25_rmsprop_dense_7_kernel_rms:	°@:
,assignvariableop_26_rmsprop_dense_7_bias_rms:@@
.assignvariableop_27_rmsprop_dense_8_kernel_rms:@:
,assignvariableop_28_rmsprop_dense_8_bias_rms:
identity_30¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Á
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ç
valueÝBÚB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B µ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_conv2d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_7_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_7_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_8_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_8_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOp assignvariableop_10_rmsprop_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_rmsprop_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp)assignvariableop_12_rmsprop_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp$assignvariableop_13_rmsprop_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_rmsprop_rhoIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_19AssignVariableOp/assignvariableop_19_rmsprop_conv2d_4_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp-assignvariableop_20_rmsprop_conv2d_4_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp.assignvariableop_21_rmsprop_dense_6_kernel_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp,assignvariableop_22_rmsprop_dense_6_bias_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_23AssignVariableOp/assignvariableop_23_rmsprop_conv2d_5_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp-assignvariableop_24_rmsprop_conv2d_5_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp.assignvariableop_25_rmsprop_dense_7_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp,assignvariableop_26_rmsprop_dense_7_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp.assignvariableop_27_rmsprop_dense_8_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp,assignvariableop_28_rmsprop_dense_8_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Í
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: º
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
´
F
*__inference_flatten_2_layer_call_fn_233762

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_233025a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs


õ
C__inference_dense_7_layer_call_and_return_conditional_losses_233038

inputs1
matmul_readvariableop_resource:	°@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	°@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ°: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
 
_user_specified_nameinputs
ô
c
*__inference_dropout_8_layer_call_fn_233798

inputs
identity¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_233122o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ç
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_233025

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ°  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
ÿX
å	
!__inference__wrapped_model_232927
conv2d_4_inputN
4sequential_3_conv2d_4_conv2d_readvariableop_resource: C
5sequential_3_conv2d_4_biasadd_readvariableop_resource: H
6sequential_3_dense_6_tensordot_readvariableop_resource: @B
4sequential_3_dense_6_biasadd_readvariableop_resource:@N
4sequential_3_conv2d_5_conv2d_readvariableop_resource:@0C
5sequential_3_conv2d_5_biasadd_readvariableop_resource:0F
3sequential_3_dense_7_matmul_readvariableop_resource:	°@B
4sequential_3_dense_7_biasadd_readvariableop_resource:@E
3sequential_3_dense_8_matmul_readvariableop_resource:@B
4sequential_3_dense_8_biasadd_readvariableop_resource:
identity¢,sequential_3/conv2d_4/BiasAdd/ReadVariableOp¢+sequential_3/conv2d_4/Conv2D/ReadVariableOp¢,sequential_3/conv2d_5/BiasAdd/ReadVariableOp¢+sequential_3/conv2d_5/Conv2D/ReadVariableOp¢+sequential_3/dense_6/BiasAdd/ReadVariableOp¢-sequential_3/dense_6/Tensordot/ReadVariableOp¢+sequential_3/dense_7/BiasAdd/ReadVariableOp¢*sequential_3/dense_7/MatMul/ReadVariableOp¢+sequential_3/dense_8/BiasAdd/ReadVariableOp¢*sequential_3/dense_8/MatMul/ReadVariableOp¨
+sequential_3/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Î
sequential_3/conv2d_4/Conv2DConv2Dconv2d_4_input3sequential_3/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

,sequential_3/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¿
sequential_3/conv2d_4/BiasAddBiasAdd%sequential_3/conv2d_4/Conv2D:output:04sequential_3/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_3/conv2d_4/ReluRelu&sequential_3/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¤
-sequential_3/dense_6/Tensordot/ReadVariableOpReadVariableOp6sequential_3_dense_6_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype0m
#sequential_3/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
#sequential_3/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          |
$sequential_3/dense_6/Tensordot/ShapeShape(sequential_3/conv2d_4/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_3/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_3/dense_6/Tensordot/GatherV2GatherV2-sequential_3/dense_6/Tensordot/Shape:output:0,sequential_3/dense_6/Tensordot/free:output:05sequential_3/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_3/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_3/dense_6/Tensordot/GatherV2_1GatherV2-sequential_3/dense_6/Tensordot/Shape:output:0,sequential_3/dense_6/Tensordot/axes:output:07sequential_3/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_3/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_3/dense_6/Tensordot/ProdProd0sequential_3/dense_6/Tensordot/GatherV2:output:0-sequential_3/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_3/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_3/dense_6/Tensordot/Prod_1Prod2sequential_3/dense_6/Tensordot/GatherV2_1:output:0/sequential_3/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_3/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_3/dense_6/Tensordot/concatConcatV2,sequential_3/dense_6/Tensordot/free:output:0,sequential_3/dense_6/Tensordot/axes:output:03sequential_3/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_3/dense_6/Tensordot/stackPack,sequential_3/dense_6/Tensordot/Prod:output:0.sequential_3/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:É
(sequential_3/dense_6/Tensordot/transpose	Transpose(sequential_3/conv2d_4/Relu:activations:0.sequential_3/dense_6/Tensordot/concat:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
&sequential_3/dense_6/Tensordot/ReshapeReshape,sequential_3/dense_6/Tensordot/transpose:y:0-sequential_3/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_3/dense_6/Tensordot/MatMulMatMul/sequential_3/dense_6/Tensordot/Reshape:output:05sequential_3/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
&sequential_3/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@n
,sequential_3/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_3/dense_6/Tensordot/concat_1ConcatV20sequential_3/dense_6/Tensordot/GatherV2:output:0/sequential_3/dense_6/Tensordot/Const_2:output:05sequential_3/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Æ
sequential_3/dense_6/TensordotReshape/sequential_3/dense_6/Tensordot/MatMul:product:00sequential_3/dense_6/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+sequential_3/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¿
sequential_3/dense_6/BiasAddBiasAdd'sequential_3/dense_6/Tensordot:output:03sequential_3/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_3/dense_6/ReluRelu%sequential_3/dense_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_3/dropout_6/IdentityIdentity'sequential_3/dense_6/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
+sequential_3/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@0*
dtype0è
sequential_3/conv2d_5/Conv2DConv2D(sequential_3/dropout_6/Identity:output:03sequential_3/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*
paddingVALID*
strides

,sequential_3/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0¿
sequential_3/conv2d_5/BiasAddBiasAdd%sequential_3/conv2d_5/Conv2D:output:04sequential_3/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
sequential_3/conv2d_5/ReluRelu&sequential_3/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
sequential_3/dropout_7/IdentityIdentity(sequential_3/conv2d_5/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0m
sequential_3/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ°  ­
sequential_3/flatten_2/ReshapeReshape(sequential_3/dropout_7/Identity:output:0%sequential_3/flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
*sequential_3/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_7_matmul_readvariableop_resource*
_output_shapes
:	°@*
dtype0´
sequential_3/dense_7/MatMulMatMul'sequential_3/flatten_2/Reshape:output:02sequential_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+sequential_3/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0µ
sequential_3/dense_7/BiasAddBiasAdd%sequential_3/dense_7/MatMul:product:03sequential_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
sequential_3/dense_7/ReluRelu%sequential_3/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_3/dropout_8/IdentityIdentity'sequential_3/dense_7/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*sequential_3/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_8_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0µ
sequential_3/dense_8/MatMulMatMul(sequential_3/dropout_8/Identity:output:02sequential_3/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_3/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_3/dense_8/BiasAddBiasAdd%sequential_3/dense_8/MatMul:product:03sequential_3/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/dense_8/SoftmaxSoftmax%sequential_3/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
IdentityIdentity&sequential_3/dense_8/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp-^sequential_3/conv2d_4/BiasAdd/ReadVariableOp,^sequential_3/conv2d_4/Conv2D/ReadVariableOp-^sequential_3/conv2d_5/BiasAdd/ReadVariableOp,^sequential_3/conv2d_5/Conv2D/ReadVariableOp,^sequential_3/dense_6/BiasAdd/ReadVariableOp.^sequential_3/dense_6/Tensordot/ReadVariableOp,^sequential_3/dense_7/BiasAdd/ReadVariableOp+^sequential_3/dense_7/MatMul/ReadVariableOp,^sequential_3/dense_8/BiasAdd/ReadVariableOp+^sequential_3/dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2\
,sequential_3/conv2d_4/BiasAdd/ReadVariableOp,sequential_3/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_4/Conv2D/ReadVariableOp+sequential_3/conv2d_4/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_5/BiasAdd/ReadVariableOp,sequential_3/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_5/Conv2D/ReadVariableOp+sequential_3/conv2d_5/Conv2D/ReadVariableOp2Z
+sequential_3/dense_6/BiasAdd/ReadVariableOp+sequential_3/dense_6/BiasAdd/ReadVariableOp2^
-sequential_3/dense_6/Tensordot/ReadVariableOp-sequential_3/dense_6/Tensordot/ReadVariableOp2Z
+sequential_3/dense_7/BiasAdd/ReadVariableOp+sequential_3/dense_7/BiasAdd/ReadVariableOp2X
*sequential_3/dense_7/MatMul/ReadVariableOp*sequential_3/dense_7/MatMul/ReadVariableOp2Z
+sequential_3/dense_8/BiasAdd/ReadVariableOp+sequential_3/dense_8/BiasAdd/ReadVariableOp2X
*sequential_3/dense_8/MatMul/ReadVariableOp*sequential_3/dense_8/MatMul/ReadVariableOp:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_4_input
ø
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_233017

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Ã
ú
C__inference_dense_6_layer_call_and_return_conditional_losses_233683

inputs3
!tensordot_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: @*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:}
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¦


$__inference_signature_wrapper_233623
conv2d_4_input!
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@#
	unknown_3:@0
	unknown_4:0
	unknown_5:	°@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_232927o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_4_input
ó	
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_233815

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
³

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_233710

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¢
F
*__inference_dropout_8_layer_call_fn_233793

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_233049`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_233803

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

ý
D__inference_conv2d_5_layer_call_and_return_conditional_losses_233730

inputs8
conv2d_readvariableop_resource:@0-
biasadd_readvariableop_resource:0
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@0*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
°_

H__inference_sequential_3_layer_call_and_return_conditional_losses_233596

inputsA
'conv2d_4_conv2d_readvariableop_resource: 6
(conv2d_4_biasadd_readvariableop_resource: ;
)dense_6_tensordot_readvariableop_resource: @5
'dense_6_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@06
(conv2d_5_biasadd_readvariableop_resource:09
&dense_7_matmul_readvariableop_resource:	°@5
'dense_7_biasadd_readvariableop_resource:@8
&dense_8_matmul_readvariableop_resource:@5
'dense_8_biasadd_readvariableop_resource:
identity¢conv2d_4/BiasAdd/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢dense_6/BiasAdd/ReadVariableOp¢ dense_6/Tensordot/ReadVariableOp¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢dense_8/BiasAdd/ReadVariableOp¢dense_8/MatMul/ReadVariableOp
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¬
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          b
dense_6/Tensordot/ShapeShapeconv2d_4/Relu:activations:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¢
dense_6/Tensordot/transpose	Transposeconv2d_4/Relu:activations:0!dense_6/Tensordot/concat:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_6/dropout/MulMuldense_6/Relu:activations:0 dropout_6/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
dropout_6/dropout/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:¨
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ì
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@0*
dtype0Á
conv2d_5/Conv2DConv2Ddropout_6/dropout/Mul_1:z:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_7/dropout/MulMulconv2d_5/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0b
dropout_7/dropout/ShapeShapeconv2d_5/Relu:activations:0*
T0*
_output_shapes
:¨
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ì
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ°  
flatten_2/ReshapeReshapedropout_7/dropout/Mul_1:z:0flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	°@*
dtype0
dense_7/MatMulMatMulflatten_2/Reshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_8/dropout/MulMuldense_7/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
dropout_8/dropout/ShapeShapedense_7/Relu:activations:0*
T0*
_output_shapes
: 
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ä
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_8/MatMulMatMuldropout_8/dropout/Mul_1:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_8/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_4_layer_call_and_return_conditional_losses_233643

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_233161

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Ã
ú
C__inference_dense_6_layer_call_and_return_conditional_losses_232982

inputs3
!tensordot_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: @*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:}
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ç
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_233768

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ°  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*À
serving_default¬
Q
conv2d_4_input?
 serving_default_conv2d_4_input:0ÿÿÿÿÿÿÿÿÿ;
dense_80
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ð§
Ý
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'_random_generator
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
»

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6_random_generator
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
»

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K_random_generator
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
Viter
	Wdecay
Xlearning_rate
Ymomentum
Zrho
rms
rms
rms
rms
*rms
+rms
?rms
@rms 
Nrms¡
Orms¢"
	optimizer
f
0
1
2
3
*4
+5
?6
@7
N8
O9"
trackable_list_wrapper
f
0
1
2
3
*4
+5
?6
@7
N8
O9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_3_layer_call_fn_233092
-__inference_sequential_3_layer_call_fn_233422
-__inference_sequential_3_layer_call_fn_233447
-__inference_sequential_3_layer_call_fn_233325À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_3_layer_call_and_return_conditional_losses_233511
H__inference_sequential_3_layer_call_and_return_conditional_losses_233596
H__inference_sequential_3_layer_call_and_return_conditional_losses_233358
H__inference_sequential_3_layer_call_and_return_conditional_losses_233391À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÓBÐ
!__inference__wrapped_model_232927conv2d_4_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
`serving_default"
signature_map
):' 2conv2d_4/kernel
: 2conv2d_4/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_4_layer_call_fn_233632¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_4_layer_call_and_return_conditional_losses_233643¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 : @2dense_6/kernel
:@2dense_6/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_6_layer_call_fn_233652¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_6_layer_call_and_return_conditional_losses_233683¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
#	variables
$trainable_variables
%regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_6_layer_call_fn_233688
*__inference_dropout_6_layer_call_fn_233693´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_6_layer_call_and_return_conditional_losses_233698
E__inference_dropout_6_layer_call_and_return_conditional_losses_233710´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
):'@02conv2d_5/kernel
:02conv2d_5/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_5_layer_call_fn_233719¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_5_layer_call_and_return_conditional_losses_233730¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
2	variables
3trainable_variables
4regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_7_layer_call_fn_233735
*__inference_dropout_7_layer_call_fn_233740´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_7_layer_call_and_return_conditional_losses_233745
E__inference_dropout_7_layer_call_and_return_conditional_losses_233757´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_flatten_2_layer_call_fn_233762¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_flatten_2_layer_call_and_return_conditional_losses_233768¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
!:	°@2dense_7/kernel
:@2dense_7/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
±
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_7_layer_call_fn_233777¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_7_layer_call_and_return_conditional_losses_233788¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_8_layer_call_fn_233793
*__inference_dropout_8_layer_call_fn_233798´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_8_layer_call_and_return_conditional_losses_233803
E__inference_dropout_8_layer_call_and_return_conditional_losses_233815´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 :@2dense_8/kernel
:2dense_8/bias
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_8_layer_call_fn_233824¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_8_layer_call_and_return_conditional_losses_233835¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÒBÏ
$__inference_signature_wrapper_233623conv2d_4_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
3:1 2RMSprop/conv2d_4/kernel/rms
%:# 2RMSprop/conv2d_4/bias/rms
*:( @2RMSprop/dense_6/kernel/rms
$:"@2RMSprop/dense_6/bias/rms
3:1@02RMSprop/conv2d_5/kernel/rms
%:#02RMSprop/conv2d_5/bias/rms
+:)	°@2RMSprop/dense_7/kernel/rms
$:"@2RMSprop/dense_7/bias/rms
*:(@2RMSprop/dense_8/kernel/rms
$:"2RMSprop/dense_8/bias/rms¦
!__inference__wrapped_model_232927
*+?@NO?¢<
5¢2
0-
conv2d_4_inputÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_8!
dense_8ÿÿÿÿÿÿÿÿÿ´
D__inference_conv2d_4_layer_call_and_return_conditional_losses_233643l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ 
 
)__inference_conv2d_4_layer_call_fn_233632_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ ´
D__inference_conv2d_5_layer_call_and_return_conditional_losses_233730l*+7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ0
 
)__inference_conv2d_5_layer_call_fn_233719_*+7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ0³
C__inference_dense_6_layer_call_and_return_conditional_losses_233683l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
(__inference_dense_6_layer_call_fn_233652_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª " ÿÿÿÿÿÿÿÿÿ@¤
C__inference_dense_7_layer_call_and_return_conditional_losses_233788]?@0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ°
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 |
(__inference_dense_7_layer_call_fn_233777P?@0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ°
ª "ÿÿÿÿÿÿÿÿÿ@£
C__inference_dense_8_layer_call_and_return_conditional_losses_233835\NO/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_dense_8_layer_call_fn_233824ONO/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿµ
E__inference_dropout_6_layer_call_and_return_conditional_losses_233698l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 µ
E__inference_dropout_6_layer_call_and_return_conditional_losses_233710l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
*__inference_dropout_6_layer_call_fn_233688_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª " ÿÿÿÿÿÿÿÿÿ@
*__inference_dropout_6_layer_call_fn_233693_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p
ª " ÿÿÿÿÿÿÿÿÿ@µ
E__inference_dropout_7_layer_call_and_return_conditional_losses_233745l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ0
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ0
 µ
E__inference_dropout_7_layer_call_and_return_conditional_losses_233757l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ0
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ0
 
*__inference_dropout_7_layer_call_fn_233735_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ0
p 
ª " ÿÿÿÿÿÿÿÿÿ0
*__inference_dropout_7_layer_call_fn_233740_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ0
p
ª " ÿÿÿÿÿÿÿÿÿ0¥
E__inference_dropout_8_layer_call_and_return_conditional_losses_233803\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¥
E__inference_dropout_8_layer_call_and_return_conditional_losses_233815\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dropout_8_layer_call_fn_233793O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@}
*__inference_dropout_8_layer_call_fn_233798O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@ª
E__inference_flatten_2_layer_call_and_return_conditional_losses_233768a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ0
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ°
 
*__inference_flatten_2_layer_call_fn_233762T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ0
ª "ÿÿÿÿÿÿÿÿÿ°È
H__inference_sequential_3_layer_call_and_return_conditional_losses_233358|
*+?@NOG¢D
=¢:
0-
conv2d_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 È
H__inference_sequential_3_layer_call_and_return_conditional_losses_233391|
*+?@NOG¢D
=¢:
0-
conv2d_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_sequential_3_layer_call_and_return_conditional_losses_233511t
*+?@NO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_sequential_3_layer_call_and_return_conditional_losses_233596t
*+?@NO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
  
-__inference_sequential_3_layer_call_fn_233092o
*+?@NOG¢D
=¢:
0-
conv2d_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
-__inference_sequential_3_layer_call_fn_233325o
*+?@NOG¢D
=¢:
0-
conv2d_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_3_layer_call_fn_233422g
*+?@NO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_3_layer_call_fn_233447g
*+?@NO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ»
$__inference_signature_wrapper_233623
*+?@NOQ¢N
¢ 
GªD
B
conv2d_4_input0-
conv2d_4_inputÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_8!
dense_8ÿÿÿÿÿÿÿÿÿ