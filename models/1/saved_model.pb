дь
КЏ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
Т
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
Њ
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
executor_typestring И
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718КЗ
Д
conv2d_89/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_89/kernel
}
$conv2d_89/kernel/Read/ReadVariableOpReadVariableOpconv2d_89/kernel*&
_output_shapes
: *
dtype0
t
conv2d_89/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_89/bias
m
"conv2d_89/bias/Read/ReadVariableOpReadVariableOpconv2d_89/bias*
_output_shapes
: *
dtype0
Д
conv2d_90/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_90/kernel
}
$conv2d_90/kernel/Read/ReadVariableOpReadVariableOpconv2d_90/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_90/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_90/bias
m
"conv2d_90/bias/Read/ReadVariableOpReadVariableOpconv2d_90/bias*
_output_shapes
:@*
dtype0
Д
conv2d_91/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_91/kernel
}
$conv2d_91/kernel/Read/ReadVariableOpReadVariableOpconv2d_91/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_91/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_91/bias
m
"conv2d_91/bias/Read/ReadVariableOpReadVariableOpconv2d_91/bias*
_output_shapes
:@*
dtype0
Д
conv2d_92/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_92/kernel
}
$conv2d_92/kernel/Read/ReadVariableOpReadVariableOpconv2d_92/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_92/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_92/bias
m
"conv2d_92/bias/Read/ReadVariableOpReadVariableOpconv2d_92/bias*
_output_shapes
:@*
dtype0
Д
conv2d_93/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_93/kernel
}
$conv2d_93/kernel/Read/ReadVariableOpReadVariableOpconv2d_93/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_93/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_93/bias
m
"conv2d_93/bias/Read/ReadVariableOpReadVariableOpconv2d_93/bias*
_output_shapes
:@*
dtype0
Д
conv2d_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_94/kernel
}
$conv2d_94/kernel/Read/ReadVariableOpReadVariableOpconv2d_94/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_94/bias
m
"conv2d_94/bias/Read/ReadVariableOpReadVariableOpconv2d_94/bias*
_output_shapes
:@*
dtype0
{
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@* 
shared_namedense_28/kernel
t
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes
:	А@*
dtype0
r
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_28/bias
k
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes
:@*
dtype0
z
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_29/kernel
s
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel*
_output_shapes

:@*
dtype0
r
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_29/bias
k
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
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
Т
Adam/conv2d_89/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_89/kernel/m
Л
+Adam/conv2d_89/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_89/kernel/m*&
_output_shapes
: *
dtype0
В
Adam/conv2d_89/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_89/bias/m
{
)Adam/conv2d_89/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_89/bias/m*
_output_shapes
: *
dtype0
Т
Adam/conv2d_90/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_90/kernel/m
Л
+Adam/conv2d_90/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/kernel/m*&
_output_shapes
: @*
dtype0
В
Adam/conv2d_90/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_90/bias/m
{
)Adam/conv2d_90/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_91/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_91/kernel/m
Л
+Adam/conv2d_91/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_91/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_91/bias/m
{
)Adam/conv2d_91/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_92/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_92/kernel/m
Л
+Adam/conv2d_92/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_92/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_92/bias/m
{
)Adam/conv2d_92/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_93/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_93/kernel/m
Л
+Adam/conv2d_93/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_93/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_93/bias/m
{
)Adam/conv2d_93/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_94/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_94/kernel/m
Л
+Adam/conv2d_94/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_94/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_94/bias/m
{
)Adam/conv2d_94/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/bias/m*
_output_shapes
:@*
dtype0
Й
Adam/dense_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*'
shared_nameAdam/dense_28/kernel/m
В
*Adam/dense_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/m*
_output_shapes
:	А@*
dtype0
А
Adam/dense_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_28/bias/m
y
(Adam/dense_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/m*
_output_shapes
:@*
dtype0
И
Adam/dense_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_29/kernel/m
Б
*Adam/dense_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_29/kernel/m*
_output_shapes

:@*
dtype0
А
Adam/dense_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_29/bias/m
y
(Adam/dense_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_29/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_89/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_89/kernel/v
Л
+Adam/conv2d_89/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_89/kernel/v*&
_output_shapes
: *
dtype0
В
Adam/conv2d_89/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_89/bias/v
{
)Adam/conv2d_89/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_89/bias/v*
_output_shapes
: *
dtype0
Т
Adam/conv2d_90/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_90/kernel/v
Л
+Adam/conv2d_90/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/kernel/v*&
_output_shapes
: @*
dtype0
В
Adam/conv2d_90/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_90/bias/v
{
)Adam/conv2d_90/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_91/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_91/kernel/v
Л
+Adam/conv2d_91/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_91/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_91/bias/v
{
)Adam/conv2d_91/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_92/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_92/kernel/v
Л
+Adam/conv2d_92/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_92/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_92/bias/v
{
)Adam/conv2d_92/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_93/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_93/kernel/v
Л
+Adam/conv2d_93/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_93/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_93/bias/v
{
)Adam/conv2d_93/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_94/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_94/kernel/v
Л
+Adam/conv2d_94/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_94/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_94/bias/v
{
)Adam/conv2d_94/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/bias/v*
_output_shapes
:@*
dtype0
Й
Adam/dense_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*'
shared_nameAdam/dense_28/kernel/v
В
*Adam/dense_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/v*
_output_shapes
:	А@*
dtype0
А
Adam/dense_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_28/bias/v
y
(Adam/dense_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/v*
_output_shapes
:@*
dtype0
И
Adam/dense_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_29/kernel/v
Б
*Adam/dense_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_29/kernel/v*
_output_shapes

:@*
dtype0
А
Adam/dense_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_29/bias/v
y
(Adam/dense_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_29/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Њj
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*щi
valueпiBмi Bеi
•
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
l
layer-0
layer-1
trainable_variables
regularization_losses
	variables
	keras_api
l
layer-0
layer-1
 trainable_variables
!regularization_losses
"	variables
#	keras_api
h

$kernel
%bias
&trainable_variables
'regularization_losses
(	variables
)	keras_api
R
*trainable_variables
+regularization_losses
,	variables
-	keras_api
h

.kernel
/bias
0trainable_variables
1regularization_losses
2	variables
3	keras_api
R
4trainable_variables
5regularization_losses
6	variables
7	keras_api
h

8kernel
9bias
:trainable_variables
;regularization_losses
<	variables
=	keras_api
R
>trainable_variables
?regularization_losses
@	variables
A	keras_api
h

Bkernel
Cbias
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
R
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
h

Lkernel
Mbias
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
R
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
h

Vkernel
Wbias
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
R
\trainable_variables
]regularization_losses
^	variables
_	keras_api
R
`trainable_variables
aregularization_losses
b	variables
c	keras_api
h

dkernel
ebias
ftrainable_variables
gregularization_losses
h	variables
i	keras_api
h

jkernel
kbias
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
А
piter

qbeta_1

rbeta_2
	sdecay
tlearning_rate$mв%mг.mд/mе8mж9mзBmиCmйLmкMmлVmмWmнdmоemпjmрkmс$vт%vу.vф/vх8vц9vчBvшCvщLvъMvыVvьWvэdvюev€jvАkvБ
v
$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
d12
e13
j14
k15
 
v
$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
d12
e13
j14
k15
≠
unon_trainable_variables
vmetrics

wlayers
trainable_variables
xlayer_regularization_losses
regularization_losses
ylayer_metrics
	variables
 

z	keras_api

{	keras_api
 
 
 
Ѓ
|non_trainable_variables
}metrics

~layers
trainable_variables
layer_regularization_losses
regularization_losses
Аlayer_metrics
	variables

	Б_rng
В	keras_api

	Г_rng
Д	keras_api
 
 
 
≤
Еnon_trainable_variables
Жmetrics
Зlayers
 trainable_variables
 Иlayer_regularization_losses
!regularization_losses
Йlayer_metrics
"	variables
\Z
VARIABLE_VALUEconv2d_89/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_89/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
≤
Кnon_trainable_variables
Лmetrics
Мlayers
&trainable_variables
 Нlayer_regularization_losses
'regularization_losses
Оlayer_metrics
(	variables
 
 
 
≤
Пnon_trainable_variables
Рmetrics
Сlayers
*trainable_variables
 Тlayer_regularization_losses
+regularization_losses
Уlayer_metrics
,	variables
\Z
VARIABLE_VALUEconv2d_90/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_90/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1
 

.0
/1
≤
Фnon_trainable_variables
Хmetrics
Цlayers
0trainable_variables
 Чlayer_regularization_losses
1regularization_losses
Шlayer_metrics
2	variables
 
 
 
≤
Щnon_trainable_variables
Ъmetrics
Ыlayers
4trainable_variables
 Ьlayer_regularization_losses
5regularization_losses
Эlayer_metrics
6	variables
\Z
VARIABLE_VALUEconv2d_91/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_91/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91
 

80
91
≤
Юnon_trainable_variables
Яmetrics
†layers
:trainable_variables
 °layer_regularization_losses
;regularization_losses
Ґlayer_metrics
<	variables
 
 
 
≤
£non_trainable_variables
§metrics
•layers
>trainable_variables
 ¶layer_regularization_losses
?regularization_losses
Іlayer_metrics
@	variables
\Z
VARIABLE_VALUEconv2d_92/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_92/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

B0
C1
 

B0
C1
≤
®non_trainable_variables
©metrics
™layers
Dtrainable_variables
 Ђlayer_regularization_losses
Eregularization_losses
ђlayer_metrics
F	variables
 
 
 
≤
≠non_trainable_variables
Ѓmetrics
ѓlayers
Htrainable_variables
 ∞layer_regularization_losses
Iregularization_losses
±layer_metrics
J	variables
\Z
VARIABLE_VALUEconv2d_93/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_93/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

L0
M1
 

L0
M1
≤
≤non_trainable_variables
≥metrics
іlayers
Ntrainable_variables
 µlayer_regularization_losses
Oregularization_losses
ґlayer_metrics
P	variables
 
 
 
≤
Јnon_trainable_variables
Єmetrics
єlayers
Rtrainable_variables
 Їlayer_regularization_losses
Sregularization_losses
їlayer_metrics
T	variables
\Z
VARIABLE_VALUEconv2d_94/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_94/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

V0
W1
 

V0
W1
≤
Љnon_trainable_variables
љmetrics
Њlayers
Xtrainable_variables
 њlayer_regularization_losses
Yregularization_losses
јlayer_metrics
Z	variables
 
 
 
≤
Ѕnon_trainable_variables
¬metrics
√layers
\trainable_variables
 ƒlayer_regularization_losses
]regularization_losses
≈layer_metrics
^	variables
 
 
 
≤
∆non_trainable_variables
«metrics
»layers
`trainable_variables
 …layer_regularization_losses
aregularization_losses
 layer_metrics
b	variables
[Y
VARIABLE_VALUEdense_28/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_28/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

d0
e1
 

d0
e1
≤
Ћnon_trainable_variables
ћmetrics
Ќlayers
ftrainable_variables
 ќlayer_regularization_losses
gregularization_losses
ѕlayer_metrics
h	variables
[Y
VARIABLE_VALUEdense_29/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_29/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

j0
k1
 

j0
k1
≤
–non_trainable_variables
—metrics
“layers
ltrainable_variables
 ”layer_regularization_losses
mregularization_losses
‘layer_metrics
n	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

’0
÷1
~
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
 
 
 
 
 
 

0
1
 
 

„
_state_var
 

Ў
_state_var
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

ўtotal

Џcount
џ	variables
№	keras_api
I

Ёtotal

ёcount
я
_fn_kwargs
а	variables
б	keras_api
XV
VARIABLE_VALUEVariable:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_1:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ў0
Џ1

џ	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ё0
ё1

а	variables
}
VARIABLE_VALUEAdam/conv2d_89/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_89/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_90/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_90/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_91/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_91/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_92/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_92/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_93/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_93/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_94/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_94/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_28/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_28/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_29/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_29/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_89/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_89/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_90/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_90/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_91/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_91/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_92/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_92/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_93/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_93/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_94/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_94/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_28/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_28/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_29/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_29/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ъ
#serving_default_sequential_27_inputPlaceholder*1
_output_shapes
:€€€€€€€€€АА*
dtype0*&
shape:€€€€€€€€€АА
н
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_27_inputconv2d_89/kernelconv2d_89/biasconv2d_90/kernelconv2d_90/biasconv2d_91/kernelconv2d_91/biasconv2d_92/kernelconv2d_92/biasconv2d_93/kernelconv2d_93/biasconv2d_94/kernelconv2d_94/biasdense_28/kerneldense_28/biasdense_29/kerneldense_29/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_145644
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ф
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_89/kernel/Read/ReadVariableOp"conv2d_89/bias/Read/ReadVariableOp$conv2d_90/kernel/Read/ReadVariableOp"conv2d_90/bias/Read/ReadVariableOp$conv2d_91/kernel/Read/ReadVariableOp"conv2d_91/bias/Read/ReadVariableOp$conv2d_92/kernel/Read/ReadVariableOp"conv2d_92/bias/Read/ReadVariableOp$conv2d_93/kernel/Read/ReadVariableOp"conv2d_93/bias/Read/ReadVariableOp$conv2d_94/kernel/Read/ReadVariableOp"conv2d_94/bias/Read/ReadVariableOp#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOp#dense_29/kernel/Read/ReadVariableOp!dense_29/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_89/kernel/m/Read/ReadVariableOp)Adam/conv2d_89/bias/m/Read/ReadVariableOp+Adam/conv2d_90/kernel/m/Read/ReadVariableOp)Adam/conv2d_90/bias/m/Read/ReadVariableOp+Adam/conv2d_91/kernel/m/Read/ReadVariableOp)Adam/conv2d_91/bias/m/Read/ReadVariableOp+Adam/conv2d_92/kernel/m/Read/ReadVariableOp)Adam/conv2d_92/bias/m/Read/ReadVariableOp+Adam/conv2d_93/kernel/m/Read/ReadVariableOp)Adam/conv2d_93/bias/m/Read/ReadVariableOp+Adam/conv2d_94/kernel/m/Read/ReadVariableOp)Adam/conv2d_94/bias/m/Read/ReadVariableOp*Adam/dense_28/kernel/m/Read/ReadVariableOp(Adam/dense_28/bias/m/Read/ReadVariableOp*Adam/dense_29/kernel/m/Read/ReadVariableOp(Adam/dense_29/bias/m/Read/ReadVariableOp+Adam/conv2d_89/kernel/v/Read/ReadVariableOp)Adam/conv2d_89/bias/v/Read/ReadVariableOp+Adam/conv2d_90/kernel/v/Read/ReadVariableOp)Adam/conv2d_90/bias/v/Read/ReadVariableOp+Adam/conv2d_91/kernel/v/Read/ReadVariableOp)Adam/conv2d_91/bias/v/Read/ReadVariableOp+Adam/conv2d_92/kernel/v/Read/ReadVariableOp)Adam/conv2d_92/bias/v/Read/ReadVariableOp+Adam/conv2d_93/kernel/v/Read/ReadVariableOp)Adam/conv2d_93/bias/v/Read/ReadVariableOp+Adam/conv2d_94/kernel/v/Read/ReadVariableOp)Adam/conv2d_94/bias/v/Read/ReadVariableOp*Adam/dense_28/kernel/v/Read/ReadVariableOp(Adam/dense_28/bias/v/Read/ReadVariableOp*Adam/dense_29/kernel/v/Read/ReadVariableOp(Adam/dense_29/bias/v/Read/ReadVariableOpConst*H
TinA
?2=			*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_147237
”
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_89/kernelconv2d_89/biasconv2d_90/kernelconv2d_90/biasconv2d_91/kernelconv2d_91/biasconv2d_92/kernelconv2d_92/biasconv2d_93/kernelconv2d_93/biasconv2d_94/kernelconv2d_94/biasdense_28/kerneldense_28/biasdense_29/kerneldense_29/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1totalcounttotal_1count_1Adam/conv2d_89/kernel/mAdam/conv2d_89/bias/mAdam/conv2d_90/kernel/mAdam/conv2d_90/bias/mAdam/conv2d_91/kernel/mAdam/conv2d_91/bias/mAdam/conv2d_92/kernel/mAdam/conv2d_92/bias/mAdam/conv2d_93/kernel/mAdam/conv2d_93/bias/mAdam/conv2d_94/kernel/mAdam/conv2d_94/bias/mAdam/dense_28/kernel/mAdam/dense_28/bias/mAdam/dense_29/kernel/mAdam/dense_29/bias/mAdam/conv2d_89/kernel/vAdam/conv2d_89/bias/vAdam/conv2d_90/kernel/vAdam/conv2d_90/bias/vAdam/conv2d_91/kernel/vAdam/conv2d_91/bias/vAdam/conv2d_92/kernel/vAdam/conv2d_92/bias/vAdam/conv2d_93/kernel/vAdam/conv2d_93/bias/vAdam/conv2d_94/kernel/vAdam/conv2d_94/bias/vAdam/dense_28/kernel/vAdam/dense_28/bias/vAdam/dense_29/kernel/vAdam/dense_29/bias/v*G
Tin@
>2<*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_147424ЃБ
£
e
I__inference_sequential_28_layer_call_and_return_conditional_losses_144602

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
÷Ѓ
у
I__inference_sequential_28_layer_call_and_return_conditional_losses_146856
random_flip_8_inputH
:random_rotation_8_stateful_uniform_rngreadandskip_resource:	
identityИҐ1random_rotation_8/stateful_uniform/RngReadAndSkipч
7random_flip_8/random_flip_left_right/control_dependencyIdentityrandom_flip_8_input*
T0*&
_class
loc:@random_flip_8_input*1
_output_shapes
:€€€€€€€€€АА29
7random_flip_8/random_flip_left_right/control_dependency»
*random_flip_8/random_flip_left_right/ShapeShape@random_flip_8/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_8/random_flip_left_right/ShapeЊ
8random_flip_8/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_8/random_flip_left_right/strided_slice/stack¬
:random_flip_8/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_8/random_flip_left_right/strided_slice/stack_1¬
:random_flip_8/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_8/random_flip_left_right/strided_slice/stack_2ј
2random_flip_8/random_flip_left_right/strided_sliceStridedSlice3random_flip_8/random_flip_left_right/Shape:output:0Arandom_flip_8/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_8/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_8/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_8/random_flip_left_right/strided_sliceй
9random_flip_8/random_flip_left_right/random_uniform/shapePack;random_flip_8/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_8/random_flip_left_right/random_uniform/shapeЈ
7random_flip_8/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_8/random_flip_left_right/random_uniform/minЈ
7random_flip_8/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7random_flip_8/random_flip_left_right/random_uniform/maxЦ
Arandom_flip_8/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_8/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02C
Arandom_flip_8/random_flip_left_right/random_uniform/RandomUniformµ
7random_flip_8/random_flip_left_right/random_uniform/MulMulJrandom_flip_8/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_8/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€29
7random_flip_8/random_flip_left_right/random_uniform/MulЃ
4random_flip_8/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_8/random_flip_left_right/Reshape/shape/1Ѓ
4random_flip_8/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_8/random_flip_left_right/Reshape/shape/2Ѓ
4random_flip_8/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_8/random_flip_left_right/Reshape/shape/3Ш
2random_flip_8/random_flip_left_right/Reshape/shapePack;random_flip_8/random_flip_left_right/strided_slice:output:0=random_flip_8/random_flip_left_right/Reshape/shape/1:output:0=random_flip_8/random_flip_left_right/Reshape/shape/2:output:0=random_flip_8/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_8/random_flip_left_right/Reshape/shapeЫ
,random_flip_8/random_flip_left_right/ReshapeReshape;random_flip_8/random_flip_left_right/random_uniform/Mul:z:0;random_flip_8/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2.
,random_flip_8/random_flip_left_right/Reshape“
*random_flip_8/random_flip_left_right/RoundRound5random_flip_8/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2,
*random_flip_8/random_flip_left_right/Roundі
3random_flip_8/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_8/random_flip_left_right/ReverseV2/axis©
.random_flip_8/random_flip_left_right/ReverseV2	ReverseV2@random_flip_8/random_flip_left_right/control_dependency:output:0<random_flip_8/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА20
.random_flip_8/random_flip_left_right/ReverseV2А
(random_flip_8/random_flip_left_right/mulMul.random_flip_8/random_flip_left_right/Round:y:07random_flip_8/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2*
(random_flip_8/random_flip_left_right/mulЭ
*random_flip_8/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2,
*random_flip_8/random_flip_left_right/sub/xъ
(random_flip_8/random_flip_left_right/subSub3random_flip_8/random_flip_left_right/sub/x:output:0.random_flip_8/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2*
(random_flip_8/random_flip_left_right/subЛ
*random_flip_8/random_flip_left_right/mul_1Mul,random_flip_8/random_flip_left_right/sub:z:0@random_flip_8/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2,
*random_flip_8/random_flip_left_right/mul_1ч
(random_flip_8/random_flip_left_right/addAddV2,random_flip_8/random_flip_left_right/mul:z:0.random_flip_8/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2*
(random_flip_8/random_flip_left_right/addЯ
4random_flip_8/random_flip_up_down/control_dependencyIdentity,random_flip_8/random_flip_left_right/add:z:0*
T0*;
_class1
/-loc:@random_flip_8/random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€АА26
4random_flip_8/random_flip_up_down/control_dependencyњ
'random_flip_8/random_flip_up_down/ShapeShape=random_flip_8/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_8/random_flip_up_down/ShapeЄ
5random_flip_8/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_8/random_flip_up_down/strided_slice/stackЉ
7random_flip_8/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_8/random_flip_up_down/strided_slice/stack_1Љ
7random_flip_8/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_8/random_flip_up_down/strided_slice/stack_2Ѓ
/random_flip_8/random_flip_up_down/strided_sliceStridedSlice0random_flip_8/random_flip_up_down/Shape:output:0>random_flip_8/random_flip_up_down/strided_slice/stack:output:0@random_flip_8/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_8/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_8/random_flip_up_down/strided_sliceа
6random_flip_8/random_flip_up_down/random_uniform/shapePack8random_flip_8/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_8/random_flip_up_down/random_uniform/shape±
4random_flip_8/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_8/random_flip_up_down/random_uniform/min±
4random_flip_8/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?26
4random_flip_8/random_flip_up_down/random_uniform/maxН
>random_flip_8/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_8/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02@
>random_flip_8/random_flip_up_down/random_uniform/RandomUniform©
4random_flip_8/random_flip_up_down/random_uniform/MulMulGrandom_flip_8/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_8/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€26
4random_flip_8/random_flip_up_down/random_uniform/Mul®
1random_flip_8/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_8/random_flip_up_down/Reshape/shape/1®
1random_flip_8/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_8/random_flip_up_down/Reshape/shape/2®
1random_flip_8/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_8/random_flip_up_down/Reshape/shape/3Ж
/random_flip_8/random_flip_up_down/Reshape/shapePack8random_flip_8/random_flip_up_down/strided_slice:output:0:random_flip_8/random_flip_up_down/Reshape/shape/1:output:0:random_flip_8/random_flip_up_down/Reshape/shape/2:output:0:random_flip_8/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_8/random_flip_up_down/Reshape/shapeП
)random_flip_8/random_flip_up_down/ReshapeReshape8random_flip_8/random_flip_up_down/random_uniform/Mul:z:08random_flip_8/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2+
)random_flip_8/random_flip_up_down/Reshape…
'random_flip_8/random_flip_up_down/RoundRound2random_flip_8/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'random_flip_8/random_flip_up_down/RoundЃ
0random_flip_8/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_8/random_flip_up_down/ReverseV2/axisЭ
+random_flip_8/random_flip_up_down/ReverseV2	ReverseV2=random_flip_8/random_flip_up_down/control_dependency:output:09random_flip_8/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2-
+random_flip_8/random_flip_up_down/ReverseV2ф
%random_flip_8/random_flip_up_down/mulMul+random_flip_8/random_flip_up_down/Round:y:04random_flip_8/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2'
%random_flip_8/random_flip_up_down/mulЧ
'random_flip_8/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_flip_8/random_flip_up_down/sub/xо
%random_flip_8/random_flip_up_down/subSub0random_flip_8/random_flip_up_down/sub/x:output:0+random_flip_8/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2'
%random_flip_8/random_flip_up_down/sub€
'random_flip_8/random_flip_up_down/mul_1Mul)random_flip_8/random_flip_up_down/sub:z:0=random_flip_8/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2)
'random_flip_8/random_flip_up_down/mul_1л
%random_flip_8/random_flip_up_down/addAddV2)random_flip_8/random_flip_up_down/mul:z:0+random_flip_8/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2'
%random_flip_8/random_flip_up_down/addЛ
random_rotation_8/ShapeShape)random_flip_8/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_8/ShapeШ
%random_rotation_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_8/strided_slice/stackЬ
'random_rotation_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice/stack_1Ь
'random_rotation_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice/stack_2ќ
random_rotation_8/strided_sliceStridedSlice random_rotation_8/Shape:output:0.random_rotation_8/strided_slice/stack:output:00random_rotation_8/strided_slice/stack_1:output:00random_rotation_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_8/strided_sliceЬ
'random_rotation_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice_1/stack†
)random_rotation_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_1/stack_1†
)random_rotation_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_1/stack_2Ў
!random_rotation_8/strided_slice_1StridedSlice random_rotation_8/Shape:output:00random_rotation_8/strided_slice_1/stack:output:02random_rotation_8/strided_slice_1/stack_1:output:02random_rotation_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_8/strided_slice_1Ф
random_rotation_8/CastCast*random_rotation_8/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_8/CastЬ
'random_rotation_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice_2/stack†
)random_rotation_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_2/stack_1†
)random_rotation_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_2/stack_2Ў
!random_rotation_8/strided_slice_2StridedSlice random_rotation_8/Shape:output:00random_rotation_8/strided_slice_2/stack:output:02random_rotation_8/strided_slice_2/stack_1:output:02random_rotation_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_8/strided_slice_2Ш
random_rotation_8/Cast_1Cast*random_rotation_8/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_8/Cast_1і
(random_rotation_8/stateful_uniform/shapePack(random_rotation_8/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_8/stateful_uniform/shapeХ
&random_rotation_8/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†њ2(
&random_rotation_8/stateful_uniform/minХ
&random_rotation_8/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†?2(
&random_rotation_8/stateful_uniform/maxЮ
(random_rotation_8/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_8/stateful_uniform/Constб
'random_rotation_8/stateful_uniform/ProdProd1random_rotation_8/stateful_uniform/shape:output:01random_rotation_8/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/stateful_uniform/ProdШ
)random_rotation_8/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_8/stateful_uniform/Cast/xј
)random_rotation_8/stateful_uniform/Cast_1Cast0random_rotation_8/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_8/stateful_uniform/Cast_1≥
1random_rotation_8/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_8_stateful_uniform_rngreadandskip_resource2random_rotation_8/stateful_uniform/Cast/x:output:0-random_rotation_8/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_8/stateful_uniform/RngReadAndSkipЇ
6random_rotation_8/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_8/stateful_uniform/strided_slice/stackЊ
8random_rotation_8/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_8/stateful_uniform/strided_slice/stack_1Њ
8random_rotation_8/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_8/stateful_uniform/strided_slice/stack_2Ї
0random_rotation_8/stateful_uniform/strided_sliceStridedSlice9random_rotation_8/stateful_uniform/RngReadAndSkip:value:0?random_rotation_8/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_8/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_8/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_8/stateful_uniform/strided_sliceѕ
*random_rotation_8/stateful_uniform/BitcastBitcast9random_rotation_8/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_8/stateful_uniform/BitcastЊ
8random_rotation_8/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_8/stateful_uniform/strided_slice_1/stack¬
:random_rotation_8/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_8/stateful_uniform/strided_slice_1/stack_1¬
:random_rotation_8/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_8/stateful_uniform/strided_slice_1/stack_2≤
2random_rotation_8/stateful_uniform/strided_slice_1StridedSlice9random_rotation_8/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_8/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_8/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_8/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_8/stateful_uniform/strided_slice_1’
,random_rotation_8/stateful_uniform/Bitcast_1Bitcast;random_rotation_8/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_8/stateful_uniform/Bitcast_1ƒ
?random_rotation_8/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_8/stateful_uniform/StatelessRandomUniformV2/alg§
;random_rotation_8/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_8/stateful_uniform/shape:output:05random_rotation_8/stateful_uniform/Bitcast_1:output:03random_rotation_8/stateful_uniform/Bitcast:output:0Hrandom_rotation_8/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2=
;random_rotation_8/stateful_uniform/StatelessRandomUniformV2Џ
&random_rotation_8/stateful_uniform/subSub/random_rotation_8/stateful_uniform/max:output:0/random_rotation_8/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_8/stateful_uniform/subч
&random_rotation_8/stateful_uniform/mulMulDrandom_rotation_8/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_8/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2(
&random_rotation_8/stateful_uniform/mulЏ
"random_rotation_8/stateful_uniformAdd*random_rotation_8/stateful_uniform/mul:z:0/random_rotation_8/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2$
"random_rotation_8/stateful_uniformЧ
'random_rotation_8/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation_8/rotation_matrix/sub/y∆
%random_rotation_8/rotation_matrix/subSubrandom_rotation_8/Cast_1:y:00random_rotation_8/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_8/rotation_matrix/subЂ
%random_rotation_8/rotation_matrix/CosCos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/CosЫ
)random_rotation_8/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_1/yћ
'random_rotation_8/rotation_matrix/sub_1Subrandom_rotation_8/Cast_1:y:02random_rotation_8/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_1џ
%random_rotation_8/rotation_matrix/mulMul)random_rotation_8/rotation_matrix/Cos:y:0+random_rotation_8/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/mulЂ
%random_rotation_8/rotation_matrix/SinSin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/SinЫ
)random_rotation_8/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_2/y 
'random_rotation_8/rotation_matrix/sub_2Subrandom_rotation_8/Cast:y:02random_rotation_8/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_2я
'random_rotation_8/rotation_matrix/mul_1Mul)random_rotation_8/rotation_matrix/Sin:y:0+random_rotation_8/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/mul_1я
'random_rotation_8/rotation_matrix/sub_3Sub)random_rotation_8/rotation_matrix/mul:z:0+random_rotation_8/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/sub_3я
'random_rotation_8/rotation_matrix/sub_4Sub)random_rotation_8/rotation_matrix/sub:z:0+random_rotation_8/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/sub_4Я
+random_rotation_8/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_8/rotation_matrix/truediv/yт
)random_rotation_8/rotation_matrix/truedivRealDiv+random_rotation_8/rotation_matrix/sub_4:z:04random_rotation_8/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2+
)random_rotation_8/rotation_matrix/truedivЫ
)random_rotation_8/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_5/y 
'random_rotation_8/rotation_matrix/sub_5Subrandom_rotation_8/Cast:y:02random_rotation_8/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_5ѓ
'random_rotation_8/rotation_matrix/Sin_1Sin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Sin_1Ы
)random_rotation_8/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_6/yћ
'random_rotation_8/rotation_matrix/sub_6Subrandom_rotation_8/Cast_1:y:02random_rotation_8/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_6б
'random_rotation_8/rotation_matrix/mul_2Mul+random_rotation_8/rotation_matrix/Sin_1:y:0+random_rotation_8/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/mul_2ѓ
'random_rotation_8/rotation_matrix/Cos_1Cos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Cos_1Ы
)random_rotation_8/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_7/y 
'random_rotation_8/rotation_matrix/sub_7Subrandom_rotation_8/Cast:y:02random_rotation_8/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_7б
'random_rotation_8/rotation_matrix/mul_3Mul+random_rotation_8/rotation_matrix/Cos_1:y:0+random_rotation_8/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/mul_3я
%random_rotation_8/rotation_matrix/addAddV2+random_rotation_8/rotation_matrix/mul_2:z:0+random_rotation_8/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/addя
'random_rotation_8/rotation_matrix/sub_8Sub+random_rotation_8/rotation_matrix/sub_5:z:0)random_rotation_8/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/sub_8£
-random_rotation_8/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_8/rotation_matrix/truediv_1/yш
+random_rotation_8/rotation_matrix/truediv_1RealDiv+random_rotation_8/rotation_matrix/sub_8:z:06random_rotation_8/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2-
+random_rotation_8/rotation_matrix/truediv_1®
'random_rotation_8/rotation_matrix/ShapeShape&random_rotation_8/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_8/rotation_matrix/ShapeЄ
5random_rotation_8/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_8/rotation_matrix/strided_slice/stackЉ
7random_rotation_8/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_8/rotation_matrix/strided_slice/stack_1Љ
7random_rotation_8/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_8/rotation_matrix/strided_slice/stack_2Ѓ
/random_rotation_8/rotation_matrix/strided_sliceStridedSlice0random_rotation_8/rotation_matrix/Shape:output:0>random_rotation_8/rotation_matrix/strided_slice/stack:output:0@random_rotation_8/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_8/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_8/rotation_matrix/strided_sliceѓ
'random_rotation_8/rotation_matrix/Cos_2Cos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Cos_2√
7random_rotation_8/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_1/stack«
9random_rotation_8/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_1/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_1/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_1StridedSlice+random_rotation_8/rotation_matrix/Cos_2:y:0@random_rotation_8/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_1ѓ
'random_rotation_8/rotation_matrix/Sin_2Sin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Sin_2√
7random_rotation_8/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_2/stack«
9random_rotation_8/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_2/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_2/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_2StridedSlice+random_rotation_8/rotation_matrix/Sin_2:y:0@random_rotation_8/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_2√
%random_rotation_8/rotation_matrix/NegNeg:random_rotation_8/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/Neg√
7random_rotation_8/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_3/stack«
9random_rotation_8/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_3/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_3/stack_2е
1random_rotation_8/rotation_matrix/strided_slice_3StridedSlice-random_rotation_8/rotation_matrix/truediv:z:0@random_rotation_8/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_3ѓ
'random_rotation_8/rotation_matrix/Sin_3Sin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Sin_3√
7random_rotation_8/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_4/stack«
9random_rotation_8/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_4/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_4/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_4StridedSlice+random_rotation_8/rotation_matrix/Sin_3:y:0@random_rotation_8/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_4ѓ
'random_rotation_8/rotation_matrix/Cos_3Cos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Cos_3√
7random_rotation_8/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_5/stack«
9random_rotation_8/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_5/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_5/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_5StridedSlice+random_rotation_8/rotation_matrix/Cos_3:y:0@random_rotation_8/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_5√
7random_rotation_8/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_6/stack«
9random_rotation_8/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_6/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_6/stack_2з
1random_rotation_8/rotation_matrix/strided_slice_6StridedSlice/random_rotation_8/rotation_matrix/truediv_1:z:0@random_rotation_8/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_6†
-random_rotation_8/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_8/rotation_matrix/zeros/mul/yф
+random_rotation_8/rotation_matrix/zeros/mulMul8random_rotation_8/rotation_matrix/strided_slice:output:06random_rotation_8/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_8/rotation_matrix/zeros/mul£
.random_rotation_8/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и20
.random_rotation_8/rotation_matrix/zeros/Less/yп
,random_rotation_8/rotation_matrix/zeros/LessLess/random_rotation_8/rotation_matrix/zeros/mul:z:07random_rotation_8/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_8/rotation_matrix/zeros/Less¶
0random_rotation_8/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_8/rotation_matrix/zeros/packed/1Л
.random_rotation_8/rotation_matrix/zeros/packedPack8random_rotation_8/rotation_matrix/strided_slice:output:09random_rotation_8/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_8/rotation_matrix/zeros/packed£
-random_rotation_8/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_8/rotation_matrix/zeros/Constэ
'random_rotation_8/rotation_matrix/zerosFill7random_rotation_8/rotation_matrix/zeros/packed:output:06random_rotation_8/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/zeros†
-random_rotation_8/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_8/rotation_matrix/concat/axis№
(random_rotation_8/rotation_matrix/concatConcatV2:random_rotation_8/rotation_matrix/strided_slice_1:output:0)random_rotation_8/rotation_matrix/Neg:y:0:random_rotation_8/rotation_matrix/strided_slice_3:output:0:random_rotation_8/rotation_matrix/strided_slice_4:output:0:random_rotation_8/rotation_matrix/strided_slice_5:output:0:random_rotation_8/rotation_matrix/strided_slice_6:output:00random_rotation_8/rotation_matrix/zeros:output:06random_rotation_8/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2*
(random_rotation_8/rotation_matrix/concatЯ
!random_rotation_8/transform/ShapeShape)random_flip_8/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_8/transform/Shapeђ
/random_rotation_8/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_8/transform/strided_slice/stack∞
1random_rotation_8/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_8/transform/strided_slice/stack_1∞
1random_rotation_8/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_8/transform/strided_slice/stack_2ц
)random_rotation_8/transform/strided_sliceStridedSlice*random_rotation_8/transform/Shape:output:08random_rotation_8/transform/strided_slice/stack:output:0:random_rotation_8/transform/strided_slice/stack_1:output:0:random_rotation_8/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_8/transform/strided_sliceХ
&random_rotation_8/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_8/transform/fill_value∆
6random_rotation_8/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_8/random_flip_up_down/add:z:01random_rotation_8/rotation_matrix/concat:output:02random_rotation_8/transform/strided_slice:output:0/random_rotation_8/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_8/transform/ImageProjectiveTransformV3Ё
IdentityIdentityKrandom_rotation_8/transform/ImageProjectiveTransformV3:transformed_images:02^random_rotation_8/stateful_uniform/RngReadAndSkip*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2f
1random_rotation_8/stateful_uniform/RngReadAndSkip1random_rotation_8/stateful_uniform/RngReadAndSkip:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namerandom_flip_8_input
ђg
б
I__inference_sequential_31_layer_call_and_return_conditional_losses_145870

inputsB
(conv2d_89_conv2d_readvariableop_resource: 7
)conv2d_89_biasadd_readvariableop_resource: B
(conv2d_90_conv2d_readvariableop_resource: @7
)conv2d_90_biasadd_readvariableop_resource:@B
(conv2d_91_conv2d_readvariableop_resource:@@7
)conv2d_91_biasadd_readvariableop_resource:@B
(conv2d_92_conv2d_readvariableop_resource:@@7
)conv2d_92_biasadd_readvariableop_resource:@B
(conv2d_93_conv2d_readvariableop_resource:@@7
)conv2d_93_biasadd_readvariableop_resource:@B
(conv2d_94_conv2d_readvariableop_resource:@@7
)conv2d_94_biasadd_readvariableop_resource:@:
'dense_28_matmul_readvariableop_resource:	А@6
(dense_28_biasadd_readvariableop_resource:@9
'dense_29_matmul_readvariableop_resource:@6
(dense_29_biasadd_readvariableop_resource:
identityИҐ conv2d_89/BiasAdd/ReadVariableOpҐconv2d_89/Conv2D/ReadVariableOpҐ conv2d_90/BiasAdd/ReadVariableOpҐconv2d_90/Conv2D/ReadVariableOpҐ conv2d_91/BiasAdd/ReadVariableOpҐconv2d_91/Conv2D/ReadVariableOpҐ conv2d_92/BiasAdd/ReadVariableOpҐconv2d_92/Conv2D/ReadVariableOpҐ conv2d_93/BiasAdd/ReadVariableOpҐconv2d_93/Conv2D/ReadVariableOpҐ conv2d_94/BiasAdd/ReadVariableOpҐconv2d_94/Conv2D/ReadVariableOpҐdense_28/BiasAdd/ReadVariableOpҐdense_28/MatMul/ReadVariableOpҐdense_29/BiasAdd/ReadVariableOpҐdense_29/MatMul/ReadVariableOpЭ
$sequential_27/resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_27/resizing_7/resize/size€
.sequential_27/resizing_7/resize/ResizeBilinearResizeBilinearinputs-sequential_27/resizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(20
.sequential_27/resizing_7/resize/ResizeBilinearЙ
 sequential_27/rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2"
 sequential_27/rescaling_7/Cast/xН
"sequential_27/rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_27/rescaling_7/Cast_1/xн
sequential_27/rescaling_7/mulMul?sequential_27/resizing_7/resize/ResizeBilinear:resized_images:0)sequential_27/rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
sequential_27/rescaling_7/mul”
sequential_27/rescaling_7/addAddV2!sequential_27/rescaling_7/mul:z:0+sequential_27/rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
sequential_27/rescaling_7/add≥
conv2d_89/Conv2D/ReadVariableOpReadVariableOp(conv2d_89_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_89/Conv2D/ReadVariableOpя
conv2d_89/Conv2DConv2D!sequential_27/rescaling_7/add:z:0'conv2d_89/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
2
conv2d_89/Conv2D™
 conv2d_89/BiasAdd/ReadVariableOpReadVariableOp)conv2d_89_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_89/BiasAdd/ReadVariableOp≤
conv2d_89/BiasAddBiasAddconv2d_89/Conv2D:output:0(conv2d_89/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
conv2d_89/BiasAddА
conv2d_89/ReluReluconv2d_89/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
conv2d_89/Relu 
max_pooling2d_89/MaxPoolMaxPoolconv2d_89/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_89/MaxPool≥
conv2d_90/Conv2D/ReadVariableOpReadVariableOp(conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_90/Conv2D/ReadVariableOpЁ
conv2d_90/Conv2DConv2D!max_pooling2d_89/MaxPool:output:0'conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
2
conv2d_90/Conv2D™
 conv2d_90/BiasAdd/ReadVariableOpReadVariableOp)conv2d_90_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_90/BiasAdd/ReadVariableOp∞
conv2d_90/BiasAddBiasAddconv2d_90/Conv2D:output:0(conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
conv2d_90/BiasAdd~
conv2d_90/ReluReluconv2d_90/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
conv2d_90/Relu 
max_pooling2d_90/MaxPoolMaxPoolconv2d_90/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_90/MaxPool≥
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_91/Conv2D/ReadVariableOpЁ
conv2d_91/Conv2DConv2D!max_pooling2d_90/MaxPool:output:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
conv2d_91/Conv2D™
 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_91/BiasAdd/ReadVariableOp∞
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_91/BiasAdd~
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_91/Relu 
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_91/MaxPool≥
conv2d_92/Conv2D/ReadVariableOpReadVariableOp(conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_92/Conv2D/ReadVariableOpЁ
conv2d_92/Conv2DConv2D!max_pooling2d_91/MaxPool:output:0'conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_92/Conv2D™
 conv2d_92/BiasAdd/ReadVariableOpReadVariableOp)conv2d_92_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_92/BiasAdd/ReadVariableOp∞
conv2d_92/BiasAddBiasAddconv2d_92/Conv2D:output:0(conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_92/BiasAdd~
conv2d_92/ReluReluconv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_92/Relu 
max_pooling2d_92/MaxPoolMaxPoolconv2d_92/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_92/MaxPool≥
conv2d_93/Conv2D/ReadVariableOpReadVariableOp(conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_93/Conv2D/ReadVariableOpЁ
conv2d_93/Conv2DConv2D!max_pooling2d_92/MaxPool:output:0'conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_93/Conv2D™
 conv2d_93/BiasAdd/ReadVariableOpReadVariableOp)conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_93/BiasAdd/ReadVariableOp∞
conv2d_93/BiasAddBiasAddconv2d_93/Conv2D:output:0(conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_93/BiasAdd~
conv2d_93/ReluReluconv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_93/Relu 
max_pooling2d_93/MaxPoolMaxPoolconv2d_93/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_93/MaxPool≥
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_94/Conv2D/ReadVariableOpЁ
conv2d_94/Conv2DConv2D!max_pooling2d_93/MaxPool:output:0'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_94/Conv2D™
 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_94/BiasAdd/ReadVariableOp∞
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_94/BiasAdd~
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_94/Relu 
max_pooling2d_94/MaxPoolMaxPoolconv2d_94/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_94/MaxPoolu
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_14/Const§
flatten_14/ReshapeReshape!max_pooling2d_94/MaxPool:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_14/Reshape©
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02 
dense_28/MatMul/ReadVariableOp£
dense_28/MatMulMatMulflatten_14/Reshape:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/MatMulІ
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_28/BiasAdd/ReadVariableOp•
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/BiasAdds
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/Relu®
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_29/MatMul/ReadVariableOp£
dense_29/MatMulMatMuldense_28/Relu:activations:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/MatMulІ
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_29/BiasAdd/ReadVariableOp•
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/BiasAdd|
dense_29/SoftmaxSoftmaxdense_29/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/SoftmaxТ
IdentityIdentitydense_29/Softmax:softmax:0!^conv2d_89/BiasAdd/ReadVariableOp ^conv2d_89/Conv2D/ReadVariableOp!^conv2d_90/BiasAdd/ReadVariableOp ^conv2d_90/Conv2D/ReadVariableOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^conv2d_92/BiasAdd/ReadVariableOp ^conv2d_92/Conv2D/ReadVariableOp!^conv2d_93/BiasAdd/ReadVariableOp ^conv2d_93/Conv2D/ReadVariableOp!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2D
 conv2d_89/BiasAdd/ReadVariableOp conv2d_89/BiasAdd/ReadVariableOp2B
conv2d_89/Conv2D/ReadVariableOpconv2d_89/Conv2D/ReadVariableOp2D
 conv2d_90/BiasAdd/ReadVariableOp conv2d_90/BiasAdd/ReadVariableOp2B
conv2d_90/Conv2D/ReadVariableOpconv2d_90/Conv2D/ReadVariableOp2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 conv2d_92/BiasAdd/ReadVariableOp conv2d_92/BiasAdd/ReadVariableOp2B
conv2d_92/Conv2D/ReadVariableOpconv2d_92/Conv2D/ReadVariableOp2D
 conv2d_93/BiasAdd/ReadVariableOp conv2d_93/BiasAdd/ReadVariableOp2B
conv2d_93/Conv2D/ReadVariableOpconv2d_93/Conv2D/ReadVariableOp2D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ґ
ю
E__inference_conv2d_89_layer_call_and_return_conditional_losses_145060

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¶
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€юю 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
с
J
.__inference_sequential_27_layer_call_fn_146434

inputs
identity‘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_1445462
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ш
W
.__inference_sequential_28_layer_call_fn_146489
random_flip_8_input
identityб
PartitionedCallPartitionedCallrandom_flip_8_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_28_layer_call_and_return_conditional_losses_1446022
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namerandom_flip_8_input
£
e
I__inference_sequential_28_layer_call_and_return_conditional_losses_146512

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ц
ю
E__inference_conv2d_91_layer_call_and_return_conditional_losses_146916

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€<<@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€>>@
 
_user_specified_nameinputs
’
G
+__inference_flatten_14_layer_call_fn_146981

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_14_layer_call_and_return_conditional_losses_1451632
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_145022

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
с
J
.__inference_sequential_27_layer_call_fn_146439

inputs
identity‘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_1445662
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
∞

ц
D__inference_dense_28_layer_call_and_return_conditional_losses_145176

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
√
Ћ
.__inference_sequential_31_layer_call_fn_145718

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	А@

unknown_12:@

unknown_13:@

unknown_14:
identityИҐStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_31_layer_call_and_return_conditional_losses_1452002
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
т
.__inference_sequential_31_layer_call_fn_145796
sequential_27_input
unknown:	#
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@#
	unknown_4:@@
	unknown_5:@#
	unknown_6:@@
	unknown_7:@#
	unknown_8:@@
	unknown_9:@$

unknown_10:@@

unknown_11:@

unknown_12:	А@

unknown_13:@

unknown_14:@

unknown_15:
identityИҐStatefulPartitionedCall—
StatefulPartitionedCallStatefulPartitionedCallsequential_27_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_31_layer_call_and_return_conditional_losses_1454152
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€АА: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namesequential_27_input
ђ
h
L__inference_max_pooling2d_89_layer_call_and_return_conditional_losses_144974

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ц
ю
E__inference_conv2d_94_layer_call_and_return_conditional_losses_145150

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ƒ

e
I__inference_sequential_27_layer_call_and_return_conditional_losses_144566

inputs
identityБ
resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_7/resize/size’
 resizing_7/resize/ResizeBilinearResizeBilinearinputsresizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(2"
 resizing_7/resize/ResizeBilinearm
rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling_7/Cast/xq
rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_7/Cast_1/xµ
rescaling_7/mulMul1resizing_7/resize/ResizeBilinear:resized_images:0rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/mulЫ
rescaling_7/addAddV2rescaling_7/mul:z:0rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/addq
IdentityIdentityrescaling_7/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ц
ю
E__inference_conv2d_92_layer_call_and_return_conditional_losses_145114

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
∞

ц
D__inference_dense_28_layer_call_and_return_conditional_losses_147007

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_144986

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ѕГ
Ж
!__inference__wrapped_model_144532
sequential_27_inputP
6sequential_31_conv2d_89_conv2d_readvariableop_resource: E
7sequential_31_conv2d_89_biasadd_readvariableop_resource: P
6sequential_31_conv2d_90_conv2d_readvariableop_resource: @E
7sequential_31_conv2d_90_biasadd_readvariableop_resource:@P
6sequential_31_conv2d_91_conv2d_readvariableop_resource:@@E
7sequential_31_conv2d_91_biasadd_readvariableop_resource:@P
6sequential_31_conv2d_92_conv2d_readvariableop_resource:@@E
7sequential_31_conv2d_92_biasadd_readvariableop_resource:@P
6sequential_31_conv2d_93_conv2d_readvariableop_resource:@@E
7sequential_31_conv2d_93_biasadd_readvariableop_resource:@P
6sequential_31_conv2d_94_conv2d_readvariableop_resource:@@E
7sequential_31_conv2d_94_biasadd_readvariableop_resource:@H
5sequential_31_dense_28_matmul_readvariableop_resource:	А@D
6sequential_31_dense_28_biasadd_readvariableop_resource:@G
5sequential_31_dense_29_matmul_readvariableop_resource:@D
6sequential_31_dense_29_biasadd_readvariableop_resource:
identityИҐ.sequential_31/conv2d_89/BiasAdd/ReadVariableOpҐ-sequential_31/conv2d_89/Conv2D/ReadVariableOpҐ.sequential_31/conv2d_90/BiasAdd/ReadVariableOpҐ-sequential_31/conv2d_90/Conv2D/ReadVariableOpҐ.sequential_31/conv2d_91/BiasAdd/ReadVariableOpҐ-sequential_31/conv2d_91/Conv2D/ReadVariableOpҐ.sequential_31/conv2d_92/BiasAdd/ReadVariableOpҐ-sequential_31/conv2d_92/Conv2D/ReadVariableOpҐ.sequential_31/conv2d_93/BiasAdd/ReadVariableOpҐ-sequential_31/conv2d_93/Conv2D/ReadVariableOpҐ.sequential_31/conv2d_94/BiasAdd/ReadVariableOpҐ-sequential_31/conv2d_94/Conv2D/ReadVariableOpҐ-sequential_31/dense_28/BiasAdd/ReadVariableOpҐ,sequential_31/dense_28/MatMul/ReadVariableOpҐ-sequential_31/dense_29/BiasAdd/ReadVariableOpҐ,sequential_31/dense_29/MatMul/ReadVariableOpє
2sequential_31/sequential_27/resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      24
2sequential_31/sequential_27/resizing_7/resize/sizeґ
<sequential_31/sequential_27/resizing_7/resize/ResizeBilinearResizeBilinearsequential_27_input;sequential_31/sequential_27/resizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(2>
<sequential_31/sequential_27/resizing_7/resize/ResizeBilinear•
.sequential_31/sequential_27/rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;20
.sequential_31/sequential_27/rescaling_7/Cast/x©
0sequential_31/sequential_27/rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0sequential_31/sequential_27/rescaling_7/Cast_1/x•
+sequential_31/sequential_27/rescaling_7/mulMulMsequential_31/sequential_27/resizing_7/resize/ResizeBilinear:resized_images:07sequential_31/sequential_27/rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2-
+sequential_31/sequential_27/rescaling_7/mulЛ
+sequential_31/sequential_27/rescaling_7/addAddV2/sequential_31/sequential_27/rescaling_7/mul:z:09sequential_31/sequential_27/rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2-
+sequential_31/sequential_27/rescaling_7/addЁ
-sequential_31/conv2d_89/Conv2D/ReadVariableOpReadVariableOp6sequential_31_conv2d_89_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_31/conv2d_89/Conv2D/ReadVariableOpЧ
sequential_31/conv2d_89/Conv2DConv2D/sequential_31/sequential_27/rescaling_7/add:z:05sequential_31/conv2d_89/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
2 
sequential_31/conv2d_89/Conv2D‘
.sequential_31/conv2d_89/BiasAdd/ReadVariableOpReadVariableOp7sequential_31_conv2d_89_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_31/conv2d_89/BiasAdd/ReadVariableOpк
sequential_31/conv2d_89/BiasAddBiasAdd'sequential_31/conv2d_89/Conv2D:output:06sequential_31/conv2d_89/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2!
sequential_31/conv2d_89/BiasAdd™
sequential_31/conv2d_89/ReluRelu(sequential_31/conv2d_89/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
sequential_31/conv2d_89/Reluф
&sequential_31/max_pooling2d_89/MaxPoolMaxPool*sequential_31/conv2d_89/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2(
&sequential_31/max_pooling2d_89/MaxPoolЁ
-sequential_31/conv2d_90/Conv2D/ReadVariableOpReadVariableOp6sequential_31_conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_31/conv2d_90/Conv2D/ReadVariableOpХ
sequential_31/conv2d_90/Conv2DConv2D/sequential_31/max_pooling2d_89/MaxPool:output:05sequential_31/conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
2 
sequential_31/conv2d_90/Conv2D‘
.sequential_31/conv2d_90/BiasAdd/ReadVariableOpReadVariableOp7sequential_31_conv2d_90_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_31/conv2d_90/BiasAdd/ReadVariableOpи
sequential_31/conv2d_90/BiasAddBiasAdd'sequential_31/conv2d_90/Conv2D:output:06sequential_31/conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2!
sequential_31/conv2d_90/BiasAdd®
sequential_31/conv2d_90/ReluRelu(sequential_31/conv2d_90/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
sequential_31/conv2d_90/Reluф
&sequential_31/max_pooling2d_90/MaxPoolMaxPool*sequential_31/conv2d_90/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
2(
&sequential_31/max_pooling2d_90/MaxPoolЁ
-sequential_31/conv2d_91/Conv2D/ReadVariableOpReadVariableOp6sequential_31_conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_31/conv2d_91/Conv2D/ReadVariableOpХ
sequential_31/conv2d_91/Conv2DConv2D/sequential_31/max_pooling2d_90/MaxPool:output:05sequential_31/conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2 
sequential_31/conv2d_91/Conv2D‘
.sequential_31/conv2d_91/BiasAdd/ReadVariableOpReadVariableOp7sequential_31_conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_31/conv2d_91/BiasAdd/ReadVariableOpи
sequential_31/conv2d_91/BiasAddBiasAdd'sequential_31/conv2d_91/Conv2D:output:06sequential_31/conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2!
sequential_31/conv2d_91/BiasAdd®
sequential_31/conv2d_91/ReluRelu(sequential_31/conv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
sequential_31/conv2d_91/Reluф
&sequential_31/max_pooling2d_91/MaxPoolMaxPool*sequential_31/conv2d_91/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2(
&sequential_31/max_pooling2d_91/MaxPoolЁ
-sequential_31/conv2d_92/Conv2D/ReadVariableOpReadVariableOp6sequential_31_conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_31/conv2d_92/Conv2D/ReadVariableOpХ
sequential_31/conv2d_92/Conv2DConv2D/sequential_31/max_pooling2d_91/MaxPool:output:05sequential_31/conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2 
sequential_31/conv2d_92/Conv2D‘
.sequential_31/conv2d_92/BiasAdd/ReadVariableOpReadVariableOp7sequential_31_conv2d_92_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_31/conv2d_92/BiasAdd/ReadVariableOpи
sequential_31/conv2d_92/BiasAddBiasAdd'sequential_31/conv2d_92/Conv2D:output:06sequential_31/conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
sequential_31/conv2d_92/BiasAdd®
sequential_31/conv2d_92/ReluRelu(sequential_31/conv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_31/conv2d_92/Reluф
&sequential_31/max_pooling2d_92/MaxPoolMaxPool*sequential_31/conv2d_92/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2(
&sequential_31/max_pooling2d_92/MaxPoolЁ
-sequential_31/conv2d_93/Conv2D/ReadVariableOpReadVariableOp6sequential_31_conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_31/conv2d_93/Conv2D/ReadVariableOpХ
sequential_31/conv2d_93/Conv2DConv2D/sequential_31/max_pooling2d_92/MaxPool:output:05sequential_31/conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2 
sequential_31/conv2d_93/Conv2D‘
.sequential_31/conv2d_93/BiasAdd/ReadVariableOpReadVariableOp7sequential_31_conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_31/conv2d_93/BiasAdd/ReadVariableOpи
sequential_31/conv2d_93/BiasAddBiasAdd'sequential_31/conv2d_93/Conv2D:output:06sequential_31/conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
sequential_31/conv2d_93/BiasAdd®
sequential_31/conv2d_93/ReluRelu(sequential_31/conv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_31/conv2d_93/Reluф
&sequential_31/max_pooling2d_93/MaxPoolMaxPool*sequential_31/conv2d_93/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2(
&sequential_31/max_pooling2d_93/MaxPoolЁ
-sequential_31/conv2d_94/Conv2D/ReadVariableOpReadVariableOp6sequential_31_conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_31/conv2d_94/Conv2D/ReadVariableOpХ
sequential_31/conv2d_94/Conv2DConv2D/sequential_31/max_pooling2d_93/MaxPool:output:05sequential_31/conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2 
sequential_31/conv2d_94/Conv2D‘
.sequential_31/conv2d_94/BiasAdd/ReadVariableOpReadVariableOp7sequential_31_conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_31/conv2d_94/BiasAdd/ReadVariableOpи
sequential_31/conv2d_94/BiasAddBiasAdd'sequential_31/conv2d_94/Conv2D:output:06sequential_31/conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
sequential_31/conv2d_94/BiasAdd®
sequential_31/conv2d_94/ReluRelu(sequential_31/conv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_31/conv2d_94/Reluф
&sequential_31/max_pooling2d_94/MaxPoolMaxPool*sequential_31/conv2d_94/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2(
&sequential_31/max_pooling2d_94/MaxPoolС
sequential_31/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2 
sequential_31/flatten_14/Const№
 sequential_31/flatten_14/ReshapeReshape/sequential_31/max_pooling2d_94/MaxPool:output:0'sequential_31/flatten_14/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 sequential_31/flatten_14/Reshape”
,sequential_31/dense_28/MatMul/ReadVariableOpReadVariableOp5sequential_31_dense_28_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02.
,sequential_31/dense_28/MatMul/ReadVariableOpџ
sequential_31/dense_28/MatMulMatMul)sequential_31/flatten_14/Reshape:output:04sequential_31/dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential_31/dense_28/MatMul—
-sequential_31/dense_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_31_dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_31/dense_28/BiasAdd/ReadVariableOpЁ
sequential_31/dense_28/BiasAddBiasAdd'sequential_31/dense_28/MatMul:product:05sequential_31/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
sequential_31/dense_28/BiasAddЭ
sequential_31/dense_28/ReluRelu'sequential_31/dense_28/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential_31/dense_28/Relu“
,sequential_31/dense_29/MatMul/ReadVariableOpReadVariableOp5sequential_31_dense_29_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,sequential_31/dense_29/MatMul/ReadVariableOpџ
sequential_31/dense_29/MatMulMatMul)sequential_31/dense_28/Relu:activations:04sequential_31/dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_31/dense_29/MatMul—
-sequential_31/dense_29/BiasAdd/ReadVariableOpReadVariableOp6sequential_31_dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_31/dense_29/BiasAdd/ReadVariableOpЁ
sequential_31/dense_29/BiasAddBiasAdd'sequential_31/dense_29/MatMul:product:05sequential_31/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_31/dense_29/BiasAdd¶
sequential_31/dense_29/SoftmaxSoftmax'sequential_31/dense_29/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_31/dense_29/SoftmaxА
IdentityIdentity(sequential_31/dense_29/Softmax:softmax:0/^sequential_31/conv2d_89/BiasAdd/ReadVariableOp.^sequential_31/conv2d_89/Conv2D/ReadVariableOp/^sequential_31/conv2d_90/BiasAdd/ReadVariableOp.^sequential_31/conv2d_90/Conv2D/ReadVariableOp/^sequential_31/conv2d_91/BiasAdd/ReadVariableOp.^sequential_31/conv2d_91/Conv2D/ReadVariableOp/^sequential_31/conv2d_92/BiasAdd/ReadVariableOp.^sequential_31/conv2d_92/Conv2D/ReadVariableOp/^sequential_31/conv2d_93/BiasAdd/ReadVariableOp.^sequential_31/conv2d_93/Conv2D/ReadVariableOp/^sequential_31/conv2d_94/BiasAdd/ReadVariableOp.^sequential_31/conv2d_94/Conv2D/ReadVariableOp.^sequential_31/dense_28/BiasAdd/ReadVariableOp-^sequential_31/dense_28/MatMul/ReadVariableOp.^sequential_31/dense_29/BiasAdd/ReadVariableOp-^sequential_31/dense_29/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2`
.sequential_31/conv2d_89/BiasAdd/ReadVariableOp.sequential_31/conv2d_89/BiasAdd/ReadVariableOp2^
-sequential_31/conv2d_89/Conv2D/ReadVariableOp-sequential_31/conv2d_89/Conv2D/ReadVariableOp2`
.sequential_31/conv2d_90/BiasAdd/ReadVariableOp.sequential_31/conv2d_90/BiasAdd/ReadVariableOp2^
-sequential_31/conv2d_90/Conv2D/ReadVariableOp-sequential_31/conv2d_90/Conv2D/ReadVariableOp2`
.sequential_31/conv2d_91/BiasAdd/ReadVariableOp.sequential_31/conv2d_91/BiasAdd/ReadVariableOp2^
-sequential_31/conv2d_91/Conv2D/ReadVariableOp-sequential_31/conv2d_91/Conv2D/ReadVariableOp2`
.sequential_31/conv2d_92/BiasAdd/ReadVariableOp.sequential_31/conv2d_92/BiasAdd/ReadVariableOp2^
-sequential_31/conv2d_92/Conv2D/ReadVariableOp-sequential_31/conv2d_92/Conv2D/ReadVariableOp2`
.sequential_31/conv2d_93/BiasAdd/ReadVariableOp.sequential_31/conv2d_93/BiasAdd/ReadVariableOp2^
-sequential_31/conv2d_93/Conv2D/ReadVariableOp-sequential_31/conv2d_93/Conv2D/ReadVariableOp2`
.sequential_31/conv2d_94/BiasAdd/ReadVariableOp.sequential_31/conv2d_94/BiasAdd/ReadVariableOp2^
-sequential_31/conv2d_94/Conv2D/ReadVariableOp-sequential_31/conv2d_94/Conv2D/ReadVariableOp2^
-sequential_31/dense_28/BiasAdd/ReadVariableOp-sequential_31/dense_28/BiasAdd/ReadVariableOp2\
,sequential_31/dense_28/MatMul/ReadVariableOp,sequential_31/dense_28/MatMul/ReadVariableOp2^
-sequential_31/dense_29/BiasAdd/ReadVariableOp-sequential_31/dense_29/BiasAdd/ReadVariableOp2\
,sequential_31/dense_29/MatMul/ReadVariableOp,sequential_31/dense_29/MatMul/ReadVariableOp:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namesequential_27_input
»
Я
*__inference_conv2d_93_layer_call_fn_146945

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_93_layer_call_and_return_conditional_losses_1451322
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ƒ

e
I__inference_sequential_27_layer_call_and_return_conditional_losses_146454

inputs
identityБ
resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_7/resize/size’
 resizing_7/resize/ResizeBilinearResizeBilinearinputsresizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(2"
 resizing_7/resize/ResizeBilinearm
rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling_7/Cast/xq
rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_7/Cast_1/xµ
rescaling_7/mulMul1resizing_7/resize/ResizeBilinear:resized_images:0rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/mulЫ
rescaling_7/addAddV2rescaling_7/mul:z:0rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/addq
IdentityIdentityrescaling_7/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_145034

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ц
ю
E__inference_conv2d_94_layer_call_and_return_conditional_losses_146976

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
в

o
I__inference_sequential_27_layer_call_and_return_conditional_losses_146474
resizing_7_input
identityБ
resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_7/resize/sizeя
 resizing_7/resize/ResizeBilinearResizeBilinearresizing_7_inputresizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(2"
 resizing_7/resize/ResizeBilinearm
rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling_7/Cast/xq
rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_7/Cast_1/xµ
rescaling_7/mulMul1resizing_7/resize/ResizeBilinear:resized_images:0rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/mulЫ
rescaling_7/addAddV2rescaling_7/mul:z:0rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/addq
IdentityIdentityrescaling_7/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_nameresizing_7_input
–
Я
*__inference_conv2d_89_layer_call_fn_146865

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_89_layer_call_and_return_conditional_losses_1450602
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€юю 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
«v
Р
__inference__traced_save_147237
file_prefix/
+savev2_conv2d_89_kernel_read_readvariableop-
)savev2_conv2d_89_bias_read_readvariableop/
+savev2_conv2d_90_kernel_read_readvariableop-
)savev2_conv2d_90_bias_read_readvariableop/
+savev2_conv2d_91_kernel_read_readvariableop-
)savev2_conv2d_91_bias_read_readvariableop/
+savev2_conv2d_92_kernel_read_readvariableop-
)savev2_conv2d_92_bias_read_readvariableop/
+savev2_conv2d_93_kernel_read_readvariableop-
)savev2_conv2d_93_bias_read_readvariableop/
+savev2_conv2d_94_kernel_read_readvariableop-
)savev2_conv2d_94_bias_read_readvariableop.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop.
*savev2_dense_29_kernel_read_readvariableop,
(savev2_dense_29_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_89_kernel_m_read_readvariableop4
0savev2_adam_conv2d_89_bias_m_read_readvariableop6
2savev2_adam_conv2d_90_kernel_m_read_readvariableop4
0savev2_adam_conv2d_90_bias_m_read_readvariableop6
2savev2_adam_conv2d_91_kernel_m_read_readvariableop4
0savev2_adam_conv2d_91_bias_m_read_readvariableop6
2savev2_adam_conv2d_92_kernel_m_read_readvariableop4
0savev2_adam_conv2d_92_bias_m_read_readvariableop6
2savev2_adam_conv2d_93_kernel_m_read_readvariableop4
0savev2_adam_conv2d_93_bias_m_read_readvariableop6
2savev2_adam_conv2d_94_kernel_m_read_readvariableop4
0savev2_adam_conv2d_94_bias_m_read_readvariableop5
1savev2_adam_dense_28_kernel_m_read_readvariableop3
/savev2_adam_dense_28_bias_m_read_readvariableop5
1savev2_adam_dense_29_kernel_m_read_readvariableop3
/savev2_adam_dense_29_bias_m_read_readvariableop6
2savev2_adam_conv2d_89_kernel_v_read_readvariableop4
0savev2_adam_conv2d_89_bias_v_read_readvariableop6
2savev2_adam_conv2d_90_kernel_v_read_readvariableop4
0savev2_adam_conv2d_90_bias_v_read_readvariableop6
2savev2_adam_conv2d_91_kernel_v_read_readvariableop4
0savev2_adam_conv2d_91_bias_v_read_readvariableop6
2savev2_adam_conv2d_92_kernel_v_read_readvariableop4
0savev2_adam_conv2d_92_bias_v_read_readvariableop6
2savev2_adam_conv2d_93_kernel_v_read_readvariableop4
0savev2_adam_conv2d_93_bias_v_read_readvariableop6
2savev2_adam_conv2d_94_kernel_v_read_readvariableop4
0savev2_adam_conv2d_94_bias_v_read_readvariableop5
1savev2_adam_dense_28_kernel_v_read_readvariableop3
/savev2_adam_dense_28_bias_v_read_readvariableop5
1savev2_adam_dense_29_kernel_v_read_readvariableop3
/savev2_adam_dense_29_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¶!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Є 
valueЃ BЂ <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesГ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Н
valueГBА<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices≠
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_89_kernel_read_readvariableop)savev2_conv2d_89_bias_read_readvariableop+savev2_conv2d_90_kernel_read_readvariableop)savev2_conv2d_90_bias_read_readvariableop+savev2_conv2d_91_kernel_read_readvariableop)savev2_conv2d_91_bias_read_readvariableop+savev2_conv2d_92_kernel_read_readvariableop)savev2_conv2d_92_bias_read_readvariableop+savev2_conv2d_93_kernel_read_readvariableop)savev2_conv2d_93_bias_read_readvariableop+savev2_conv2d_94_kernel_read_readvariableop)savev2_conv2d_94_bias_read_readvariableop*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop*savev2_dense_29_kernel_read_readvariableop(savev2_dense_29_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_89_kernel_m_read_readvariableop0savev2_adam_conv2d_89_bias_m_read_readvariableop2savev2_adam_conv2d_90_kernel_m_read_readvariableop0savev2_adam_conv2d_90_bias_m_read_readvariableop2savev2_adam_conv2d_91_kernel_m_read_readvariableop0savev2_adam_conv2d_91_bias_m_read_readvariableop2savev2_adam_conv2d_92_kernel_m_read_readvariableop0savev2_adam_conv2d_92_bias_m_read_readvariableop2savev2_adam_conv2d_93_kernel_m_read_readvariableop0savev2_adam_conv2d_93_bias_m_read_readvariableop2savev2_adam_conv2d_94_kernel_m_read_readvariableop0savev2_adam_conv2d_94_bias_m_read_readvariableop1savev2_adam_dense_28_kernel_m_read_readvariableop/savev2_adam_dense_28_bias_m_read_readvariableop1savev2_adam_dense_29_kernel_m_read_readvariableop/savev2_adam_dense_29_bias_m_read_readvariableop2savev2_adam_conv2d_89_kernel_v_read_readvariableop0savev2_adam_conv2d_89_bias_v_read_readvariableop2savev2_adam_conv2d_90_kernel_v_read_readvariableop0savev2_adam_conv2d_90_bias_v_read_readvariableop2savev2_adam_conv2d_91_kernel_v_read_readvariableop0savev2_adam_conv2d_91_bias_v_read_readvariableop2savev2_adam_conv2d_92_kernel_v_read_readvariableop0savev2_adam_conv2d_92_bias_v_read_readvariableop2savev2_adam_conv2d_93_kernel_v_read_readvariableop0savev2_adam_conv2d_93_bias_v_read_readvariableop2savev2_adam_conv2d_94_kernel_v_read_readvariableop0savev2_adam_conv2d_94_bias_v_read_readvariableop1savev2_adam_dense_28_kernel_v_read_readvariableop/savev2_adam_dense_28_bias_v_read_readvariableop1savev2_adam_dense_29_kernel_v_read_readvariableop/savev2_adam_dense_29_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<			2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0* 
_input_shapesЄ
µ: : : : @:@:@@:@:@@:@:@@:@:@@:@:	А@:@:@:: : : : : ::: : : : : : : @:@:@@:@:@@:@:@@:@:@@:@:	А@:@:@:: : : @:@:@@:@:@@:@:@@:@:@@:@:	А@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:, (
&
_output_shapes
:@@: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:,$(
&
_output_shapes
:@@: %

_output_shapes
:@:,&(
&
_output_shapes
:@@: '

_output_shapes
:@:%(!

_output_shapes
:	А@: )

_output_shapes
:@:$* 

_output_shapes

:@: +

_output_shapes
::,,(
&
_output_shapes
: : -

_output_shapes
: :,.(
&
_output_shapes
: @: /

_output_shapes
:@:,0(
&
_output_shapes
:@@: 1

_output_shapes
:@:,2(
&
_output_shapes
:@@: 3

_output_shapes
:@:,4(
&
_output_shapes
:@@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@@: 7

_output_shapes
:@:%8!

_output_shapes
:	А@: 9

_output_shapes
:@:$: 

_output_shapes

:@: ;

_output_shapes
::<

_output_shapes
: 
м
е
.__inference_sequential_31_layer_call_fn_145757

inputs
unknown:	#
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@#
	unknown_4:@@
	unknown_5:@#
	unknown_6:@@
	unknown_7:@#
	unknown_8:@@
	unknown_9:@$

unknown_10:@@

unknown_11:@

unknown_12:	А@

unknown_13:@

unknown_14:@

unknown_15:
identityИҐStatefulPartitionedCallƒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_31_layer_call_and_return_conditional_losses_1454152
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€АА: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
и
b
F__inference_flatten_14_layer_call_and_return_conditional_losses_145163

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_144998

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
П
T
.__inference_sequential_27_layer_call_fn_146429
resizing_7_input
identityё
PartitionedCallPartitionedCallresizing_7_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_1445462
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_nameresizing_7_input
УJ
”
I__inference_sequential_31_layer_call_and_return_conditional_losses_145200

inputs*
conv2d_89_145061: 
conv2d_89_145063: *
conv2d_90_145079: @
conv2d_90_145081:@*
conv2d_91_145097:@@
conv2d_91_145099:@*
conv2d_92_145115:@@
conv2d_92_145117:@*
conv2d_93_145133:@@
conv2d_93_145135:@*
conv2d_94_145151:@@
conv2d_94_145153:@"
dense_28_145177:	А@
dense_28_145179:@!
dense_29_145194:@
dense_29_145196:
identityИҐ!conv2d_89/StatefulPartitionedCallҐ!conv2d_90/StatefulPartitionedCallҐ!conv2d_91/StatefulPartitionedCallҐ!conv2d_92/StatefulPartitionedCallҐ!conv2d_93/StatefulPartitionedCallҐ!conv2d_94/StatefulPartitionedCallҐ dense_28/StatefulPartitionedCallҐ dense_29/StatefulPartitionedCallр
sequential_27/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_1445462
sequential_27/PartitionedCallР
sequential_28/PartitionedCallPartitionedCall&sequential_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_28_layer_call_and_return_conditional_losses_1446022
sequential_28/PartitionedCall∆
!conv2d_89/StatefulPartitionedCallStatefulPartitionedCall&sequential_28/PartitionedCall:output:0conv2d_89_145061conv2d_89_145063*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_89_layer_call_and_return_conditional_losses_1450602#
!conv2d_89/StatefulPartitionedCallЫ
 max_pooling2d_89/PartitionedCallPartitionedCall*conv2d_89/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_89_layer_call_and_return_conditional_losses_1449742"
 max_pooling2d_89/PartitionedCall«
!conv2d_90/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_89/PartitionedCall:output:0conv2d_90_145079conv2d_90_145081*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_90_layer_call_and_return_conditional_losses_1450782#
!conv2d_90/StatefulPartitionedCallЫ
 max_pooling2d_90/PartitionedCallPartitionedCall*conv2d_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_1449862"
 max_pooling2d_90/PartitionedCall«
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_90/PartitionedCall:output:0conv2d_91_145097conv2d_91_145099*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_91_layer_call_and_return_conditional_losses_1450962#
!conv2d_91/StatefulPartitionedCallЫ
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_1449982"
 max_pooling2d_91/PartitionedCall«
!conv2d_92/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_91/PartitionedCall:output:0conv2d_92_145115conv2d_92_145117*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_92_layer_call_and_return_conditional_losses_1451142#
!conv2d_92/StatefulPartitionedCallЫ
 max_pooling2d_92/PartitionedCallPartitionedCall*conv2d_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_1450102"
 max_pooling2d_92/PartitionedCall«
!conv2d_93/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_92/PartitionedCall:output:0conv2d_93_145133conv2d_93_145135*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_93_layer_call_and_return_conditional_losses_1451322#
!conv2d_93/StatefulPartitionedCallЫ
 max_pooling2d_93/PartitionedCallPartitionedCall*conv2d_93/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_1450222"
 max_pooling2d_93/PartitionedCall«
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_93/PartitionedCall:output:0conv2d_94_145151conv2d_94_145153*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_1451502#
!conv2d_94/StatefulPartitionedCallЫ
 max_pooling2d_94/PartitionedCallPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_1450342"
 max_pooling2d_94/PartitionedCallБ
flatten_14/PartitionedCallPartitionedCall)max_pooling2d_94/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_14_layer_call_and_return_conditional_losses_1451632
flatten_14/PartitionedCallі
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_28_145177dense_28_145179*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1451762"
 dense_28/StatefulPartitionedCallЇ
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_145194dense_29_145196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_1451932"
 dense_29/StatefulPartitionedCallЫ
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0"^conv2d_89/StatefulPartitionedCall"^conv2d_90/StatefulPartitionedCall"^conv2d_91/StatefulPartitionedCall"^conv2d_92/StatefulPartitionedCall"^conv2d_93/StatefulPartitionedCall"^conv2d_94/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2F
!conv2d_89/StatefulPartitionedCall!conv2d_89/StatefulPartitionedCall2F
!conv2d_90/StatefulPartitionedCall!conv2d_90/StatefulPartitionedCall2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!conv2d_92/StatefulPartitionedCall!conv2d_92/StatefulPartitionedCall2F
!conv2d_93/StatefulPartitionedCall!conv2d_93/StatefulPartitionedCall2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
і

х
D__inference_dense_29_layer_call_and_return_conditional_losses_147027

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
№
M
1__inference_max_pooling2d_94_layer_call_fn_145040

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_1450342
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ґ
ю
E__inference_conv2d_89_layer_call_and_return_conditional_losses_146876

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¶
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€юю 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
 
r
I__inference_sequential_28_layer_call_and_return_conditional_losses_146686
random_flip_8_input
identityq
IdentityIdentityrandom_flip_8_input*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namerandom_flip_8_input
в

o
I__inference_sequential_27_layer_call_and_return_conditional_losses_146484
resizing_7_input
identityБ
resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_7/resize/sizeя
 resizing_7/resize/ResizeBilinearResizeBilinearresizing_7_inputresizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(2"
 resizing_7/resize/ResizeBilinearm
rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling_7/Cast/xq
rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_7/Cast_1/xµ
rescaling_7/mulMul1resizing_7/resize/ResizeBilinear:resized_images:0rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/mulЫ
rescaling_7/addAddV2rescaling_7/mul:z:0rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/addq
IdentityIdentityrescaling_7/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_nameresizing_7_input
ђ
h
L__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_145010

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
і

х
D__inference_dense_29_layer_call_and_return_conditional_losses_145193

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
†
~
.__inference_sequential_28_layer_call_fn_146501

inputs
unknown:	
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_28_layer_call_and_return_conditional_losses_1447822
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
к
Ў
.__inference_sequential_31_layer_call_fn_145681
sequential_27_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	А@

unknown_12:@

unknown_13:@

unknown_14:
identityИҐStatefulPartitionedCallƒ
StatefulPartitionedCallStatefulPartitionedCallsequential_27_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_31_layer_call_and_return_conditional_losses_1452002
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namesequential_27_input
Ц
ю
E__inference_conv2d_91_layer_call_and_return_conditional_losses_145096

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€<<@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€>>@
 
_user_specified_nameinputs
Ю
Ц
)__inference_dense_29_layer_call_fn_147016

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_1451932
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ƒ

e
I__inference_sequential_27_layer_call_and_return_conditional_losses_144546

inputs
identityБ
resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_7/resize/size’
 resizing_7/resize/ResizeBilinearResizeBilinearinputsresizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(2"
 resizing_7/resize/ResizeBilinearm
rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling_7/Cast/xq
rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_7/Cast_1/xµ
rescaling_7/mulMul1resizing_7/resize/ResizeBilinear:resized_images:0rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/mulЫ
rescaling_7/addAddV2rescaling_7/mul:z:0rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/addq
IdentityIdentityrescaling_7/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
»
Я
*__inference_conv2d_90_layer_call_fn_146885

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_90_layer_call_and_return_conditional_losses_1450782
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€}}@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
”g
о
I__inference_sequential_31_layer_call_and_return_conditional_losses_146184
sequential_27_inputB
(conv2d_89_conv2d_readvariableop_resource: 7
)conv2d_89_biasadd_readvariableop_resource: B
(conv2d_90_conv2d_readvariableop_resource: @7
)conv2d_90_biasadd_readvariableop_resource:@B
(conv2d_91_conv2d_readvariableop_resource:@@7
)conv2d_91_biasadd_readvariableop_resource:@B
(conv2d_92_conv2d_readvariableop_resource:@@7
)conv2d_92_biasadd_readvariableop_resource:@B
(conv2d_93_conv2d_readvariableop_resource:@@7
)conv2d_93_biasadd_readvariableop_resource:@B
(conv2d_94_conv2d_readvariableop_resource:@@7
)conv2d_94_biasadd_readvariableop_resource:@:
'dense_28_matmul_readvariableop_resource:	А@6
(dense_28_biasadd_readvariableop_resource:@9
'dense_29_matmul_readvariableop_resource:@6
(dense_29_biasadd_readvariableop_resource:
identityИҐ conv2d_89/BiasAdd/ReadVariableOpҐconv2d_89/Conv2D/ReadVariableOpҐ conv2d_90/BiasAdd/ReadVariableOpҐconv2d_90/Conv2D/ReadVariableOpҐ conv2d_91/BiasAdd/ReadVariableOpҐconv2d_91/Conv2D/ReadVariableOpҐ conv2d_92/BiasAdd/ReadVariableOpҐconv2d_92/Conv2D/ReadVariableOpҐ conv2d_93/BiasAdd/ReadVariableOpҐconv2d_93/Conv2D/ReadVariableOpҐ conv2d_94/BiasAdd/ReadVariableOpҐconv2d_94/Conv2D/ReadVariableOpҐdense_28/BiasAdd/ReadVariableOpҐdense_28/MatMul/ReadVariableOpҐdense_29/BiasAdd/ReadVariableOpҐdense_29/MatMul/ReadVariableOpЭ
$sequential_27/resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_27/resizing_7/resize/sizeМ
.sequential_27/resizing_7/resize/ResizeBilinearResizeBilinearsequential_27_input-sequential_27/resizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(20
.sequential_27/resizing_7/resize/ResizeBilinearЙ
 sequential_27/rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2"
 sequential_27/rescaling_7/Cast/xН
"sequential_27/rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_27/rescaling_7/Cast_1/xн
sequential_27/rescaling_7/mulMul?sequential_27/resizing_7/resize/ResizeBilinear:resized_images:0)sequential_27/rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
sequential_27/rescaling_7/mul”
sequential_27/rescaling_7/addAddV2!sequential_27/rescaling_7/mul:z:0+sequential_27/rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
sequential_27/rescaling_7/add≥
conv2d_89/Conv2D/ReadVariableOpReadVariableOp(conv2d_89_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_89/Conv2D/ReadVariableOpя
conv2d_89/Conv2DConv2D!sequential_27/rescaling_7/add:z:0'conv2d_89/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
2
conv2d_89/Conv2D™
 conv2d_89/BiasAdd/ReadVariableOpReadVariableOp)conv2d_89_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_89/BiasAdd/ReadVariableOp≤
conv2d_89/BiasAddBiasAddconv2d_89/Conv2D:output:0(conv2d_89/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
conv2d_89/BiasAddА
conv2d_89/ReluReluconv2d_89/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
conv2d_89/Relu 
max_pooling2d_89/MaxPoolMaxPoolconv2d_89/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_89/MaxPool≥
conv2d_90/Conv2D/ReadVariableOpReadVariableOp(conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_90/Conv2D/ReadVariableOpЁ
conv2d_90/Conv2DConv2D!max_pooling2d_89/MaxPool:output:0'conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
2
conv2d_90/Conv2D™
 conv2d_90/BiasAdd/ReadVariableOpReadVariableOp)conv2d_90_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_90/BiasAdd/ReadVariableOp∞
conv2d_90/BiasAddBiasAddconv2d_90/Conv2D:output:0(conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
conv2d_90/BiasAdd~
conv2d_90/ReluReluconv2d_90/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
conv2d_90/Relu 
max_pooling2d_90/MaxPoolMaxPoolconv2d_90/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_90/MaxPool≥
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_91/Conv2D/ReadVariableOpЁ
conv2d_91/Conv2DConv2D!max_pooling2d_90/MaxPool:output:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
conv2d_91/Conv2D™
 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_91/BiasAdd/ReadVariableOp∞
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_91/BiasAdd~
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_91/Relu 
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_91/MaxPool≥
conv2d_92/Conv2D/ReadVariableOpReadVariableOp(conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_92/Conv2D/ReadVariableOpЁ
conv2d_92/Conv2DConv2D!max_pooling2d_91/MaxPool:output:0'conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_92/Conv2D™
 conv2d_92/BiasAdd/ReadVariableOpReadVariableOp)conv2d_92_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_92/BiasAdd/ReadVariableOp∞
conv2d_92/BiasAddBiasAddconv2d_92/Conv2D:output:0(conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_92/BiasAdd~
conv2d_92/ReluReluconv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_92/Relu 
max_pooling2d_92/MaxPoolMaxPoolconv2d_92/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_92/MaxPool≥
conv2d_93/Conv2D/ReadVariableOpReadVariableOp(conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_93/Conv2D/ReadVariableOpЁ
conv2d_93/Conv2DConv2D!max_pooling2d_92/MaxPool:output:0'conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_93/Conv2D™
 conv2d_93/BiasAdd/ReadVariableOpReadVariableOp)conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_93/BiasAdd/ReadVariableOp∞
conv2d_93/BiasAddBiasAddconv2d_93/Conv2D:output:0(conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_93/BiasAdd~
conv2d_93/ReluReluconv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_93/Relu 
max_pooling2d_93/MaxPoolMaxPoolconv2d_93/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_93/MaxPool≥
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_94/Conv2D/ReadVariableOpЁ
conv2d_94/Conv2DConv2D!max_pooling2d_93/MaxPool:output:0'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_94/Conv2D™
 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_94/BiasAdd/ReadVariableOp∞
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_94/BiasAdd~
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_94/Relu 
max_pooling2d_94/MaxPoolMaxPoolconv2d_94/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_94/MaxPoolu
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_14/Const§
flatten_14/ReshapeReshape!max_pooling2d_94/MaxPool:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_14/Reshape©
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02 
dense_28/MatMul/ReadVariableOp£
dense_28/MatMulMatMulflatten_14/Reshape:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/MatMulІ
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_28/BiasAdd/ReadVariableOp•
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/BiasAdds
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/Relu®
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_29/MatMul/ReadVariableOp£
dense_29/MatMulMatMuldense_28/Relu:activations:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/MatMulІ
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_29/BiasAdd/ReadVariableOp•
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/BiasAdd|
dense_29/SoftmaxSoftmaxdense_29/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/SoftmaxТ
IdentityIdentitydense_29/Softmax:softmax:0!^conv2d_89/BiasAdd/ReadVariableOp ^conv2d_89/Conv2D/ReadVariableOp!^conv2d_90/BiasAdd/ReadVariableOp ^conv2d_90/Conv2D/ReadVariableOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^conv2d_92/BiasAdd/ReadVariableOp ^conv2d_92/Conv2D/ReadVariableOp!^conv2d_93/BiasAdd/ReadVariableOp ^conv2d_93/Conv2D/ReadVariableOp!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2D
 conv2d_89/BiasAdd/ReadVariableOp conv2d_89/BiasAdd/ReadVariableOp2B
conv2d_89/Conv2D/ReadVariableOpconv2d_89/Conv2D/ReadVariableOp2D
 conv2d_90/BiasAdd/ReadVariableOp conv2d_90/BiasAdd/ReadVariableOp2B
conv2d_90/Conv2D/ReadVariableOpconv2d_90/Conv2D/ReadVariableOp2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 conv2d_92/BiasAdd/ReadVariableOp conv2d_92/BiasAdd/ReadVariableOp2B
conv2d_92/Conv2D/ReadVariableOpconv2d_92/Conv2D/ReadVariableOp2D
 conv2d_93/BiasAdd/ReadVariableOp conv2d_93/BiasAdd/ReadVariableOp2B
conv2d_93/Conv2D/ReadVariableOpconv2d_93/Conv2D/ReadVariableOp2D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namesequential_27_input
ƒ

e
I__inference_sequential_27_layer_call_and_return_conditional_losses_146464

inputs
identityБ
resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_7/resize/size’
 resizing_7/resize/ResizeBilinearResizeBilinearinputsresizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(2"
 resizing_7/resize/ResizeBilinearm
rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling_7/Cast/xq
rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_7/Cast_1/xµ
rescaling_7/mulMul1resizing_7/resize/ResizeBilinear:resized_images:0rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/mulЫ
rescaling_7/addAddV2rescaling_7/mul:z:0rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling_7/addq
IdentityIdentityrescaling_7/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
№
M
1__inference_max_pooling2d_89_layer_call_fn_144980

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_89_layer_call_and_return_conditional_losses_1449742
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Јћ
И
I__inference_sequential_31_layer_call_and_return_conditional_losses_146424
sequential_27_inputV
Hsequential_28_random_rotation_8_stateful_uniform_rngreadandskip_resource:	B
(conv2d_89_conv2d_readvariableop_resource: 7
)conv2d_89_biasadd_readvariableop_resource: B
(conv2d_90_conv2d_readvariableop_resource: @7
)conv2d_90_biasadd_readvariableop_resource:@B
(conv2d_91_conv2d_readvariableop_resource:@@7
)conv2d_91_biasadd_readvariableop_resource:@B
(conv2d_92_conv2d_readvariableop_resource:@@7
)conv2d_92_biasadd_readvariableop_resource:@B
(conv2d_93_conv2d_readvariableop_resource:@@7
)conv2d_93_biasadd_readvariableop_resource:@B
(conv2d_94_conv2d_readvariableop_resource:@@7
)conv2d_94_biasadd_readvariableop_resource:@:
'dense_28_matmul_readvariableop_resource:	А@6
(dense_28_biasadd_readvariableop_resource:@9
'dense_29_matmul_readvariableop_resource:@6
(dense_29_biasadd_readvariableop_resource:
identityИҐ conv2d_89/BiasAdd/ReadVariableOpҐconv2d_89/Conv2D/ReadVariableOpҐ conv2d_90/BiasAdd/ReadVariableOpҐconv2d_90/Conv2D/ReadVariableOpҐ conv2d_91/BiasAdd/ReadVariableOpҐconv2d_91/Conv2D/ReadVariableOpҐ conv2d_92/BiasAdd/ReadVariableOpҐconv2d_92/Conv2D/ReadVariableOpҐ conv2d_93/BiasAdd/ReadVariableOpҐconv2d_93/Conv2D/ReadVariableOpҐ conv2d_94/BiasAdd/ReadVariableOpҐconv2d_94/Conv2D/ReadVariableOpҐdense_28/BiasAdd/ReadVariableOpҐdense_28/MatMul/ReadVariableOpҐdense_29/BiasAdd/ReadVariableOpҐdense_29/MatMul/ReadVariableOpҐ?sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkipЭ
$sequential_27/resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_27/resizing_7/resize/sizeМ
.sequential_27/resizing_7/resize/ResizeBilinearResizeBilinearsequential_27_input-sequential_27/resizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(20
.sequential_27/resizing_7/resize/ResizeBilinearЙ
 sequential_27/rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2"
 sequential_27/rescaling_7/Cast/xН
"sequential_27/rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_27/rescaling_7/Cast_1/xн
sequential_27/rescaling_7/mulMul?sequential_27/resizing_7/resize/ResizeBilinear:resized_images:0)sequential_27/rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
sequential_27/rescaling_7/mul”
sequential_27/rescaling_7/addAddV2!sequential_27/rescaling_7/mul:z:0+sequential_27/rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
sequential_27/rescaling_7/addЂ
Esequential_28/random_flip_8/random_flip_left_right/control_dependencyIdentity!sequential_27/rescaling_7/add:z:0*
T0*0
_class&
$"loc:@sequential_27/rescaling_7/add*1
_output_shapes
:€€€€€€€€€АА2G
Esequential_28/random_flip_8/random_flip_left_right/control_dependencyт
8sequential_28/random_flip_8/random_flip_left_right/ShapeShapeNsequential_28/random_flip_8/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2:
8sequential_28/random_flip_8/random_flip_left_right/ShapeЏ
Fsequential_28/random_flip_8/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fsequential_28/random_flip_8/random_flip_left_right/strided_slice/stackё
Hsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_1ё
Hsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_2Ф
@sequential_28/random_flip_8/random_flip_left_right/strided_sliceStridedSliceAsequential_28/random_flip_8/random_flip_left_right/Shape:output:0Osequential_28/random_flip_8/random_flip_left_right/strided_slice/stack:output:0Qsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_1:output:0Qsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2B
@sequential_28/random_flip_8/random_flip_left_right/strided_sliceУ
Gsequential_28/random_flip_8/random_flip_left_right/random_uniform/shapePackIsequential_28/random_flip_8/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2I
Gsequential_28/random_flip_8/random_flip_left_right/random_uniform/shape”
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2G
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/min”
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2G
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/maxј
Osequential_28/random_flip_8/random_flip_left_right/random_uniform/RandomUniformRandomUniformPsequential_28/random_flip_8/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02Q
Osequential_28/random_flip_8/random_flip_left_right/random_uniform/RandomUniformн
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/MulMulXsequential_28/random_flip_8/random_flip_left_right/random_uniform/RandomUniform:output:0Nsequential_28/random_flip_8/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€2G
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/Mul 
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/1 
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/2 
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/3м
@sequential_28/random_flip_8/random_flip_left_right/Reshape/shapePackIsequential_28/random_flip_8/random_flip_left_right/strided_slice:output:0Ksequential_28/random_flip_8/random_flip_left_right/Reshape/shape/1:output:0Ksequential_28/random_flip_8/random_flip_left_right/Reshape/shape/2:output:0Ksequential_28/random_flip_8/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2B
@sequential_28/random_flip_8/random_flip_left_right/Reshape/shape”
:sequential_28/random_flip_8/random_flip_left_right/ReshapeReshapeIsequential_28/random_flip_8/random_flip_left_right/random_uniform/Mul:z:0Isequential_28/random_flip_8/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2<
:sequential_28/random_flip_8/random_flip_left_right/Reshapeь
8sequential_28/random_flip_8/random_flip_left_right/RoundRoundCsequential_28/random_flip_8/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2:
8sequential_28/random_flip_8/random_flip_left_right/Round–
Asequential_28/random_flip_8/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_28/random_flip_8/random_flip_left_right/ReverseV2/axisб
<sequential_28/random_flip_8/random_flip_left_right/ReverseV2	ReverseV2Nsequential_28/random_flip_8/random_flip_left_right/control_dependency:output:0Jsequential_28/random_flip_8/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2>
<sequential_28/random_flip_8/random_flip_left_right/ReverseV2Є
6sequential_28/random_flip_8/random_flip_left_right/mulMul<sequential_28/random_flip_8/random_flip_left_right/Round:y:0Esequential_28/random_flip_8/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА28
6sequential_28/random_flip_8/random_flip_left_right/mulє
8sequential_28/random_flip_8/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2:
8sequential_28/random_flip_8/random_flip_left_right/sub/x≤
6sequential_28/random_flip_8/random_flip_left_right/subSubAsequential_28/random_flip_8/random_flip_left_right/sub/x:output:0<sequential_28/random_flip_8/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€28
6sequential_28/random_flip_8/random_flip_left_right/sub√
8sequential_28/random_flip_8/random_flip_left_right/mul_1Mul:sequential_28/random_flip_8/random_flip_left_right/sub:z:0Nsequential_28/random_flip_8/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2:
8sequential_28/random_flip_8/random_flip_left_right/mul_1ѓ
6sequential_28/random_flip_8/random_flip_left_right/addAddV2:sequential_28/random_flip_8/random_flip_left_right/mul:z:0<sequential_28/random_flip_8/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА28
6sequential_28/random_flip_8/random_flip_left_right/add„
Bsequential_28/random_flip_8/random_flip_up_down/control_dependencyIdentity:sequential_28/random_flip_8/random_flip_left_right/add:z:0*
T0*I
_class?
=;loc:@sequential_28/random_flip_8/random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€АА2D
Bsequential_28/random_flip_8/random_flip_up_down/control_dependencyй
5sequential_28/random_flip_8/random_flip_up_down/ShapeShapeKsequential_28/random_flip_8/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:27
5sequential_28/random_flip_8/random_flip_up_down/Shape‘
Csequential_28/random_flip_8/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_28/random_flip_8/random_flip_up_down/strided_slice/stackЎ
Esequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_1Ў
Esequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_2В
=sequential_28/random_flip_8/random_flip_up_down/strided_sliceStridedSlice>sequential_28/random_flip_8/random_flip_up_down/Shape:output:0Lsequential_28/random_flip_8/random_flip_up_down/strided_slice/stack:output:0Nsequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_1:output:0Nsequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=sequential_28/random_flip_8/random_flip_up_down/strided_sliceК
Dsequential_28/random_flip_8/random_flip_up_down/random_uniform/shapePackFsequential_28/random_flip_8/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:2F
Dsequential_28/random_flip_8/random_flip_up_down/random_uniform/shapeЌ
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2D
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/minЌ
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2D
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/maxЈ
Lsequential_28/random_flip_8/random_flip_up_down/random_uniform/RandomUniformRandomUniformMsequential_28/random_flip_8/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02N
Lsequential_28/random_flip_8/random_flip_up_down/random_uniform/RandomUniformб
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/MulMulUsequential_28/random_flip_8/random_flip_up_down/random_uniform/RandomUniform:output:0Ksequential_28/random_flip_8/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€2D
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/Mulƒ
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/1ƒ
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/2ƒ
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/3Џ
=sequential_28/random_flip_8/random_flip_up_down/Reshape/shapePackFsequential_28/random_flip_8/random_flip_up_down/strided_slice:output:0Hsequential_28/random_flip_8/random_flip_up_down/Reshape/shape/1:output:0Hsequential_28/random_flip_8/random_flip_up_down/Reshape/shape/2:output:0Hsequential_28/random_flip_8/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2?
=sequential_28/random_flip_8/random_flip_up_down/Reshape/shape«
7sequential_28/random_flip_8/random_flip_up_down/ReshapeReshapeFsequential_28/random_flip_8/random_flip_up_down/random_uniform/Mul:z:0Fsequential_28/random_flip_8/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€29
7sequential_28/random_flip_8/random_flip_up_down/Reshapeу
5sequential_28/random_flip_8/random_flip_up_down/RoundRound@sequential_28/random_flip_8/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€27
5sequential_28/random_flip_8/random_flip_up_down/Round 
>sequential_28/random_flip_8/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_28/random_flip_8/random_flip_up_down/ReverseV2/axis’
9sequential_28/random_flip_8/random_flip_up_down/ReverseV2	ReverseV2Ksequential_28/random_flip_8/random_flip_up_down/control_dependency:output:0Gsequential_28/random_flip_8/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2;
9sequential_28/random_flip_8/random_flip_up_down/ReverseV2ђ
3sequential_28/random_flip_8/random_flip_up_down/mulMul9sequential_28/random_flip_8/random_flip_up_down/Round:y:0Bsequential_28/random_flip_8/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА25
3sequential_28/random_flip_8/random_flip_up_down/mul≥
5sequential_28/random_flip_8/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?27
5sequential_28/random_flip_8/random_flip_up_down/sub/x¶
3sequential_28/random_flip_8/random_flip_up_down/subSub>sequential_28/random_flip_8/random_flip_up_down/sub/x:output:09sequential_28/random_flip_8/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€25
3sequential_28/random_flip_8/random_flip_up_down/subЈ
5sequential_28/random_flip_8/random_flip_up_down/mul_1Mul7sequential_28/random_flip_8/random_flip_up_down/sub:z:0Ksequential_28/random_flip_8/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА27
5sequential_28/random_flip_8/random_flip_up_down/mul_1£
3sequential_28/random_flip_8/random_flip_up_down/addAddV27sequential_28/random_flip_8/random_flip_up_down/mul:z:09sequential_28/random_flip_8/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА25
3sequential_28/random_flip_8/random_flip_up_down/addµ
%sequential_28/random_rotation_8/ShapeShape7sequential_28/random_flip_8/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2'
%sequential_28/random_rotation_8/Shapeі
3sequential_28/random_rotation_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_28/random_rotation_8/strided_slice/stackЄ
5sequential_28/random_rotation_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_28/random_rotation_8/strided_slice/stack_1Є
5sequential_28/random_rotation_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_28/random_rotation_8/strided_slice/stack_2Ґ
-sequential_28/random_rotation_8/strided_sliceStridedSlice.sequential_28/random_rotation_8/Shape:output:0<sequential_28/random_rotation_8/strided_slice/stack:output:0>sequential_28/random_rotation_8/strided_slice/stack_1:output:0>sequential_28/random_rotation_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_28/random_rotation_8/strided_sliceЄ
5sequential_28/random_rotation_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_28/random_rotation_8/strided_slice_1/stackЉ
7sequential_28/random_rotation_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_28/random_rotation_8/strided_slice_1/stack_1Љ
7sequential_28/random_rotation_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_28/random_rotation_8/strided_slice_1/stack_2ђ
/sequential_28/random_rotation_8/strided_slice_1StridedSlice.sequential_28/random_rotation_8/Shape:output:0>sequential_28/random_rotation_8/strided_slice_1/stack:output:0@sequential_28/random_rotation_8/strided_slice_1/stack_1:output:0@sequential_28/random_rotation_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_28/random_rotation_8/strided_slice_1Њ
$sequential_28/random_rotation_8/CastCast8sequential_28/random_rotation_8/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$sequential_28/random_rotation_8/CastЄ
5sequential_28/random_rotation_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_28/random_rotation_8/strided_slice_2/stackЉ
7sequential_28/random_rotation_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_28/random_rotation_8/strided_slice_2/stack_1Љ
7sequential_28/random_rotation_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_28/random_rotation_8/strided_slice_2/stack_2ђ
/sequential_28/random_rotation_8/strided_slice_2StridedSlice.sequential_28/random_rotation_8/Shape:output:0>sequential_28/random_rotation_8/strided_slice_2/stack:output:0@sequential_28/random_rotation_8/strided_slice_2/stack_1:output:0@sequential_28/random_rotation_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_28/random_rotation_8/strided_slice_2¬
&sequential_28/random_rotation_8/Cast_1Cast8sequential_28/random_rotation_8/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2(
&sequential_28/random_rotation_8/Cast_1ё
6sequential_28/random_rotation_8/stateful_uniform/shapePack6sequential_28/random_rotation_8/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6sequential_28/random_rotation_8/stateful_uniform/shape±
4sequential_28/random_rotation_8/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†њ26
4sequential_28/random_rotation_8/stateful_uniform/min±
4sequential_28/random_rotation_8/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†?26
4sequential_28/random_rotation_8/stateful_uniform/maxЇ
6sequential_28/random_rotation_8/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_28/random_rotation_8/stateful_uniform/ConstЩ
5sequential_28/random_rotation_8/stateful_uniform/ProdProd?sequential_28/random_rotation_8/stateful_uniform/shape:output:0?sequential_28/random_rotation_8/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/stateful_uniform/Prodі
7sequential_28/random_rotation_8/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_28/random_rotation_8/stateful_uniform/Cast/xк
7sequential_28/random_rotation_8/stateful_uniform/Cast_1Cast>sequential_28/random_rotation_8/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 29
7sequential_28/random_rotation_8/stateful_uniform/Cast_1щ
?sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkipRngReadAndSkipHsequential_28_random_rotation_8_stateful_uniform_rngreadandskip_resource@sequential_28/random_rotation_8/stateful_uniform/Cast/x:output:0;sequential_28/random_rotation_8/stateful_uniform/Cast_1:y:0*
_output_shapes
:2A
?sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip÷
Dsequential_28/random_rotation_8/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
Dsequential_28/random_rotation_8/stateful_uniform/strided_slice/stackЏ
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_1Џ
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_2О
>sequential_28/random_rotation_8/stateful_uniform/strided_sliceStridedSliceGsequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip:value:0Msequential_28/random_rotation_8/stateful_uniform/strided_slice/stack:output:0Osequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_1:output:0Osequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2@
>sequential_28/random_rotation_8/stateful_uniform/strided_sliceщ
8sequential_28/random_rotation_8/stateful_uniform/BitcastBitcastGsequential_28/random_rotation_8/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02:
8sequential_28/random_rotation_8/stateful_uniform/BitcastЏ
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stackё
Hsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_1ё
Hsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_2Ж
@sequential_28/random_rotation_8/stateful_uniform/strided_slice_1StridedSliceGsequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip:value:0Osequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack:output:0Qsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_1:output:0Qsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2B
@sequential_28/random_rotation_8/stateful_uniform/strided_slice_1€
:sequential_28/random_rotation_8/stateful_uniform/Bitcast_1BitcastIsequential_28/random_rotation_8/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02<
:sequential_28/random_rotation_8/stateful_uniform/Bitcast_1а
Msequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2O
Msequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2/algш
Isequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2?sequential_28/random_rotation_8/stateful_uniform/shape:output:0Csequential_28/random_rotation_8/stateful_uniform/Bitcast_1:output:0Asequential_28/random_rotation_8/stateful_uniform/Bitcast:output:0Vsequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2K
Isequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2Т
4sequential_28/random_rotation_8/stateful_uniform/subSub=sequential_28/random_rotation_8/stateful_uniform/max:output:0=sequential_28/random_rotation_8/stateful_uniform/min:output:0*
T0*
_output_shapes
: 26
4sequential_28/random_rotation_8/stateful_uniform/subѓ
4sequential_28/random_rotation_8/stateful_uniform/mulMulRsequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2:output:08sequential_28/random_rotation_8/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€26
4sequential_28/random_rotation_8/stateful_uniform/mulТ
0sequential_28/random_rotation_8/stateful_uniformAdd8sequential_28/random_rotation_8/stateful_uniform/mul:z:0=sequential_28/random_rotation_8/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential_28/random_rotation_8/stateful_uniform≥
5sequential_28/random_rotation_8/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?27
5sequential_28/random_rotation_8/rotation_matrix/sub/yю
3sequential_28/random_rotation_8/rotation_matrix/subSub*sequential_28/random_rotation_8/Cast_1:y:0>sequential_28/random_rotation_8/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 25
3sequential_28/random_rotation_8/rotation_matrix/sub’
3sequential_28/random_rotation_8/rotation_matrix/CosCos4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€25
3sequential_28/random_rotation_8/rotation_matrix/CosЈ
7sequential_28/random_rotation_8/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7sequential_28/random_rotation_8/rotation_matrix/sub_1/yД
5sequential_28/random_rotation_8/rotation_matrix/sub_1Sub*sequential_28/random_rotation_8/Cast_1:y:0@sequential_28/random_rotation_8/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/rotation_matrix/sub_1У
3sequential_28/random_rotation_8/rotation_matrix/mulMul7sequential_28/random_rotation_8/rotation_matrix/Cos:y:09sequential_28/random_rotation_8/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€25
3sequential_28/random_rotation_8/rotation_matrix/mul’
3sequential_28/random_rotation_8/rotation_matrix/SinSin4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€25
3sequential_28/random_rotation_8/rotation_matrix/SinЈ
7sequential_28/random_rotation_8/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7sequential_28/random_rotation_8/rotation_matrix/sub_2/yВ
5sequential_28/random_rotation_8/rotation_matrix/sub_2Sub(sequential_28/random_rotation_8/Cast:y:0@sequential_28/random_rotation_8/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/rotation_matrix/sub_2Ч
5sequential_28/random_rotation_8/rotation_matrix/mul_1Mul7sequential_28/random_rotation_8/rotation_matrix/Sin:y:09sequential_28/random_rotation_8/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/mul_1Ч
5sequential_28/random_rotation_8/rotation_matrix/sub_3Sub7sequential_28/random_rotation_8/rotation_matrix/mul:z:09sequential_28/random_rotation_8/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/sub_3Ч
5sequential_28/random_rotation_8/rotation_matrix/sub_4Sub7sequential_28/random_rotation_8/rotation_matrix/sub:z:09sequential_28/random_rotation_8/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/sub_4ї
9sequential_28/random_rotation_8/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2;
9sequential_28/random_rotation_8/rotation_matrix/truediv/y™
7sequential_28/random_rotation_8/rotation_matrix/truedivRealDiv9sequential_28/random_rotation_8/rotation_matrix/sub_4:z:0Bsequential_28/random_rotation_8/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€29
7sequential_28/random_rotation_8/rotation_matrix/truedivЈ
7sequential_28/random_rotation_8/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7sequential_28/random_rotation_8/rotation_matrix/sub_5/yВ
5sequential_28/random_rotation_8/rotation_matrix/sub_5Sub(sequential_28/random_rotation_8/Cast:y:0@sequential_28/random_rotation_8/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/rotation_matrix/sub_5ў
5sequential_28/random_rotation_8/rotation_matrix/Sin_1Sin4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Sin_1Ј
7sequential_28/random_rotation_8/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7sequential_28/random_rotation_8/rotation_matrix/sub_6/yД
5sequential_28/random_rotation_8/rotation_matrix/sub_6Sub*sequential_28/random_rotation_8/Cast_1:y:0@sequential_28/random_rotation_8/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/rotation_matrix/sub_6Щ
5sequential_28/random_rotation_8/rotation_matrix/mul_2Mul9sequential_28/random_rotation_8/rotation_matrix/Sin_1:y:09sequential_28/random_rotation_8/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/mul_2ў
5sequential_28/random_rotation_8/rotation_matrix/Cos_1Cos4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Cos_1Ј
7sequential_28/random_rotation_8/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7sequential_28/random_rotation_8/rotation_matrix/sub_7/yВ
5sequential_28/random_rotation_8/rotation_matrix/sub_7Sub(sequential_28/random_rotation_8/Cast:y:0@sequential_28/random_rotation_8/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/rotation_matrix/sub_7Щ
5sequential_28/random_rotation_8/rotation_matrix/mul_3Mul9sequential_28/random_rotation_8/rotation_matrix/Cos_1:y:09sequential_28/random_rotation_8/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/mul_3Ч
3sequential_28/random_rotation_8/rotation_matrix/addAddV29sequential_28/random_rotation_8/rotation_matrix/mul_2:z:09sequential_28/random_rotation_8/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€25
3sequential_28/random_rotation_8/rotation_matrix/addЧ
5sequential_28/random_rotation_8/rotation_matrix/sub_8Sub9sequential_28/random_rotation_8/rotation_matrix/sub_5:z:07sequential_28/random_rotation_8/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/sub_8њ
;sequential_28/random_rotation_8/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2=
;sequential_28/random_rotation_8/rotation_matrix/truediv_1/y∞
9sequential_28/random_rotation_8/rotation_matrix/truediv_1RealDiv9sequential_28/random_rotation_8/rotation_matrix/sub_8:z:0Dsequential_28/random_rotation_8/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2;
9sequential_28/random_rotation_8/rotation_matrix/truediv_1“
5sequential_28/random_rotation_8/rotation_matrix/ShapeShape4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*
_output_shapes
:27
5sequential_28/random_rotation_8/rotation_matrix/Shape‘
Csequential_28/random_rotation_8/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_28/random_rotation_8/rotation_matrix/strided_slice/stackЎ
Esequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_1Ў
Esequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_2В
=sequential_28/random_rotation_8/rotation_matrix/strided_sliceStridedSlice>sequential_28/random_rotation_8/rotation_matrix/Shape:output:0Lsequential_28/random_rotation_8/rotation_matrix/strided_slice/stack:output:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_1:output:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=sequential_28/random_rotation_8/rotation_matrix/strided_sliceў
5sequential_28/random_rotation_8/rotation_matrix/Cos_2Cos4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Cos_2я
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_2Ј
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_1StridedSlice9sequential_28/random_rotation_8/rotation_matrix/Cos_2:y:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_1ў
5sequential_28/random_rotation_8/rotation_matrix/Sin_2Sin4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Sin_2я
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_2Ј
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_2StridedSlice9sequential_28/random_rotation_8/rotation_matrix/Sin_2:y:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_2н
3sequential_28/random_rotation_8/rotation_matrix/NegNegHsequential_28/random_rotation_8/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€25
3sequential_28/random_rotation_8/rotation_matrix/Negя
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_2є
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_3StridedSlice;sequential_28/random_rotation_8/rotation_matrix/truediv:z:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_3ў
5sequential_28/random_rotation_8/rotation_matrix/Sin_3Sin4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Sin_3я
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_2Ј
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_4StridedSlice9sequential_28/random_rotation_8/rotation_matrix/Sin_3:y:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_4ў
5sequential_28/random_rotation_8/rotation_matrix/Cos_3Cos4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Cos_3я
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_2Ј
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_5StridedSlice9sequential_28/random_rotation_8/rotation_matrix/Cos_3:y:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_5я
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_2ї
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_6StridedSlice=sequential_28/random_rotation_8/rotation_matrix/truediv_1:z:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_6Љ
;sequential_28/random_rotation_8/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_28/random_rotation_8/rotation_matrix/zeros/mul/yђ
9sequential_28/random_rotation_8/rotation_matrix/zeros/mulMulFsequential_28/random_rotation_8/rotation_matrix/strided_slice:output:0Dsequential_28/random_rotation_8/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2;
9sequential_28/random_rotation_8/rotation_matrix/zeros/mulњ
<sequential_28/random_rotation_8/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2>
<sequential_28/random_rotation_8/rotation_matrix/zeros/Less/yІ
:sequential_28/random_rotation_8/rotation_matrix/zeros/LessLess=sequential_28/random_rotation_8/rotation_matrix/zeros/mul:z:0Esequential_28/random_rotation_8/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2<
:sequential_28/random_rotation_8/rotation_matrix/zeros/Less¬
>sequential_28/random_rotation_8/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_28/random_rotation_8/rotation_matrix/zeros/packed/1√
<sequential_28/random_rotation_8/rotation_matrix/zeros/packedPackFsequential_28/random_rotation_8/rotation_matrix/strided_slice:output:0Gsequential_28/random_rotation_8/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2>
<sequential_28/random_rotation_8/rotation_matrix/zeros/packedњ
;sequential_28/random_rotation_8/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2=
;sequential_28/random_rotation_8/rotation_matrix/zeros/Constµ
5sequential_28/random_rotation_8/rotation_matrix/zerosFillEsequential_28/random_rotation_8/rotation_matrix/zeros/packed:output:0Dsequential_28/random_rotation_8/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/zerosЉ
;sequential_28/random_rotation_8/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_28/random_rotation_8/rotation_matrix/concat/axisи
6sequential_28/random_rotation_8/rotation_matrix/concatConcatV2Hsequential_28/random_rotation_8/rotation_matrix/strided_slice_1:output:07sequential_28/random_rotation_8/rotation_matrix/Neg:y:0Hsequential_28/random_rotation_8/rotation_matrix/strided_slice_3:output:0Hsequential_28/random_rotation_8/rotation_matrix/strided_slice_4:output:0Hsequential_28/random_rotation_8/rotation_matrix/strided_slice_5:output:0Hsequential_28/random_rotation_8/rotation_matrix/strided_slice_6:output:0>sequential_28/random_rotation_8/rotation_matrix/zeros:output:0Dsequential_28/random_rotation_8/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€28
6sequential_28/random_rotation_8/rotation_matrix/concat…
/sequential_28/random_rotation_8/transform/ShapeShape7sequential_28/random_flip_8/random_flip_up_down/add:z:0*
T0*
_output_shapes
:21
/sequential_28/random_rotation_8/transform/Shape»
=sequential_28/random_rotation_8/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_28/random_rotation_8/transform/strided_slice/stackћ
?sequential_28/random_rotation_8/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_28/random_rotation_8/transform/strided_slice/stack_1ћ
?sequential_28/random_rotation_8/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_28/random_rotation_8/transform/strided_slice/stack_2 
7sequential_28/random_rotation_8/transform/strided_sliceStridedSlice8sequential_28/random_rotation_8/transform/Shape:output:0Fsequential_28/random_rotation_8/transform/strided_slice/stack:output:0Hsequential_28/random_rotation_8/transform/strided_slice/stack_1:output:0Hsequential_28/random_rotation_8/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:29
7sequential_28/random_rotation_8/transform/strided_slice±
4sequential_28/random_rotation_8/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_28/random_rotation_8/transform/fill_valueЪ
Dsequential_28/random_rotation_8/transform/ImageProjectiveTransformV3ImageProjectiveTransformV37sequential_28/random_flip_8/random_flip_up_down/add:z:0?sequential_28/random_rotation_8/rotation_matrix/concat:output:0@sequential_28/random_rotation_8/transform/strided_slice:output:0=sequential_28/random_rotation_8/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2F
Dsequential_28/random_rotation_8/transform/ImageProjectiveTransformV3≥
conv2d_89/Conv2D/ReadVariableOpReadVariableOp(conv2d_89_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_89/Conv2D/ReadVariableOpЧ
conv2d_89/Conv2DConv2DYsequential_28/random_rotation_8/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_89/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
2
conv2d_89/Conv2D™
 conv2d_89/BiasAdd/ReadVariableOpReadVariableOp)conv2d_89_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_89/BiasAdd/ReadVariableOp≤
conv2d_89/BiasAddBiasAddconv2d_89/Conv2D:output:0(conv2d_89/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
conv2d_89/BiasAddА
conv2d_89/ReluReluconv2d_89/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
conv2d_89/Relu 
max_pooling2d_89/MaxPoolMaxPoolconv2d_89/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_89/MaxPool≥
conv2d_90/Conv2D/ReadVariableOpReadVariableOp(conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_90/Conv2D/ReadVariableOpЁ
conv2d_90/Conv2DConv2D!max_pooling2d_89/MaxPool:output:0'conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
2
conv2d_90/Conv2D™
 conv2d_90/BiasAdd/ReadVariableOpReadVariableOp)conv2d_90_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_90/BiasAdd/ReadVariableOp∞
conv2d_90/BiasAddBiasAddconv2d_90/Conv2D:output:0(conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
conv2d_90/BiasAdd~
conv2d_90/ReluReluconv2d_90/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
conv2d_90/Relu 
max_pooling2d_90/MaxPoolMaxPoolconv2d_90/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_90/MaxPool≥
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_91/Conv2D/ReadVariableOpЁ
conv2d_91/Conv2DConv2D!max_pooling2d_90/MaxPool:output:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
conv2d_91/Conv2D™
 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_91/BiasAdd/ReadVariableOp∞
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_91/BiasAdd~
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_91/Relu 
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_91/MaxPool≥
conv2d_92/Conv2D/ReadVariableOpReadVariableOp(conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_92/Conv2D/ReadVariableOpЁ
conv2d_92/Conv2DConv2D!max_pooling2d_91/MaxPool:output:0'conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_92/Conv2D™
 conv2d_92/BiasAdd/ReadVariableOpReadVariableOp)conv2d_92_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_92/BiasAdd/ReadVariableOp∞
conv2d_92/BiasAddBiasAddconv2d_92/Conv2D:output:0(conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_92/BiasAdd~
conv2d_92/ReluReluconv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_92/Relu 
max_pooling2d_92/MaxPoolMaxPoolconv2d_92/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_92/MaxPool≥
conv2d_93/Conv2D/ReadVariableOpReadVariableOp(conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_93/Conv2D/ReadVariableOpЁ
conv2d_93/Conv2DConv2D!max_pooling2d_92/MaxPool:output:0'conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_93/Conv2D™
 conv2d_93/BiasAdd/ReadVariableOpReadVariableOp)conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_93/BiasAdd/ReadVariableOp∞
conv2d_93/BiasAddBiasAddconv2d_93/Conv2D:output:0(conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_93/BiasAdd~
conv2d_93/ReluReluconv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_93/Relu 
max_pooling2d_93/MaxPoolMaxPoolconv2d_93/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_93/MaxPool≥
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_94/Conv2D/ReadVariableOpЁ
conv2d_94/Conv2DConv2D!max_pooling2d_93/MaxPool:output:0'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_94/Conv2D™
 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_94/BiasAdd/ReadVariableOp∞
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_94/BiasAdd~
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_94/Relu 
max_pooling2d_94/MaxPoolMaxPoolconv2d_94/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_94/MaxPoolu
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_14/Const§
flatten_14/ReshapeReshape!max_pooling2d_94/MaxPool:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_14/Reshape©
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02 
dense_28/MatMul/ReadVariableOp£
dense_28/MatMulMatMulflatten_14/Reshape:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/MatMulІ
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_28/BiasAdd/ReadVariableOp•
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/BiasAdds
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/Relu®
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_29/MatMul/ReadVariableOp£
dense_29/MatMulMatMuldense_28/Relu:activations:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/MatMulІ
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_29/BiasAdd/ReadVariableOp•
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/BiasAdd|
dense_29/SoftmaxSoftmaxdense_29/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/Softmax‘
IdentityIdentitydense_29/Softmax:softmax:0!^conv2d_89/BiasAdd/ReadVariableOp ^conv2d_89/Conv2D/ReadVariableOp!^conv2d_90/BiasAdd/ReadVariableOp ^conv2d_90/Conv2D/ReadVariableOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^conv2d_92/BiasAdd/ReadVariableOp ^conv2d_92/Conv2D/ReadVariableOp!^conv2d_93/BiasAdd/ReadVariableOp ^conv2d_93/Conv2D/ReadVariableOp!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp@^sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€АА: : : : : : : : : : : : : : : : : 2D
 conv2d_89/BiasAdd/ReadVariableOp conv2d_89/BiasAdd/ReadVariableOp2B
conv2d_89/Conv2D/ReadVariableOpconv2d_89/Conv2D/ReadVariableOp2D
 conv2d_90/BiasAdd/ReadVariableOp conv2d_90/BiasAdd/ReadVariableOp2B
conv2d_90/Conv2D/ReadVariableOpconv2d_90/Conv2D/ReadVariableOp2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 conv2d_92/BiasAdd/ReadVariableOp conv2d_92/BiasAdd/ReadVariableOp2B
conv2d_92/Conv2D/ReadVariableOpconv2d_92/Conv2D/ReadVariableOp2D
 conv2d_93/BiasAdd/ReadVariableOp conv2d_93/BiasAdd/ReadVariableOp2B
conv2d_93/Conv2D/ReadVariableOpconv2d_93/Conv2D/ReadVariableOp2D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2В
?sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip?sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namesequential_27_input
Ц
ю
E__inference_conv2d_90_layer_call_and_return_conditional_losses_145078

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€}}@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
»
Я
*__inference_conv2d_94_layer_call_fn_146965

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_1451502
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ҐЃ
ж
I__inference_sequential_28_layer_call_and_return_conditional_losses_146682

inputsH
:random_rotation_8_stateful_uniform_rngreadandskip_resource:	
identityИҐ1random_rotation_8/stateful_uniform/RngReadAndSkipЁ
7random_flip_8/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€АА29
7random_flip_8/random_flip_left_right/control_dependency»
*random_flip_8/random_flip_left_right/ShapeShape@random_flip_8/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_8/random_flip_left_right/ShapeЊ
8random_flip_8/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_8/random_flip_left_right/strided_slice/stack¬
:random_flip_8/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_8/random_flip_left_right/strided_slice/stack_1¬
:random_flip_8/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_8/random_flip_left_right/strided_slice/stack_2ј
2random_flip_8/random_flip_left_right/strided_sliceStridedSlice3random_flip_8/random_flip_left_right/Shape:output:0Arandom_flip_8/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_8/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_8/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_8/random_flip_left_right/strided_sliceй
9random_flip_8/random_flip_left_right/random_uniform/shapePack;random_flip_8/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_8/random_flip_left_right/random_uniform/shapeЈ
7random_flip_8/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_8/random_flip_left_right/random_uniform/minЈ
7random_flip_8/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7random_flip_8/random_flip_left_right/random_uniform/maxЦ
Arandom_flip_8/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_8/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02C
Arandom_flip_8/random_flip_left_right/random_uniform/RandomUniformµ
7random_flip_8/random_flip_left_right/random_uniform/MulMulJrandom_flip_8/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_8/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€29
7random_flip_8/random_flip_left_right/random_uniform/MulЃ
4random_flip_8/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_8/random_flip_left_right/Reshape/shape/1Ѓ
4random_flip_8/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_8/random_flip_left_right/Reshape/shape/2Ѓ
4random_flip_8/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_8/random_flip_left_right/Reshape/shape/3Ш
2random_flip_8/random_flip_left_right/Reshape/shapePack;random_flip_8/random_flip_left_right/strided_slice:output:0=random_flip_8/random_flip_left_right/Reshape/shape/1:output:0=random_flip_8/random_flip_left_right/Reshape/shape/2:output:0=random_flip_8/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_8/random_flip_left_right/Reshape/shapeЫ
,random_flip_8/random_flip_left_right/ReshapeReshape;random_flip_8/random_flip_left_right/random_uniform/Mul:z:0;random_flip_8/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2.
,random_flip_8/random_flip_left_right/Reshape“
*random_flip_8/random_flip_left_right/RoundRound5random_flip_8/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2,
*random_flip_8/random_flip_left_right/Roundі
3random_flip_8/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_8/random_flip_left_right/ReverseV2/axis©
.random_flip_8/random_flip_left_right/ReverseV2	ReverseV2@random_flip_8/random_flip_left_right/control_dependency:output:0<random_flip_8/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА20
.random_flip_8/random_flip_left_right/ReverseV2А
(random_flip_8/random_flip_left_right/mulMul.random_flip_8/random_flip_left_right/Round:y:07random_flip_8/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2*
(random_flip_8/random_flip_left_right/mulЭ
*random_flip_8/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2,
*random_flip_8/random_flip_left_right/sub/xъ
(random_flip_8/random_flip_left_right/subSub3random_flip_8/random_flip_left_right/sub/x:output:0.random_flip_8/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2*
(random_flip_8/random_flip_left_right/subЛ
*random_flip_8/random_flip_left_right/mul_1Mul,random_flip_8/random_flip_left_right/sub:z:0@random_flip_8/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2,
*random_flip_8/random_flip_left_right/mul_1ч
(random_flip_8/random_flip_left_right/addAddV2,random_flip_8/random_flip_left_right/mul:z:0.random_flip_8/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2*
(random_flip_8/random_flip_left_right/addЯ
4random_flip_8/random_flip_up_down/control_dependencyIdentity,random_flip_8/random_flip_left_right/add:z:0*
T0*;
_class1
/-loc:@random_flip_8/random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€АА26
4random_flip_8/random_flip_up_down/control_dependencyњ
'random_flip_8/random_flip_up_down/ShapeShape=random_flip_8/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_8/random_flip_up_down/ShapeЄ
5random_flip_8/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_8/random_flip_up_down/strided_slice/stackЉ
7random_flip_8/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_8/random_flip_up_down/strided_slice/stack_1Љ
7random_flip_8/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_8/random_flip_up_down/strided_slice/stack_2Ѓ
/random_flip_8/random_flip_up_down/strided_sliceStridedSlice0random_flip_8/random_flip_up_down/Shape:output:0>random_flip_8/random_flip_up_down/strided_slice/stack:output:0@random_flip_8/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_8/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_8/random_flip_up_down/strided_sliceа
6random_flip_8/random_flip_up_down/random_uniform/shapePack8random_flip_8/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_8/random_flip_up_down/random_uniform/shape±
4random_flip_8/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_8/random_flip_up_down/random_uniform/min±
4random_flip_8/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?26
4random_flip_8/random_flip_up_down/random_uniform/maxН
>random_flip_8/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_8/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02@
>random_flip_8/random_flip_up_down/random_uniform/RandomUniform©
4random_flip_8/random_flip_up_down/random_uniform/MulMulGrandom_flip_8/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_8/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€26
4random_flip_8/random_flip_up_down/random_uniform/Mul®
1random_flip_8/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_8/random_flip_up_down/Reshape/shape/1®
1random_flip_8/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_8/random_flip_up_down/Reshape/shape/2®
1random_flip_8/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_8/random_flip_up_down/Reshape/shape/3Ж
/random_flip_8/random_flip_up_down/Reshape/shapePack8random_flip_8/random_flip_up_down/strided_slice:output:0:random_flip_8/random_flip_up_down/Reshape/shape/1:output:0:random_flip_8/random_flip_up_down/Reshape/shape/2:output:0:random_flip_8/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_8/random_flip_up_down/Reshape/shapeП
)random_flip_8/random_flip_up_down/ReshapeReshape8random_flip_8/random_flip_up_down/random_uniform/Mul:z:08random_flip_8/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2+
)random_flip_8/random_flip_up_down/Reshape…
'random_flip_8/random_flip_up_down/RoundRound2random_flip_8/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'random_flip_8/random_flip_up_down/RoundЃ
0random_flip_8/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_8/random_flip_up_down/ReverseV2/axisЭ
+random_flip_8/random_flip_up_down/ReverseV2	ReverseV2=random_flip_8/random_flip_up_down/control_dependency:output:09random_flip_8/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2-
+random_flip_8/random_flip_up_down/ReverseV2ф
%random_flip_8/random_flip_up_down/mulMul+random_flip_8/random_flip_up_down/Round:y:04random_flip_8/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2'
%random_flip_8/random_flip_up_down/mulЧ
'random_flip_8/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_flip_8/random_flip_up_down/sub/xо
%random_flip_8/random_flip_up_down/subSub0random_flip_8/random_flip_up_down/sub/x:output:0+random_flip_8/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2'
%random_flip_8/random_flip_up_down/sub€
'random_flip_8/random_flip_up_down/mul_1Mul)random_flip_8/random_flip_up_down/sub:z:0=random_flip_8/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2)
'random_flip_8/random_flip_up_down/mul_1л
%random_flip_8/random_flip_up_down/addAddV2)random_flip_8/random_flip_up_down/mul:z:0+random_flip_8/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2'
%random_flip_8/random_flip_up_down/addЛ
random_rotation_8/ShapeShape)random_flip_8/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_8/ShapeШ
%random_rotation_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_8/strided_slice/stackЬ
'random_rotation_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice/stack_1Ь
'random_rotation_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice/stack_2ќ
random_rotation_8/strided_sliceStridedSlice random_rotation_8/Shape:output:0.random_rotation_8/strided_slice/stack:output:00random_rotation_8/strided_slice/stack_1:output:00random_rotation_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_8/strided_sliceЬ
'random_rotation_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice_1/stack†
)random_rotation_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_1/stack_1†
)random_rotation_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_1/stack_2Ў
!random_rotation_8/strided_slice_1StridedSlice random_rotation_8/Shape:output:00random_rotation_8/strided_slice_1/stack:output:02random_rotation_8/strided_slice_1/stack_1:output:02random_rotation_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_8/strided_slice_1Ф
random_rotation_8/CastCast*random_rotation_8/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_8/CastЬ
'random_rotation_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice_2/stack†
)random_rotation_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_2/stack_1†
)random_rotation_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_2/stack_2Ў
!random_rotation_8/strided_slice_2StridedSlice random_rotation_8/Shape:output:00random_rotation_8/strided_slice_2/stack:output:02random_rotation_8/strided_slice_2/stack_1:output:02random_rotation_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_8/strided_slice_2Ш
random_rotation_8/Cast_1Cast*random_rotation_8/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_8/Cast_1і
(random_rotation_8/stateful_uniform/shapePack(random_rotation_8/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_8/stateful_uniform/shapeХ
&random_rotation_8/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†њ2(
&random_rotation_8/stateful_uniform/minХ
&random_rotation_8/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†?2(
&random_rotation_8/stateful_uniform/maxЮ
(random_rotation_8/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_8/stateful_uniform/Constб
'random_rotation_8/stateful_uniform/ProdProd1random_rotation_8/stateful_uniform/shape:output:01random_rotation_8/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/stateful_uniform/ProdШ
)random_rotation_8/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_8/stateful_uniform/Cast/xј
)random_rotation_8/stateful_uniform/Cast_1Cast0random_rotation_8/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_8/stateful_uniform/Cast_1≥
1random_rotation_8/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_8_stateful_uniform_rngreadandskip_resource2random_rotation_8/stateful_uniform/Cast/x:output:0-random_rotation_8/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_8/stateful_uniform/RngReadAndSkipЇ
6random_rotation_8/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_8/stateful_uniform/strided_slice/stackЊ
8random_rotation_8/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_8/stateful_uniform/strided_slice/stack_1Њ
8random_rotation_8/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_8/stateful_uniform/strided_slice/stack_2Ї
0random_rotation_8/stateful_uniform/strided_sliceStridedSlice9random_rotation_8/stateful_uniform/RngReadAndSkip:value:0?random_rotation_8/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_8/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_8/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_8/stateful_uniform/strided_sliceѕ
*random_rotation_8/stateful_uniform/BitcastBitcast9random_rotation_8/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_8/stateful_uniform/BitcastЊ
8random_rotation_8/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_8/stateful_uniform/strided_slice_1/stack¬
:random_rotation_8/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_8/stateful_uniform/strided_slice_1/stack_1¬
:random_rotation_8/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_8/stateful_uniform/strided_slice_1/stack_2≤
2random_rotation_8/stateful_uniform/strided_slice_1StridedSlice9random_rotation_8/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_8/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_8/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_8/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_8/stateful_uniform/strided_slice_1’
,random_rotation_8/stateful_uniform/Bitcast_1Bitcast;random_rotation_8/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_8/stateful_uniform/Bitcast_1ƒ
?random_rotation_8/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_8/stateful_uniform/StatelessRandomUniformV2/alg§
;random_rotation_8/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_8/stateful_uniform/shape:output:05random_rotation_8/stateful_uniform/Bitcast_1:output:03random_rotation_8/stateful_uniform/Bitcast:output:0Hrandom_rotation_8/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2=
;random_rotation_8/stateful_uniform/StatelessRandomUniformV2Џ
&random_rotation_8/stateful_uniform/subSub/random_rotation_8/stateful_uniform/max:output:0/random_rotation_8/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_8/stateful_uniform/subч
&random_rotation_8/stateful_uniform/mulMulDrandom_rotation_8/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_8/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2(
&random_rotation_8/stateful_uniform/mulЏ
"random_rotation_8/stateful_uniformAdd*random_rotation_8/stateful_uniform/mul:z:0/random_rotation_8/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2$
"random_rotation_8/stateful_uniformЧ
'random_rotation_8/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation_8/rotation_matrix/sub/y∆
%random_rotation_8/rotation_matrix/subSubrandom_rotation_8/Cast_1:y:00random_rotation_8/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_8/rotation_matrix/subЂ
%random_rotation_8/rotation_matrix/CosCos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/CosЫ
)random_rotation_8/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_1/yћ
'random_rotation_8/rotation_matrix/sub_1Subrandom_rotation_8/Cast_1:y:02random_rotation_8/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_1џ
%random_rotation_8/rotation_matrix/mulMul)random_rotation_8/rotation_matrix/Cos:y:0+random_rotation_8/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/mulЂ
%random_rotation_8/rotation_matrix/SinSin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/SinЫ
)random_rotation_8/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_2/y 
'random_rotation_8/rotation_matrix/sub_2Subrandom_rotation_8/Cast:y:02random_rotation_8/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_2я
'random_rotation_8/rotation_matrix/mul_1Mul)random_rotation_8/rotation_matrix/Sin:y:0+random_rotation_8/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/mul_1я
'random_rotation_8/rotation_matrix/sub_3Sub)random_rotation_8/rotation_matrix/mul:z:0+random_rotation_8/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/sub_3я
'random_rotation_8/rotation_matrix/sub_4Sub)random_rotation_8/rotation_matrix/sub:z:0+random_rotation_8/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/sub_4Я
+random_rotation_8/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_8/rotation_matrix/truediv/yт
)random_rotation_8/rotation_matrix/truedivRealDiv+random_rotation_8/rotation_matrix/sub_4:z:04random_rotation_8/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2+
)random_rotation_8/rotation_matrix/truedivЫ
)random_rotation_8/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_5/y 
'random_rotation_8/rotation_matrix/sub_5Subrandom_rotation_8/Cast:y:02random_rotation_8/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_5ѓ
'random_rotation_8/rotation_matrix/Sin_1Sin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Sin_1Ы
)random_rotation_8/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_6/yћ
'random_rotation_8/rotation_matrix/sub_6Subrandom_rotation_8/Cast_1:y:02random_rotation_8/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_6б
'random_rotation_8/rotation_matrix/mul_2Mul+random_rotation_8/rotation_matrix/Sin_1:y:0+random_rotation_8/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/mul_2ѓ
'random_rotation_8/rotation_matrix/Cos_1Cos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Cos_1Ы
)random_rotation_8/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_7/y 
'random_rotation_8/rotation_matrix/sub_7Subrandom_rotation_8/Cast:y:02random_rotation_8/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_7б
'random_rotation_8/rotation_matrix/mul_3Mul+random_rotation_8/rotation_matrix/Cos_1:y:0+random_rotation_8/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/mul_3я
%random_rotation_8/rotation_matrix/addAddV2+random_rotation_8/rotation_matrix/mul_2:z:0+random_rotation_8/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/addя
'random_rotation_8/rotation_matrix/sub_8Sub+random_rotation_8/rotation_matrix/sub_5:z:0)random_rotation_8/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/sub_8£
-random_rotation_8/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_8/rotation_matrix/truediv_1/yш
+random_rotation_8/rotation_matrix/truediv_1RealDiv+random_rotation_8/rotation_matrix/sub_8:z:06random_rotation_8/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2-
+random_rotation_8/rotation_matrix/truediv_1®
'random_rotation_8/rotation_matrix/ShapeShape&random_rotation_8/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_8/rotation_matrix/ShapeЄ
5random_rotation_8/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_8/rotation_matrix/strided_slice/stackЉ
7random_rotation_8/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_8/rotation_matrix/strided_slice/stack_1Љ
7random_rotation_8/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_8/rotation_matrix/strided_slice/stack_2Ѓ
/random_rotation_8/rotation_matrix/strided_sliceStridedSlice0random_rotation_8/rotation_matrix/Shape:output:0>random_rotation_8/rotation_matrix/strided_slice/stack:output:0@random_rotation_8/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_8/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_8/rotation_matrix/strided_sliceѓ
'random_rotation_8/rotation_matrix/Cos_2Cos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Cos_2√
7random_rotation_8/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_1/stack«
9random_rotation_8/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_1/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_1/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_1StridedSlice+random_rotation_8/rotation_matrix/Cos_2:y:0@random_rotation_8/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_1ѓ
'random_rotation_8/rotation_matrix/Sin_2Sin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Sin_2√
7random_rotation_8/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_2/stack«
9random_rotation_8/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_2/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_2/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_2StridedSlice+random_rotation_8/rotation_matrix/Sin_2:y:0@random_rotation_8/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_2√
%random_rotation_8/rotation_matrix/NegNeg:random_rotation_8/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/Neg√
7random_rotation_8/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_3/stack«
9random_rotation_8/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_3/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_3/stack_2е
1random_rotation_8/rotation_matrix/strided_slice_3StridedSlice-random_rotation_8/rotation_matrix/truediv:z:0@random_rotation_8/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_3ѓ
'random_rotation_8/rotation_matrix/Sin_3Sin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Sin_3√
7random_rotation_8/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_4/stack«
9random_rotation_8/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_4/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_4/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_4StridedSlice+random_rotation_8/rotation_matrix/Sin_3:y:0@random_rotation_8/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_4ѓ
'random_rotation_8/rotation_matrix/Cos_3Cos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Cos_3√
7random_rotation_8/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_5/stack«
9random_rotation_8/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_5/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_5/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_5StridedSlice+random_rotation_8/rotation_matrix/Cos_3:y:0@random_rotation_8/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_5√
7random_rotation_8/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_6/stack«
9random_rotation_8/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_6/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_6/stack_2з
1random_rotation_8/rotation_matrix/strided_slice_6StridedSlice/random_rotation_8/rotation_matrix/truediv_1:z:0@random_rotation_8/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_6†
-random_rotation_8/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_8/rotation_matrix/zeros/mul/yф
+random_rotation_8/rotation_matrix/zeros/mulMul8random_rotation_8/rotation_matrix/strided_slice:output:06random_rotation_8/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_8/rotation_matrix/zeros/mul£
.random_rotation_8/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и20
.random_rotation_8/rotation_matrix/zeros/Less/yп
,random_rotation_8/rotation_matrix/zeros/LessLess/random_rotation_8/rotation_matrix/zeros/mul:z:07random_rotation_8/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_8/rotation_matrix/zeros/Less¶
0random_rotation_8/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_8/rotation_matrix/zeros/packed/1Л
.random_rotation_8/rotation_matrix/zeros/packedPack8random_rotation_8/rotation_matrix/strided_slice:output:09random_rotation_8/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_8/rotation_matrix/zeros/packed£
-random_rotation_8/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_8/rotation_matrix/zeros/Constэ
'random_rotation_8/rotation_matrix/zerosFill7random_rotation_8/rotation_matrix/zeros/packed:output:06random_rotation_8/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/zeros†
-random_rotation_8/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_8/rotation_matrix/concat/axis№
(random_rotation_8/rotation_matrix/concatConcatV2:random_rotation_8/rotation_matrix/strided_slice_1:output:0)random_rotation_8/rotation_matrix/Neg:y:0:random_rotation_8/rotation_matrix/strided_slice_3:output:0:random_rotation_8/rotation_matrix/strided_slice_4:output:0:random_rotation_8/rotation_matrix/strided_slice_5:output:0:random_rotation_8/rotation_matrix/strided_slice_6:output:00random_rotation_8/rotation_matrix/zeros:output:06random_rotation_8/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2*
(random_rotation_8/rotation_matrix/concatЯ
!random_rotation_8/transform/ShapeShape)random_flip_8/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_8/transform/Shapeђ
/random_rotation_8/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_8/transform/strided_slice/stack∞
1random_rotation_8/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_8/transform/strided_slice/stack_1∞
1random_rotation_8/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_8/transform/strided_slice/stack_2ц
)random_rotation_8/transform/strided_sliceStridedSlice*random_rotation_8/transform/Shape:output:08random_rotation_8/transform/strided_slice/stack:output:0:random_rotation_8/transform/strided_slice/stack_1:output:0:random_rotation_8/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_8/transform/strided_sliceХ
&random_rotation_8/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_8/transform/fill_value∆
6random_rotation_8/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_8/random_flip_up_down/add:z:01random_rotation_8/rotation_matrix/concat:output:02random_rotation_8/transform/strided_slice:output:0/random_rotation_8/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_8/transform/ImageProjectiveTransformV3Ё
IdentityIdentityKrandom_rotation_8/transform/ImageProjectiveTransformV3:transformed_images:02^random_rotation_8/stateful_uniform/RngReadAndSkip*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2f
1random_rotation_8/stateful_uniform/RngReadAndSkip1random_rotation_8/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ц
ю
E__inference_conv2d_92_layer_call_and_return_conditional_losses_146936

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
№
M
1__inference_max_pooling2d_90_layer_call_fn_144992

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_1449862
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
°
Ч
)__inference_dense_28_layer_call_fn_146996

inputs
unknown:	А@
	unknown_0:@
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1451762
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
и
b
F__inference_flatten_14_layer_call_and_return_conditional_losses_146987

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Рћ
ы
I__inference_sequential_31_layer_call_and_return_conditional_losses_146110

inputsV
Hsequential_28_random_rotation_8_stateful_uniform_rngreadandskip_resource:	B
(conv2d_89_conv2d_readvariableop_resource: 7
)conv2d_89_biasadd_readvariableop_resource: B
(conv2d_90_conv2d_readvariableop_resource: @7
)conv2d_90_biasadd_readvariableop_resource:@B
(conv2d_91_conv2d_readvariableop_resource:@@7
)conv2d_91_biasadd_readvariableop_resource:@B
(conv2d_92_conv2d_readvariableop_resource:@@7
)conv2d_92_biasadd_readvariableop_resource:@B
(conv2d_93_conv2d_readvariableop_resource:@@7
)conv2d_93_biasadd_readvariableop_resource:@B
(conv2d_94_conv2d_readvariableop_resource:@@7
)conv2d_94_biasadd_readvariableop_resource:@:
'dense_28_matmul_readvariableop_resource:	А@6
(dense_28_biasadd_readvariableop_resource:@9
'dense_29_matmul_readvariableop_resource:@6
(dense_29_biasadd_readvariableop_resource:
identityИҐ conv2d_89/BiasAdd/ReadVariableOpҐconv2d_89/Conv2D/ReadVariableOpҐ conv2d_90/BiasAdd/ReadVariableOpҐconv2d_90/Conv2D/ReadVariableOpҐ conv2d_91/BiasAdd/ReadVariableOpҐconv2d_91/Conv2D/ReadVariableOpҐ conv2d_92/BiasAdd/ReadVariableOpҐconv2d_92/Conv2D/ReadVariableOpҐ conv2d_93/BiasAdd/ReadVariableOpҐconv2d_93/Conv2D/ReadVariableOpҐ conv2d_94/BiasAdd/ReadVariableOpҐconv2d_94/Conv2D/ReadVariableOpҐdense_28/BiasAdd/ReadVariableOpҐdense_28/MatMul/ReadVariableOpҐdense_29/BiasAdd/ReadVariableOpҐdense_29/MatMul/ReadVariableOpҐ?sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkipЭ
$sequential_27/resizing_7/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_27/resizing_7/resize/size€
.sequential_27/resizing_7/resize/ResizeBilinearResizeBilinearinputs-sequential_27/resizing_7/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(20
.sequential_27/resizing_7/resize/ResizeBilinearЙ
 sequential_27/rescaling_7/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2"
 sequential_27/rescaling_7/Cast/xН
"sequential_27/rescaling_7/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_27/rescaling_7/Cast_1/xн
sequential_27/rescaling_7/mulMul?sequential_27/resizing_7/resize/ResizeBilinear:resized_images:0)sequential_27/rescaling_7/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
sequential_27/rescaling_7/mul”
sequential_27/rescaling_7/addAddV2!sequential_27/rescaling_7/mul:z:0+sequential_27/rescaling_7/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
sequential_27/rescaling_7/addЂ
Esequential_28/random_flip_8/random_flip_left_right/control_dependencyIdentity!sequential_27/rescaling_7/add:z:0*
T0*0
_class&
$"loc:@sequential_27/rescaling_7/add*1
_output_shapes
:€€€€€€€€€АА2G
Esequential_28/random_flip_8/random_flip_left_right/control_dependencyт
8sequential_28/random_flip_8/random_flip_left_right/ShapeShapeNsequential_28/random_flip_8/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2:
8sequential_28/random_flip_8/random_flip_left_right/ShapeЏ
Fsequential_28/random_flip_8/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fsequential_28/random_flip_8/random_flip_left_right/strided_slice/stackё
Hsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_1ё
Hsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_2Ф
@sequential_28/random_flip_8/random_flip_left_right/strided_sliceStridedSliceAsequential_28/random_flip_8/random_flip_left_right/Shape:output:0Osequential_28/random_flip_8/random_flip_left_right/strided_slice/stack:output:0Qsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_1:output:0Qsequential_28/random_flip_8/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2B
@sequential_28/random_flip_8/random_flip_left_right/strided_sliceУ
Gsequential_28/random_flip_8/random_flip_left_right/random_uniform/shapePackIsequential_28/random_flip_8/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2I
Gsequential_28/random_flip_8/random_flip_left_right/random_uniform/shape”
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2G
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/min”
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2G
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/maxј
Osequential_28/random_flip_8/random_flip_left_right/random_uniform/RandomUniformRandomUniformPsequential_28/random_flip_8/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02Q
Osequential_28/random_flip_8/random_flip_left_right/random_uniform/RandomUniformн
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/MulMulXsequential_28/random_flip_8/random_flip_left_right/random_uniform/RandomUniform:output:0Nsequential_28/random_flip_8/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€2G
Esequential_28/random_flip_8/random_flip_left_right/random_uniform/Mul 
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/1 
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/2 
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_28/random_flip_8/random_flip_left_right/Reshape/shape/3м
@sequential_28/random_flip_8/random_flip_left_right/Reshape/shapePackIsequential_28/random_flip_8/random_flip_left_right/strided_slice:output:0Ksequential_28/random_flip_8/random_flip_left_right/Reshape/shape/1:output:0Ksequential_28/random_flip_8/random_flip_left_right/Reshape/shape/2:output:0Ksequential_28/random_flip_8/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2B
@sequential_28/random_flip_8/random_flip_left_right/Reshape/shape”
:sequential_28/random_flip_8/random_flip_left_right/ReshapeReshapeIsequential_28/random_flip_8/random_flip_left_right/random_uniform/Mul:z:0Isequential_28/random_flip_8/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2<
:sequential_28/random_flip_8/random_flip_left_right/Reshapeь
8sequential_28/random_flip_8/random_flip_left_right/RoundRoundCsequential_28/random_flip_8/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2:
8sequential_28/random_flip_8/random_flip_left_right/Round–
Asequential_28/random_flip_8/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_28/random_flip_8/random_flip_left_right/ReverseV2/axisб
<sequential_28/random_flip_8/random_flip_left_right/ReverseV2	ReverseV2Nsequential_28/random_flip_8/random_flip_left_right/control_dependency:output:0Jsequential_28/random_flip_8/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2>
<sequential_28/random_flip_8/random_flip_left_right/ReverseV2Є
6sequential_28/random_flip_8/random_flip_left_right/mulMul<sequential_28/random_flip_8/random_flip_left_right/Round:y:0Esequential_28/random_flip_8/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА28
6sequential_28/random_flip_8/random_flip_left_right/mulє
8sequential_28/random_flip_8/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2:
8sequential_28/random_flip_8/random_flip_left_right/sub/x≤
6sequential_28/random_flip_8/random_flip_left_right/subSubAsequential_28/random_flip_8/random_flip_left_right/sub/x:output:0<sequential_28/random_flip_8/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€28
6sequential_28/random_flip_8/random_flip_left_right/sub√
8sequential_28/random_flip_8/random_flip_left_right/mul_1Mul:sequential_28/random_flip_8/random_flip_left_right/sub:z:0Nsequential_28/random_flip_8/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2:
8sequential_28/random_flip_8/random_flip_left_right/mul_1ѓ
6sequential_28/random_flip_8/random_flip_left_right/addAddV2:sequential_28/random_flip_8/random_flip_left_right/mul:z:0<sequential_28/random_flip_8/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА28
6sequential_28/random_flip_8/random_flip_left_right/add„
Bsequential_28/random_flip_8/random_flip_up_down/control_dependencyIdentity:sequential_28/random_flip_8/random_flip_left_right/add:z:0*
T0*I
_class?
=;loc:@sequential_28/random_flip_8/random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€АА2D
Bsequential_28/random_flip_8/random_flip_up_down/control_dependencyй
5sequential_28/random_flip_8/random_flip_up_down/ShapeShapeKsequential_28/random_flip_8/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:27
5sequential_28/random_flip_8/random_flip_up_down/Shape‘
Csequential_28/random_flip_8/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_28/random_flip_8/random_flip_up_down/strided_slice/stackЎ
Esequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_1Ў
Esequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_2В
=sequential_28/random_flip_8/random_flip_up_down/strided_sliceStridedSlice>sequential_28/random_flip_8/random_flip_up_down/Shape:output:0Lsequential_28/random_flip_8/random_flip_up_down/strided_slice/stack:output:0Nsequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_1:output:0Nsequential_28/random_flip_8/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=sequential_28/random_flip_8/random_flip_up_down/strided_sliceК
Dsequential_28/random_flip_8/random_flip_up_down/random_uniform/shapePackFsequential_28/random_flip_8/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:2F
Dsequential_28/random_flip_8/random_flip_up_down/random_uniform/shapeЌ
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2D
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/minЌ
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2D
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/maxЈ
Lsequential_28/random_flip_8/random_flip_up_down/random_uniform/RandomUniformRandomUniformMsequential_28/random_flip_8/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02N
Lsequential_28/random_flip_8/random_flip_up_down/random_uniform/RandomUniformб
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/MulMulUsequential_28/random_flip_8/random_flip_up_down/random_uniform/RandomUniform:output:0Ksequential_28/random_flip_8/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€2D
Bsequential_28/random_flip_8/random_flip_up_down/random_uniform/Mulƒ
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/1ƒ
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/2ƒ
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_28/random_flip_8/random_flip_up_down/Reshape/shape/3Џ
=sequential_28/random_flip_8/random_flip_up_down/Reshape/shapePackFsequential_28/random_flip_8/random_flip_up_down/strided_slice:output:0Hsequential_28/random_flip_8/random_flip_up_down/Reshape/shape/1:output:0Hsequential_28/random_flip_8/random_flip_up_down/Reshape/shape/2:output:0Hsequential_28/random_flip_8/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2?
=sequential_28/random_flip_8/random_flip_up_down/Reshape/shape«
7sequential_28/random_flip_8/random_flip_up_down/ReshapeReshapeFsequential_28/random_flip_8/random_flip_up_down/random_uniform/Mul:z:0Fsequential_28/random_flip_8/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€29
7sequential_28/random_flip_8/random_flip_up_down/Reshapeу
5sequential_28/random_flip_8/random_flip_up_down/RoundRound@sequential_28/random_flip_8/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€27
5sequential_28/random_flip_8/random_flip_up_down/Round 
>sequential_28/random_flip_8/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_28/random_flip_8/random_flip_up_down/ReverseV2/axis’
9sequential_28/random_flip_8/random_flip_up_down/ReverseV2	ReverseV2Ksequential_28/random_flip_8/random_flip_up_down/control_dependency:output:0Gsequential_28/random_flip_8/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2;
9sequential_28/random_flip_8/random_flip_up_down/ReverseV2ђ
3sequential_28/random_flip_8/random_flip_up_down/mulMul9sequential_28/random_flip_8/random_flip_up_down/Round:y:0Bsequential_28/random_flip_8/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА25
3sequential_28/random_flip_8/random_flip_up_down/mul≥
5sequential_28/random_flip_8/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?27
5sequential_28/random_flip_8/random_flip_up_down/sub/x¶
3sequential_28/random_flip_8/random_flip_up_down/subSub>sequential_28/random_flip_8/random_flip_up_down/sub/x:output:09sequential_28/random_flip_8/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€25
3sequential_28/random_flip_8/random_flip_up_down/subЈ
5sequential_28/random_flip_8/random_flip_up_down/mul_1Mul7sequential_28/random_flip_8/random_flip_up_down/sub:z:0Ksequential_28/random_flip_8/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА27
5sequential_28/random_flip_8/random_flip_up_down/mul_1£
3sequential_28/random_flip_8/random_flip_up_down/addAddV27sequential_28/random_flip_8/random_flip_up_down/mul:z:09sequential_28/random_flip_8/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА25
3sequential_28/random_flip_8/random_flip_up_down/addµ
%sequential_28/random_rotation_8/ShapeShape7sequential_28/random_flip_8/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2'
%sequential_28/random_rotation_8/Shapeі
3sequential_28/random_rotation_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_28/random_rotation_8/strided_slice/stackЄ
5sequential_28/random_rotation_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_28/random_rotation_8/strided_slice/stack_1Є
5sequential_28/random_rotation_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_28/random_rotation_8/strided_slice/stack_2Ґ
-sequential_28/random_rotation_8/strided_sliceStridedSlice.sequential_28/random_rotation_8/Shape:output:0<sequential_28/random_rotation_8/strided_slice/stack:output:0>sequential_28/random_rotation_8/strided_slice/stack_1:output:0>sequential_28/random_rotation_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_28/random_rotation_8/strided_sliceЄ
5sequential_28/random_rotation_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_28/random_rotation_8/strided_slice_1/stackЉ
7sequential_28/random_rotation_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_28/random_rotation_8/strided_slice_1/stack_1Љ
7sequential_28/random_rotation_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_28/random_rotation_8/strided_slice_1/stack_2ђ
/sequential_28/random_rotation_8/strided_slice_1StridedSlice.sequential_28/random_rotation_8/Shape:output:0>sequential_28/random_rotation_8/strided_slice_1/stack:output:0@sequential_28/random_rotation_8/strided_slice_1/stack_1:output:0@sequential_28/random_rotation_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_28/random_rotation_8/strided_slice_1Њ
$sequential_28/random_rotation_8/CastCast8sequential_28/random_rotation_8/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$sequential_28/random_rotation_8/CastЄ
5sequential_28/random_rotation_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_28/random_rotation_8/strided_slice_2/stackЉ
7sequential_28/random_rotation_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_28/random_rotation_8/strided_slice_2/stack_1Љ
7sequential_28/random_rotation_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_28/random_rotation_8/strided_slice_2/stack_2ђ
/sequential_28/random_rotation_8/strided_slice_2StridedSlice.sequential_28/random_rotation_8/Shape:output:0>sequential_28/random_rotation_8/strided_slice_2/stack:output:0@sequential_28/random_rotation_8/strided_slice_2/stack_1:output:0@sequential_28/random_rotation_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_28/random_rotation_8/strided_slice_2¬
&sequential_28/random_rotation_8/Cast_1Cast8sequential_28/random_rotation_8/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2(
&sequential_28/random_rotation_8/Cast_1ё
6sequential_28/random_rotation_8/stateful_uniform/shapePack6sequential_28/random_rotation_8/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6sequential_28/random_rotation_8/stateful_uniform/shape±
4sequential_28/random_rotation_8/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†њ26
4sequential_28/random_rotation_8/stateful_uniform/min±
4sequential_28/random_rotation_8/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†?26
4sequential_28/random_rotation_8/stateful_uniform/maxЇ
6sequential_28/random_rotation_8/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_28/random_rotation_8/stateful_uniform/ConstЩ
5sequential_28/random_rotation_8/stateful_uniform/ProdProd?sequential_28/random_rotation_8/stateful_uniform/shape:output:0?sequential_28/random_rotation_8/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/stateful_uniform/Prodі
7sequential_28/random_rotation_8/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_28/random_rotation_8/stateful_uniform/Cast/xк
7sequential_28/random_rotation_8/stateful_uniform/Cast_1Cast>sequential_28/random_rotation_8/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 29
7sequential_28/random_rotation_8/stateful_uniform/Cast_1щ
?sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkipRngReadAndSkipHsequential_28_random_rotation_8_stateful_uniform_rngreadandskip_resource@sequential_28/random_rotation_8/stateful_uniform/Cast/x:output:0;sequential_28/random_rotation_8/stateful_uniform/Cast_1:y:0*
_output_shapes
:2A
?sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip÷
Dsequential_28/random_rotation_8/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
Dsequential_28/random_rotation_8/stateful_uniform/strided_slice/stackЏ
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_1Џ
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_2О
>sequential_28/random_rotation_8/stateful_uniform/strided_sliceStridedSliceGsequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip:value:0Msequential_28/random_rotation_8/stateful_uniform/strided_slice/stack:output:0Osequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_1:output:0Osequential_28/random_rotation_8/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2@
>sequential_28/random_rotation_8/stateful_uniform/strided_sliceщ
8sequential_28/random_rotation_8/stateful_uniform/BitcastBitcastGsequential_28/random_rotation_8/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02:
8sequential_28/random_rotation_8/stateful_uniform/BitcastЏ
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stackё
Hsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_1ё
Hsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_2Ж
@sequential_28/random_rotation_8/stateful_uniform/strided_slice_1StridedSliceGsequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip:value:0Osequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack:output:0Qsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_1:output:0Qsequential_28/random_rotation_8/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2B
@sequential_28/random_rotation_8/stateful_uniform/strided_slice_1€
:sequential_28/random_rotation_8/stateful_uniform/Bitcast_1BitcastIsequential_28/random_rotation_8/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02<
:sequential_28/random_rotation_8/stateful_uniform/Bitcast_1а
Msequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2O
Msequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2/algш
Isequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2?sequential_28/random_rotation_8/stateful_uniform/shape:output:0Csequential_28/random_rotation_8/stateful_uniform/Bitcast_1:output:0Asequential_28/random_rotation_8/stateful_uniform/Bitcast:output:0Vsequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2K
Isequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2Т
4sequential_28/random_rotation_8/stateful_uniform/subSub=sequential_28/random_rotation_8/stateful_uniform/max:output:0=sequential_28/random_rotation_8/stateful_uniform/min:output:0*
T0*
_output_shapes
: 26
4sequential_28/random_rotation_8/stateful_uniform/subѓ
4sequential_28/random_rotation_8/stateful_uniform/mulMulRsequential_28/random_rotation_8/stateful_uniform/StatelessRandomUniformV2:output:08sequential_28/random_rotation_8/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€26
4sequential_28/random_rotation_8/stateful_uniform/mulТ
0sequential_28/random_rotation_8/stateful_uniformAdd8sequential_28/random_rotation_8/stateful_uniform/mul:z:0=sequential_28/random_rotation_8/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential_28/random_rotation_8/stateful_uniform≥
5sequential_28/random_rotation_8/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?27
5sequential_28/random_rotation_8/rotation_matrix/sub/yю
3sequential_28/random_rotation_8/rotation_matrix/subSub*sequential_28/random_rotation_8/Cast_1:y:0>sequential_28/random_rotation_8/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 25
3sequential_28/random_rotation_8/rotation_matrix/sub’
3sequential_28/random_rotation_8/rotation_matrix/CosCos4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€25
3sequential_28/random_rotation_8/rotation_matrix/CosЈ
7sequential_28/random_rotation_8/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7sequential_28/random_rotation_8/rotation_matrix/sub_1/yД
5sequential_28/random_rotation_8/rotation_matrix/sub_1Sub*sequential_28/random_rotation_8/Cast_1:y:0@sequential_28/random_rotation_8/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/rotation_matrix/sub_1У
3sequential_28/random_rotation_8/rotation_matrix/mulMul7sequential_28/random_rotation_8/rotation_matrix/Cos:y:09sequential_28/random_rotation_8/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€25
3sequential_28/random_rotation_8/rotation_matrix/mul’
3sequential_28/random_rotation_8/rotation_matrix/SinSin4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€25
3sequential_28/random_rotation_8/rotation_matrix/SinЈ
7sequential_28/random_rotation_8/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7sequential_28/random_rotation_8/rotation_matrix/sub_2/yВ
5sequential_28/random_rotation_8/rotation_matrix/sub_2Sub(sequential_28/random_rotation_8/Cast:y:0@sequential_28/random_rotation_8/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/rotation_matrix/sub_2Ч
5sequential_28/random_rotation_8/rotation_matrix/mul_1Mul7sequential_28/random_rotation_8/rotation_matrix/Sin:y:09sequential_28/random_rotation_8/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/mul_1Ч
5sequential_28/random_rotation_8/rotation_matrix/sub_3Sub7sequential_28/random_rotation_8/rotation_matrix/mul:z:09sequential_28/random_rotation_8/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/sub_3Ч
5sequential_28/random_rotation_8/rotation_matrix/sub_4Sub7sequential_28/random_rotation_8/rotation_matrix/sub:z:09sequential_28/random_rotation_8/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/sub_4ї
9sequential_28/random_rotation_8/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2;
9sequential_28/random_rotation_8/rotation_matrix/truediv/y™
7sequential_28/random_rotation_8/rotation_matrix/truedivRealDiv9sequential_28/random_rotation_8/rotation_matrix/sub_4:z:0Bsequential_28/random_rotation_8/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€29
7sequential_28/random_rotation_8/rotation_matrix/truedivЈ
7sequential_28/random_rotation_8/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7sequential_28/random_rotation_8/rotation_matrix/sub_5/yВ
5sequential_28/random_rotation_8/rotation_matrix/sub_5Sub(sequential_28/random_rotation_8/Cast:y:0@sequential_28/random_rotation_8/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/rotation_matrix/sub_5ў
5sequential_28/random_rotation_8/rotation_matrix/Sin_1Sin4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Sin_1Ј
7sequential_28/random_rotation_8/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7sequential_28/random_rotation_8/rotation_matrix/sub_6/yД
5sequential_28/random_rotation_8/rotation_matrix/sub_6Sub*sequential_28/random_rotation_8/Cast_1:y:0@sequential_28/random_rotation_8/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/rotation_matrix/sub_6Щ
5sequential_28/random_rotation_8/rotation_matrix/mul_2Mul9sequential_28/random_rotation_8/rotation_matrix/Sin_1:y:09sequential_28/random_rotation_8/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/mul_2ў
5sequential_28/random_rotation_8/rotation_matrix/Cos_1Cos4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Cos_1Ј
7sequential_28/random_rotation_8/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7sequential_28/random_rotation_8/rotation_matrix/sub_7/yВ
5sequential_28/random_rotation_8/rotation_matrix/sub_7Sub(sequential_28/random_rotation_8/Cast:y:0@sequential_28/random_rotation_8/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 27
5sequential_28/random_rotation_8/rotation_matrix/sub_7Щ
5sequential_28/random_rotation_8/rotation_matrix/mul_3Mul9sequential_28/random_rotation_8/rotation_matrix/Cos_1:y:09sequential_28/random_rotation_8/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/mul_3Ч
3sequential_28/random_rotation_8/rotation_matrix/addAddV29sequential_28/random_rotation_8/rotation_matrix/mul_2:z:09sequential_28/random_rotation_8/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€25
3sequential_28/random_rotation_8/rotation_matrix/addЧ
5sequential_28/random_rotation_8/rotation_matrix/sub_8Sub9sequential_28/random_rotation_8/rotation_matrix/sub_5:z:07sequential_28/random_rotation_8/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/sub_8њ
;sequential_28/random_rotation_8/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2=
;sequential_28/random_rotation_8/rotation_matrix/truediv_1/y∞
9sequential_28/random_rotation_8/rotation_matrix/truediv_1RealDiv9sequential_28/random_rotation_8/rotation_matrix/sub_8:z:0Dsequential_28/random_rotation_8/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2;
9sequential_28/random_rotation_8/rotation_matrix/truediv_1“
5sequential_28/random_rotation_8/rotation_matrix/ShapeShape4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*
_output_shapes
:27
5sequential_28/random_rotation_8/rotation_matrix/Shape‘
Csequential_28/random_rotation_8/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_28/random_rotation_8/rotation_matrix/strided_slice/stackЎ
Esequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_1Ў
Esequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_2В
=sequential_28/random_rotation_8/rotation_matrix/strided_sliceStridedSlice>sequential_28/random_rotation_8/rotation_matrix/Shape:output:0Lsequential_28/random_rotation_8/rotation_matrix/strided_slice/stack:output:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_1:output:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=sequential_28/random_rotation_8/rotation_matrix/strided_sliceў
5sequential_28/random_rotation_8/rotation_matrix/Cos_2Cos4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Cos_2я
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_2Ј
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_1StridedSlice9sequential_28/random_rotation_8/rotation_matrix/Cos_2:y:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_1ў
5sequential_28/random_rotation_8/rotation_matrix/Sin_2Sin4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Sin_2я
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_2Ј
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_2StridedSlice9sequential_28/random_rotation_8/rotation_matrix/Sin_2:y:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_2н
3sequential_28/random_rotation_8/rotation_matrix/NegNegHsequential_28/random_rotation_8/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€25
3sequential_28/random_rotation_8/rotation_matrix/Negя
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_2є
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_3StridedSlice;sequential_28/random_rotation_8/rotation_matrix/truediv:z:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_3ў
5sequential_28/random_rotation_8/rotation_matrix/Sin_3Sin4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Sin_3я
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_2Ј
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_4StridedSlice9sequential_28/random_rotation_8/rotation_matrix/Sin_3:y:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_4ў
5sequential_28/random_rotation_8/rotation_matrix/Cos_3Cos4sequential_28/random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/Cos_3я
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_2Ј
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_5StridedSlice9sequential_28/random_rotation_8/rotation_matrix/Cos_3:y:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_5я
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stackг
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_1г
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_2ї
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_6StridedSlice=sequential_28/random_rotation_8/rotation_matrix/truediv_1:z:0Nsequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_1:output:0Psequential_28/random_rotation_8/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_28/random_rotation_8/rotation_matrix/strided_slice_6Љ
;sequential_28/random_rotation_8/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_28/random_rotation_8/rotation_matrix/zeros/mul/yђ
9sequential_28/random_rotation_8/rotation_matrix/zeros/mulMulFsequential_28/random_rotation_8/rotation_matrix/strided_slice:output:0Dsequential_28/random_rotation_8/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2;
9sequential_28/random_rotation_8/rotation_matrix/zeros/mulњ
<sequential_28/random_rotation_8/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2>
<sequential_28/random_rotation_8/rotation_matrix/zeros/Less/yІ
:sequential_28/random_rotation_8/rotation_matrix/zeros/LessLess=sequential_28/random_rotation_8/rotation_matrix/zeros/mul:z:0Esequential_28/random_rotation_8/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2<
:sequential_28/random_rotation_8/rotation_matrix/zeros/Less¬
>sequential_28/random_rotation_8/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_28/random_rotation_8/rotation_matrix/zeros/packed/1√
<sequential_28/random_rotation_8/rotation_matrix/zeros/packedPackFsequential_28/random_rotation_8/rotation_matrix/strided_slice:output:0Gsequential_28/random_rotation_8/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2>
<sequential_28/random_rotation_8/rotation_matrix/zeros/packedњ
;sequential_28/random_rotation_8/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2=
;sequential_28/random_rotation_8/rotation_matrix/zeros/Constµ
5sequential_28/random_rotation_8/rotation_matrix/zerosFillEsequential_28/random_rotation_8/rotation_matrix/zeros/packed:output:0Dsequential_28/random_rotation_8/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€27
5sequential_28/random_rotation_8/rotation_matrix/zerosЉ
;sequential_28/random_rotation_8/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_28/random_rotation_8/rotation_matrix/concat/axisи
6sequential_28/random_rotation_8/rotation_matrix/concatConcatV2Hsequential_28/random_rotation_8/rotation_matrix/strided_slice_1:output:07sequential_28/random_rotation_8/rotation_matrix/Neg:y:0Hsequential_28/random_rotation_8/rotation_matrix/strided_slice_3:output:0Hsequential_28/random_rotation_8/rotation_matrix/strided_slice_4:output:0Hsequential_28/random_rotation_8/rotation_matrix/strided_slice_5:output:0Hsequential_28/random_rotation_8/rotation_matrix/strided_slice_6:output:0>sequential_28/random_rotation_8/rotation_matrix/zeros:output:0Dsequential_28/random_rotation_8/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€28
6sequential_28/random_rotation_8/rotation_matrix/concat…
/sequential_28/random_rotation_8/transform/ShapeShape7sequential_28/random_flip_8/random_flip_up_down/add:z:0*
T0*
_output_shapes
:21
/sequential_28/random_rotation_8/transform/Shape»
=sequential_28/random_rotation_8/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_28/random_rotation_8/transform/strided_slice/stackћ
?sequential_28/random_rotation_8/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_28/random_rotation_8/transform/strided_slice/stack_1ћ
?sequential_28/random_rotation_8/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_28/random_rotation_8/transform/strided_slice/stack_2 
7sequential_28/random_rotation_8/transform/strided_sliceStridedSlice8sequential_28/random_rotation_8/transform/Shape:output:0Fsequential_28/random_rotation_8/transform/strided_slice/stack:output:0Hsequential_28/random_rotation_8/transform/strided_slice/stack_1:output:0Hsequential_28/random_rotation_8/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:29
7sequential_28/random_rotation_8/transform/strided_slice±
4sequential_28/random_rotation_8/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_28/random_rotation_8/transform/fill_valueЪ
Dsequential_28/random_rotation_8/transform/ImageProjectiveTransformV3ImageProjectiveTransformV37sequential_28/random_flip_8/random_flip_up_down/add:z:0?sequential_28/random_rotation_8/rotation_matrix/concat:output:0@sequential_28/random_rotation_8/transform/strided_slice:output:0=sequential_28/random_rotation_8/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2F
Dsequential_28/random_rotation_8/transform/ImageProjectiveTransformV3≥
conv2d_89/Conv2D/ReadVariableOpReadVariableOp(conv2d_89_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_89/Conv2D/ReadVariableOpЧ
conv2d_89/Conv2DConv2DYsequential_28/random_rotation_8/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_89/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
2
conv2d_89/Conv2D™
 conv2d_89/BiasAdd/ReadVariableOpReadVariableOp)conv2d_89_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_89/BiasAdd/ReadVariableOp≤
conv2d_89/BiasAddBiasAddconv2d_89/Conv2D:output:0(conv2d_89/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
conv2d_89/BiasAddА
conv2d_89/ReluReluconv2d_89/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю 2
conv2d_89/Relu 
max_pooling2d_89/MaxPoolMaxPoolconv2d_89/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_89/MaxPool≥
conv2d_90/Conv2D/ReadVariableOpReadVariableOp(conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_90/Conv2D/ReadVariableOpЁ
conv2d_90/Conv2DConv2D!max_pooling2d_89/MaxPool:output:0'conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
2
conv2d_90/Conv2D™
 conv2d_90/BiasAdd/ReadVariableOpReadVariableOp)conv2d_90_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_90/BiasAdd/ReadVariableOp∞
conv2d_90/BiasAddBiasAddconv2d_90/Conv2D:output:0(conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
conv2d_90/BiasAdd~
conv2d_90/ReluReluconv2d_90/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
conv2d_90/Relu 
max_pooling2d_90/MaxPoolMaxPoolconv2d_90/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_90/MaxPool≥
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_91/Conv2D/ReadVariableOpЁ
conv2d_91/Conv2DConv2D!max_pooling2d_90/MaxPool:output:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
conv2d_91/Conv2D™
 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_91/BiasAdd/ReadVariableOp∞
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_91/BiasAdd~
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_91/Relu 
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_91/MaxPool≥
conv2d_92/Conv2D/ReadVariableOpReadVariableOp(conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_92/Conv2D/ReadVariableOpЁ
conv2d_92/Conv2DConv2D!max_pooling2d_91/MaxPool:output:0'conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_92/Conv2D™
 conv2d_92/BiasAdd/ReadVariableOpReadVariableOp)conv2d_92_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_92/BiasAdd/ReadVariableOp∞
conv2d_92/BiasAddBiasAddconv2d_92/Conv2D:output:0(conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_92/BiasAdd~
conv2d_92/ReluReluconv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_92/Relu 
max_pooling2d_92/MaxPoolMaxPoolconv2d_92/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_92/MaxPool≥
conv2d_93/Conv2D/ReadVariableOpReadVariableOp(conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_93/Conv2D/ReadVariableOpЁ
conv2d_93/Conv2DConv2D!max_pooling2d_92/MaxPool:output:0'conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_93/Conv2D™
 conv2d_93/BiasAdd/ReadVariableOpReadVariableOp)conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_93/BiasAdd/ReadVariableOp∞
conv2d_93/BiasAddBiasAddconv2d_93/Conv2D:output:0(conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_93/BiasAdd~
conv2d_93/ReluReluconv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_93/Relu 
max_pooling2d_93/MaxPoolMaxPoolconv2d_93/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_93/MaxPool≥
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_94/Conv2D/ReadVariableOpЁ
conv2d_94/Conv2DConv2D!max_pooling2d_93/MaxPool:output:0'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
conv2d_94/Conv2D™
 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_94/BiasAdd/ReadVariableOp∞
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_94/BiasAdd~
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_94/Relu 
max_pooling2d_94/MaxPoolMaxPoolconv2d_94/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_94/MaxPoolu
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_14/Const§
flatten_14/ReshapeReshape!max_pooling2d_94/MaxPool:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_14/Reshape©
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02 
dense_28/MatMul/ReadVariableOp£
dense_28/MatMulMatMulflatten_14/Reshape:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/MatMulІ
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_28/BiasAdd/ReadVariableOp•
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/BiasAdds
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_28/Relu®
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_29/MatMul/ReadVariableOp£
dense_29/MatMulMatMuldense_28/Relu:activations:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/MatMulІ
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_29/BiasAdd/ReadVariableOp•
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/BiasAdd|
dense_29/SoftmaxSoftmaxdense_29/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_29/Softmax‘
IdentityIdentitydense_29/Softmax:softmax:0!^conv2d_89/BiasAdd/ReadVariableOp ^conv2d_89/Conv2D/ReadVariableOp!^conv2d_90/BiasAdd/ReadVariableOp ^conv2d_90/Conv2D/ReadVariableOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^conv2d_92/BiasAdd/ReadVariableOp ^conv2d_92/Conv2D/ReadVariableOp!^conv2d_93/BiasAdd/ReadVariableOp ^conv2d_93/Conv2D/ReadVariableOp!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp@^sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€АА: : : : : : : : : : : : : : : : : 2D
 conv2d_89/BiasAdd/ReadVariableOp conv2d_89/BiasAdd/ReadVariableOp2B
conv2d_89/Conv2D/ReadVariableOpconv2d_89/Conv2D/ReadVariableOp2D
 conv2d_90/BiasAdd/ReadVariableOp conv2d_90/BiasAdd/ReadVariableOp2B
conv2d_90/Conv2D/ReadVariableOpconv2d_90/Conv2D/ReadVariableOp2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 conv2d_92/BiasAdd/ReadVariableOp conv2d_92/BiasAdd/ReadVariableOp2B
conv2d_92/Conv2D/ReadVariableOpconv2d_92/Conv2D/ReadVariableOp2D
 conv2d_93/BiasAdd/ReadVariableOp conv2d_93/BiasAdd/ReadVariableOp2B
conv2d_93/Conv2D/ReadVariableOpconv2d_93/Conv2D/ReadVariableOp2D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2В
?sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip?sequential_28/random_rotation_8/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
П
T
.__inference_sequential_27_layer_call_fn_146444
resizing_7_input
identityё
PartitionedCallPartitionedCallresizing_7_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_1445662
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_nameresizing_7_input
с
J
.__inference_sequential_28_layer_call_fn_146494

inputs
identity‘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_28_layer_call_and_return_conditional_losses_1446022
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ц
ю
E__inference_conv2d_90_layer_call_and_return_conditional_losses_146896

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€}}@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
РL
Я
I__inference_sequential_31_layer_call_and_return_conditional_losses_145415

inputs"
sequential_28_145364:	*
conv2d_89_145367: 
conv2d_89_145369: *
conv2d_90_145373: @
conv2d_90_145375:@*
conv2d_91_145379:@@
conv2d_91_145381:@*
conv2d_92_145385:@@
conv2d_92_145387:@*
conv2d_93_145391:@@
conv2d_93_145393:@*
conv2d_94_145397:@@
conv2d_94_145399:@"
dense_28_145404:	А@
dense_28_145406:@!
dense_29_145409:@
dense_29_145411:
identityИҐ!conv2d_89/StatefulPartitionedCallҐ!conv2d_90/StatefulPartitionedCallҐ!conv2d_91/StatefulPartitionedCallҐ!conv2d_92/StatefulPartitionedCallҐ!conv2d_93/StatefulPartitionedCallҐ!conv2d_94/StatefulPartitionedCallҐ dense_28/StatefulPartitionedCallҐ dense_29/StatefulPartitionedCallҐ%sequential_28/StatefulPartitionedCallр
sequential_27/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_1445662
sequential_27/PartitionedCallњ
%sequential_28/StatefulPartitionedCallStatefulPartitionedCall&sequential_27/PartitionedCall:output:0sequential_28_145364*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_28_layer_call_and_return_conditional_losses_1447822'
%sequential_28/StatefulPartitionedCallќ
!conv2d_89/StatefulPartitionedCallStatefulPartitionedCall.sequential_28/StatefulPartitionedCall:output:0conv2d_89_145367conv2d_89_145369*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_89_layer_call_and_return_conditional_losses_1450602#
!conv2d_89/StatefulPartitionedCallЫ
 max_pooling2d_89/PartitionedCallPartitionedCall*conv2d_89/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_89_layer_call_and_return_conditional_losses_1449742"
 max_pooling2d_89/PartitionedCall«
!conv2d_90/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_89/PartitionedCall:output:0conv2d_90_145373conv2d_90_145375*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_90_layer_call_and_return_conditional_losses_1450782#
!conv2d_90/StatefulPartitionedCallЫ
 max_pooling2d_90/PartitionedCallPartitionedCall*conv2d_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_1449862"
 max_pooling2d_90/PartitionedCall«
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_90/PartitionedCall:output:0conv2d_91_145379conv2d_91_145381*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_91_layer_call_and_return_conditional_losses_1450962#
!conv2d_91/StatefulPartitionedCallЫ
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_1449982"
 max_pooling2d_91/PartitionedCall«
!conv2d_92/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_91/PartitionedCall:output:0conv2d_92_145385conv2d_92_145387*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_92_layer_call_and_return_conditional_losses_1451142#
!conv2d_92/StatefulPartitionedCallЫ
 max_pooling2d_92/PartitionedCallPartitionedCall*conv2d_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_1450102"
 max_pooling2d_92/PartitionedCall«
!conv2d_93/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_92/PartitionedCall:output:0conv2d_93_145391conv2d_93_145393*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_93_layer_call_and_return_conditional_losses_1451322#
!conv2d_93/StatefulPartitionedCallЫ
 max_pooling2d_93/PartitionedCallPartitionedCall*conv2d_93/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_1450222"
 max_pooling2d_93/PartitionedCall«
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_93/PartitionedCall:output:0conv2d_94_145397conv2d_94_145399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_1451502#
!conv2d_94/StatefulPartitionedCallЫ
 max_pooling2d_94/PartitionedCallPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_1450342"
 max_pooling2d_94/PartitionedCallБ
flatten_14/PartitionedCallPartitionedCall)max_pooling2d_94/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_14_layer_call_and_return_conditional_losses_1451632
flatten_14/PartitionedCallі
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_28_145404dense_28_145406*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1451762"
 dense_28/StatefulPartitionedCallЇ
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_145409dense_29_145411*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_1451932"
 dense_29/StatefulPartitionedCall√
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0"^conv2d_89/StatefulPartitionedCall"^conv2d_90/StatefulPartitionedCall"^conv2d_91/StatefulPartitionedCall"^conv2d_92/StatefulPartitionedCall"^conv2d_93/StatefulPartitionedCall"^conv2d_94/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall&^sequential_28/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€АА: : : : : : : : : : : : : : : : : 2F
!conv2d_89/StatefulPartitionedCall!conv2d_89/StatefulPartitionedCall2F
!conv2d_90/StatefulPartitionedCall!conv2d_90/StatefulPartitionedCall2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!conv2d_92/StatefulPartitionedCall!conv2d_92/StatefulPartitionedCall2F
!conv2d_93/StatefulPartitionedCall!conv2d_93/StatefulPartitionedCall2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2N
%sequential_28/StatefulPartitionedCall%sequential_28/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Є
ќ
$__inference_signature_wrapper_145644
sequential_27_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	А@

unknown_12:@

unknown_13:@

unknown_14:
identityИҐStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallsequential_27_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_1445322
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namesequential_27_input
ҐЃ
ж
I__inference_sequential_28_layer_call_and_return_conditional_losses_144782

inputsH
:random_rotation_8_stateful_uniform_rngreadandskip_resource:	
identityИҐ1random_rotation_8/stateful_uniform/RngReadAndSkipЁ
7random_flip_8/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€АА29
7random_flip_8/random_flip_left_right/control_dependency»
*random_flip_8/random_flip_left_right/ShapeShape@random_flip_8/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_8/random_flip_left_right/ShapeЊ
8random_flip_8/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_8/random_flip_left_right/strided_slice/stack¬
:random_flip_8/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_8/random_flip_left_right/strided_slice/stack_1¬
:random_flip_8/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_8/random_flip_left_right/strided_slice/stack_2ј
2random_flip_8/random_flip_left_right/strided_sliceStridedSlice3random_flip_8/random_flip_left_right/Shape:output:0Arandom_flip_8/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_8/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_8/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_8/random_flip_left_right/strided_sliceй
9random_flip_8/random_flip_left_right/random_uniform/shapePack;random_flip_8/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_8/random_flip_left_right/random_uniform/shapeЈ
7random_flip_8/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_8/random_flip_left_right/random_uniform/minЈ
7random_flip_8/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?29
7random_flip_8/random_flip_left_right/random_uniform/maxЦ
Arandom_flip_8/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_8/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02C
Arandom_flip_8/random_flip_left_right/random_uniform/RandomUniformµ
7random_flip_8/random_flip_left_right/random_uniform/MulMulJrandom_flip_8/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_8/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€29
7random_flip_8/random_flip_left_right/random_uniform/MulЃ
4random_flip_8/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_8/random_flip_left_right/Reshape/shape/1Ѓ
4random_flip_8/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_8/random_flip_left_right/Reshape/shape/2Ѓ
4random_flip_8/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_8/random_flip_left_right/Reshape/shape/3Ш
2random_flip_8/random_flip_left_right/Reshape/shapePack;random_flip_8/random_flip_left_right/strided_slice:output:0=random_flip_8/random_flip_left_right/Reshape/shape/1:output:0=random_flip_8/random_flip_left_right/Reshape/shape/2:output:0=random_flip_8/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_8/random_flip_left_right/Reshape/shapeЫ
,random_flip_8/random_flip_left_right/ReshapeReshape;random_flip_8/random_flip_left_right/random_uniform/Mul:z:0;random_flip_8/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2.
,random_flip_8/random_flip_left_right/Reshape“
*random_flip_8/random_flip_left_right/RoundRound5random_flip_8/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2,
*random_flip_8/random_flip_left_right/Roundі
3random_flip_8/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_8/random_flip_left_right/ReverseV2/axis©
.random_flip_8/random_flip_left_right/ReverseV2	ReverseV2@random_flip_8/random_flip_left_right/control_dependency:output:0<random_flip_8/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА20
.random_flip_8/random_flip_left_right/ReverseV2А
(random_flip_8/random_flip_left_right/mulMul.random_flip_8/random_flip_left_right/Round:y:07random_flip_8/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2*
(random_flip_8/random_flip_left_right/mulЭ
*random_flip_8/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2,
*random_flip_8/random_flip_left_right/sub/xъ
(random_flip_8/random_flip_left_right/subSub3random_flip_8/random_flip_left_right/sub/x:output:0.random_flip_8/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2*
(random_flip_8/random_flip_left_right/subЛ
*random_flip_8/random_flip_left_right/mul_1Mul,random_flip_8/random_flip_left_right/sub:z:0@random_flip_8/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2,
*random_flip_8/random_flip_left_right/mul_1ч
(random_flip_8/random_flip_left_right/addAddV2,random_flip_8/random_flip_left_right/mul:z:0.random_flip_8/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2*
(random_flip_8/random_flip_left_right/addЯ
4random_flip_8/random_flip_up_down/control_dependencyIdentity,random_flip_8/random_flip_left_right/add:z:0*
T0*;
_class1
/-loc:@random_flip_8/random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€АА26
4random_flip_8/random_flip_up_down/control_dependencyњ
'random_flip_8/random_flip_up_down/ShapeShape=random_flip_8/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_8/random_flip_up_down/ShapeЄ
5random_flip_8/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_8/random_flip_up_down/strided_slice/stackЉ
7random_flip_8/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_8/random_flip_up_down/strided_slice/stack_1Љ
7random_flip_8/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_8/random_flip_up_down/strided_slice/stack_2Ѓ
/random_flip_8/random_flip_up_down/strided_sliceStridedSlice0random_flip_8/random_flip_up_down/Shape:output:0>random_flip_8/random_flip_up_down/strided_slice/stack:output:0@random_flip_8/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_8/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_8/random_flip_up_down/strided_sliceа
6random_flip_8/random_flip_up_down/random_uniform/shapePack8random_flip_8/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_8/random_flip_up_down/random_uniform/shape±
4random_flip_8/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_8/random_flip_up_down/random_uniform/min±
4random_flip_8/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?26
4random_flip_8/random_flip_up_down/random_uniform/maxН
>random_flip_8/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_8/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02@
>random_flip_8/random_flip_up_down/random_uniform/RandomUniform©
4random_flip_8/random_flip_up_down/random_uniform/MulMulGrandom_flip_8/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_8/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€26
4random_flip_8/random_flip_up_down/random_uniform/Mul®
1random_flip_8/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_8/random_flip_up_down/Reshape/shape/1®
1random_flip_8/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_8/random_flip_up_down/Reshape/shape/2®
1random_flip_8/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_8/random_flip_up_down/Reshape/shape/3Ж
/random_flip_8/random_flip_up_down/Reshape/shapePack8random_flip_8/random_flip_up_down/strided_slice:output:0:random_flip_8/random_flip_up_down/Reshape/shape/1:output:0:random_flip_8/random_flip_up_down/Reshape/shape/2:output:0:random_flip_8/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_8/random_flip_up_down/Reshape/shapeП
)random_flip_8/random_flip_up_down/ReshapeReshape8random_flip_8/random_flip_up_down/random_uniform/Mul:z:08random_flip_8/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2+
)random_flip_8/random_flip_up_down/Reshape…
'random_flip_8/random_flip_up_down/RoundRound2random_flip_8/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'random_flip_8/random_flip_up_down/RoundЃ
0random_flip_8/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_8/random_flip_up_down/ReverseV2/axisЭ
+random_flip_8/random_flip_up_down/ReverseV2	ReverseV2=random_flip_8/random_flip_up_down/control_dependency:output:09random_flip_8/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2-
+random_flip_8/random_flip_up_down/ReverseV2ф
%random_flip_8/random_flip_up_down/mulMul+random_flip_8/random_flip_up_down/Round:y:04random_flip_8/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2'
%random_flip_8/random_flip_up_down/mulЧ
'random_flip_8/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_flip_8/random_flip_up_down/sub/xо
%random_flip_8/random_flip_up_down/subSub0random_flip_8/random_flip_up_down/sub/x:output:0+random_flip_8/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2'
%random_flip_8/random_flip_up_down/sub€
'random_flip_8/random_flip_up_down/mul_1Mul)random_flip_8/random_flip_up_down/sub:z:0=random_flip_8/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2)
'random_flip_8/random_flip_up_down/mul_1л
%random_flip_8/random_flip_up_down/addAddV2)random_flip_8/random_flip_up_down/mul:z:0+random_flip_8/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2'
%random_flip_8/random_flip_up_down/addЛ
random_rotation_8/ShapeShape)random_flip_8/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_8/ShapeШ
%random_rotation_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_8/strided_slice/stackЬ
'random_rotation_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice/stack_1Ь
'random_rotation_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice/stack_2ќ
random_rotation_8/strided_sliceStridedSlice random_rotation_8/Shape:output:0.random_rotation_8/strided_slice/stack:output:00random_rotation_8/strided_slice/stack_1:output:00random_rotation_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_8/strided_sliceЬ
'random_rotation_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice_1/stack†
)random_rotation_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_1/stack_1†
)random_rotation_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_1/stack_2Ў
!random_rotation_8/strided_slice_1StridedSlice random_rotation_8/Shape:output:00random_rotation_8/strided_slice_1/stack:output:02random_rotation_8/strided_slice_1/stack_1:output:02random_rotation_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_8/strided_slice_1Ф
random_rotation_8/CastCast*random_rotation_8/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_8/CastЬ
'random_rotation_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_8/strided_slice_2/stack†
)random_rotation_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_2/stack_1†
)random_rotation_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_8/strided_slice_2/stack_2Ў
!random_rotation_8/strided_slice_2StridedSlice random_rotation_8/Shape:output:00random_rotation_8/strided_slice_2/stack:output:02random_rotation_8/strided_slice_2/stack_1:output:02random_rotation_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_8/strided_slice_2Ш
random_rotation_8/Cast_1Cast*random_rotation_8/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_8/Cast_1і
(random_rotation_8/stateful_uniform/shapePack(random_rotation_8/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_8/stateful_uniform/shapeХ
&random_rotation_8/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†њ2(
&random_rotation_8/stateful_uniform/minХ
&random_rotation_8/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†?2(
&random_rotation_8/stateful_uniform/maxЮ
(random_rotation_8/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_8/stateful_uniform/Constб
'random_rotation_8/stateful_uniform/ProdProd1random_rotation_8/stateful_uniform/shape:output:01random_rotation_8/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/stateful_uniform/ProdШ
)random_rotation_8/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_8/stateful_uniform/Cast/xј
)random_rotation_8/stateful_uniform/Cast_1Cast0random_rotation_8/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_8/stateful_uniform/Cast_1≥
1random_rotation_8/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_8_stateful_uniform_rngreadandskip_resource2random_rotation_8/stateful_uniform/Cast/x:output:0-random_rotation_8/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_8/stateful_uniform/RngReadAndSkipЇ
6random_rotation_8/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_8/stateful_uniform/strided_slice/stackЊ
8random_rotation_8/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_8/stateful_uniform/strided_slice/stack_1Њ
8random_rotation_8/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_8/stateful_uniform/strided_slice/stack_2Ї
0random_rotation_8/stateful_uniform/strided_sliceStridedSlice9random_rotation_8/stateful_uniform/RngReadAndSkip:value:0?random_rotation_8/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_8/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_8/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_8/stateful_uniform/strided_sliceѕ
*random_rotation_8/stateful_uniform/BitcastBitcast9random_rotation_8/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_8/stateful_uniform/BitcastЊ
8random_rotation_8/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_8/stateful_uniform/strided_slice_1/stack¬
:random_rotation_8/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_8/stateful_uniform/strided_slice_1/stack_1¬
:random_rotation_8/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_8/stateful_uniform/strided_slice_1/stack_2≤
2random_rotation_8/stateful_uniform/strided_slice_1StridedSlice9random_rotation_8/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_8/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_8/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_8/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_8/stateful_uniform/strided_slice_1’
,random_rotation_8/stateful_uniform/Bitcast_1Bitcast;random_rotation_8/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_8/stateful_uniform/Bitcast_1ƒ
?random_rotation_8/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_8/stateful_uniform/StatelessRandomUniformV2/alg§
;random_rotation_8/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_8/stateful_uniform/shape:output:05random_rotation_8/stateful_uniform/Bitcast_1:output:03random_rotation_8/stateful_uniform/Bitcast:output:0Hrandom_rotation_8/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2=
;random_rotation_8/stateful_uniform/StatelessRandomUniformV2Џ
&random_rotation_8/stateful_uniform/subSub/random_rotation_8/stateful_uniform/max:output:0/random_rotation_8/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_8/stateful_uniform/subч
&random_rotation_8/stateful_uniform/mulMulDrandom_rotation_8/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_8/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2(
&random_rotation_8/stateful_uniform/mulЏ
"random_rotation_8/stateful_uniformAdd*random_rotation_8/stateful_uniform/mul:z:0/random_rotation_8/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2$
"random_rotation_8/stateful_uniformЧ
'random_rotation_8/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation_8/rotation_matrix/sub/y∆
%random_rotation_8/rotation_matrix/subSubrandom_rotation_8/Cast_1:y:00random_rotation_8/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_8/rotation_matrix/subЂ
%random_rotation_8/rotation_matrix/CosCos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/CosЫ
)random_rotation_8/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_1/yћ
'random_rotation_8/rotation_matrix/sub_1Subrandom_rotation_8/Cast_1:y:02random_rotation_8/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_1џ
%random_rotation_8/rotation_matrix/mulMul)random_rotation_8/rotation_matrix/Cos:y:0+random_rotation_8/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/mulЂ
%random_rotation_8/rotation_matrix/SinSin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/SinЫ
)random_rotation_8/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_2/y 
'random_rotation_8/rotation_matrix/sub_2Subrandom_rotation_8/Cast:y:02random_rotation_8/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_2я
'random_rotation_8/rotation_matrix/mul_1Mul)random_rotation_8/rotation_matrix/Sin:y:0+random_rotation_8/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/mul_1я
'random_rotation_8/rotation_matrix/sub_3Sub)random_rotation_8/rotation_matrix/mul:z:0+random_rotation_8/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/sub_3я
'random_rotation_8/rotation_matrix/sub_4Sub)random_rotation_8/rotation_matrix/sub:z:0+random_rotation_8/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/sub_4Я
+random_rotation_8/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_8/rotation_matrix/truediv/yт
)random_rotation_8/rotation_matrix/truedivRealDiv+random_rotation_8/rotation_matrix/sub_4:z:04random_rotation_8/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2+
)random_rotation_8/rotation_matrix/truedivЫ
)random_rotation_8/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_5/y 
'random_rotation_8/rotation_matrix/sub_5Subrandom_rotation_8/Cast:y:02random_rotation_8/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_5ѓ
'random_rotation_8/rotation_matrix/Sin_1Sin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Sin_1Ы
)random_rotation_8/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_6/yћ
'random_rotation_8/rotation_matrix/sub_6Subrandom_rotation_8/Cast_1:y:02random_rotation_8/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_6б
'random_rotation_8/rotation_matrix/mul_2Mul+random_rotation_8/rotation_matrix/Sin_1:y:0+random_rotation_8/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/mul_2ѓ
'random_rotation_8/rotation_matrix/Cos_1Cos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Cos_1Ы
)random_rotation_8/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)random_rotation_8/rotation_matrix/sub_7/y 
'random_rotation_8/rotation_matrix/sub_7Subrandom_rotation_8/Cast:y:02random_rotation_8/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_8/rotation_matrix/sub_7б
'random_rotation_8/rotation_matrix/mul_3Mul+random_rotation_8/rotation_matrix/Cos_1:y:0+random_rotation_8/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/mul_3я
%random_rotation_8/rotation_matrix/addAddV2+random_rotation_8/rotation_matrix/mul_2:z:0+random_rotation_8/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/addя
'random_rotation_8/rotation_matrix/sub_8Sub+random_rotation_8/rotation_matrix/sub_5:z:0)random_rotation_8/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/sub_8£
-random_rotation_8/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_8/rotation_matrix/truediv_1/yш
+random_rotation_8/rotation_matrix/truediv_1RealDiv+random_rotation_8/rotation_matrix/sub_8:z:06random_rotation_8/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2-
+random_rotation_8/rotation_matrix/truediv_1®
'random_rotation_8/rotation_matrix/ShapeShape&random_rotation_8/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_8/rotation_matrix/ShapeЄ
5random_rotation_8/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_8/rotation_matrix/strided_slice/stackЉ
7random_rotation_8/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_8/rotation_matrix/strided_slice/stack_1Љ
7random_rotation_8/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_8/rotation_matrix/strided_slice/stack_2Ѓ
/random_rotation_8/rotation_matrix/strided_sliceStridedSlice0random_rotation_8/rotation_matrix/Shape:output:0>random_rotation_8/rotation_matrix/strided_slice/stack:output:0@random_rotation_8/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_8/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_8/rotation_matrix/strided_sliceѓ
'random_rotation_8/rotation_matrix/Cos_2Cos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Cos_2√
7random_rotation_8/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_1/stack«
9random_rotation_8/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_1/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_1/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_1StridedSlice+random_rotation_8/rotation_matrix/Cos_2:y:0@random_rotation_8/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_1ѓ
'random_rotation_8/rotation_matrix/Sin_2Sin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Sin_2√
7random_rotation_8/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_2/stack«
9random_rotation_8/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_2/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_2/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_2StridedSlice+random_rotation_8/rotation_matrix/Sin_2:y:0@random_rotation_8/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_2√
%random_rotation_8/rotation_matrix/NegNeg:random_rotation_8/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2'
%random_rotation_8/rotation_matrix/Neg√
7random_rotation_8/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_3/stack«
9random_rotation_8/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_3/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_3/stack_2е
1random_rotation_8/rotation_matrix/strided_slice_3StridedSlice-random_rotation_8/rotation_matrix/truediv:z:0@random_rotation_8/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_3ѓ
'random_rotation_8/rotation_matrix/Sin_3Sin&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Sin_3√
7random_rotation_8/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_4/stack«
9random_rotation_8/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_4/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_4/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_4StridedSlice+random_rotation_8/rotation_matrix/Sin_3:y:0@random_rotation_8/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_4ѓ
'random_rotation_8/rotation_matrix/Cos_3Cos&random_rotation_8/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/Cos_3√
7random_rotation_8/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_5/stack«
9random_rotation_8/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_5/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_5/stack_2г
1random_rotation_8/rotation_matrix/strided_slice_5StridedSlice+random_rotation_8/rotation_matrix/Cos_3:y:0@random_rotation_8/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_5√
7random_rotation_8/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_8/rotation_matrix/strided_slice_6/stack«
9random_rotation_8/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_8/rotation_matrix/strided_slice_6/stack_1«
9random_rotation_8/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_8/rotation_matrix/strided_slice_6/stack_2з
1random_rotation_8/rotation_matrix/strided_slice_6StridedSlice/random_rotation_8/rotation_matrix/truediv_1:z:0@random_rotation_8/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_8/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_8/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_8/rotation_matrix/strided_slice_6†
-random_rotation_8/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_8/rotation_matrix/zeros/mul/yф
+random_rotation_8/rotation_matrix/zeros/mulMul8random_rotation_8/rotation_matrix/strided_slice:output:06random_rotation_8/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_8/rotation_matrix/zeros/mul£
.random_rotation_8/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и20
.random_rotation_8/rotation_matrix/zeros/Less/yп
,random_rotation_8/rotation_matrix/zeros/LessLess/random_rotation_8/rotation_matrix/zeros/mul:z:07random_rotation_8/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_8/rotation_matrix/zeros/Less¶
0random_rotation_8/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_8/rotation_matrix/zeros/packed/1Л
.random_rotation_8/rotation_matrix/zeros/packedPack8random_rotation_8/rotation_matrix/strided_slice:output:09random_rotation_8/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_8/rotation_matrix/zeros/packed£
-random_rotation_8/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_8/rotation_matrix/zeros/Constэ
'random_rotation_8/rotation_matrix/zerosFill7random_rotation_8/rotation_matrix/zeros/packed:output:06random_rotation_8/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2)
'random_rotation_8/rotation_matrix/zeros†
-random_rotation_8/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_8/rotation_matrix/concat/axis№
(random_rotation_8/rotation_matrix/concatConcatV2:random_rotation_8/rotation_matrix/strided_slice_1:output:0)random_rotation_8/rotation_matrix/Neg:y:0:random_rotation_8/rotation_matrix/strided_slice_3:output:0:random_rotation_8/rotation_matrix/strided_slice_4:output:0:random_rotation_8/rotation_matrix/strided_slice_5:output:0:random_rotation_8/rotation_matrix/strided_slice_6:output:00random_rotation_8/rotation_matrix/zeros:output:06random_rotation_8/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2*
(random_rotation_8/rotation_matrix/concatЯ
!random_rotation_8/transform/ShapeShape)random_flip_8/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_8/transform/Shapeђ
/random_rotation_8/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_8/transform/strided_slice/stack∞
1random_rotation_8/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_8/transform/strided_slice/stack_1∞
1random_rotation_8/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_8/transform/strided_slice/stack_2ц
)random_rotation_8/transform/strided_sliceStridedSlice*random_rotation_8/transform/Shape:output:08random_rotation_8/transform/strided_slice/stack:output:0:random_rotation_8/transform/strided_slice/stack_1:output:0:random_rotation_8/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_8/transform/strided_sliceХ
&random_rotation_8/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_8/transform/fill_value∆
6random_rotation_8/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_8/random_flip_up_down/add:z:01random_rotation_8/rotation_matrix/concat:output:02random_rotation_8/transform/strided_slice:output:0/random_rotation_8/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_8/transform/ImageProjectiveTransformV3Ё
IdentityIdentityKrandom_rotation_8/transform/ImageProjectiveTransformV3:transformed_images:02^random_rotation_8/stateful_uniform/RngReadAndSkip*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2f
1random_rotation_8/stateful_uniform/RngReadAndSkip1random_rotation_8/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
∆ь
з$
"__inference__traced_restore_147424
file_prefix;
!assignvariableop_conv2d_89_kernel: /
!assignvariableop_1_conv2d_89_bias: =
#assignvariableop_2_conv2d_90_kernel: @/
!assignvariableop_3_conv2d_90_bias:@=
#assignvariableop_4_conv2d_91_kernel:@@/
!assignvariableop_5_conv2d_91_bias:@=
#assignvariableop_6_conv2d_92_kernel:@@/
!assignvariableop_7_conv2d_92_bias:@=
#assignvariableop_8_conv2d_93_kernel:@@/
!assignvariableop_9_conv2d_93_bias:@>
$assignvariableop_10_conv2d_94_kernel:@@0
"assignvariableop_11_conv2d_94_bias:@6
#assignvariableop_12_dense_28_kernel:	А@/
!assignvariableop_13_dense_28_bias:@5
#assignvariableop_14_dense_29_kernel:@/
!assignvariableop_15_dense_29_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: *
assignvariableop_21_variable:	,
assignvariableop_22_variable_1:	#
assignvariableop_23_total: #
assignvariableop_24_count: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: E
+assignvariableop_27_adam_conv2d_89_kernel_m: 7
)assignvariableop_28_adam_conv2d_89_bias_m: E
+assignvariableop_29_adam_conv2d_90_kernel_m: @7
)assignvariableop_30_adam_conv2d_90_bias_m:@E
+assignvariableop_31_adam_conv2d_91_kernel_m:@@7
)assignvariableop_32_adam_conv2d_91_bias_m:@E
+assignvariableop_33_adam_conv2d_92_kernel_m:@@7
)assignvariableop_34_adam_conv2d_92_bias_m:@E
+assignvariableop_35_adam_conv2d_93_kernel_m:@@7
)assignvariableop_36_adam_conv2d_93_bias_m:@E
+assignvariableop_37_adam_conv2d_94_kernel_m:@@7
)assignvariableop_38_adam_conv2d_94_bias_m:@=
*assignvariableop_39_adam_dense_28_kernel_m:	А@6
(assignvariableop_40_adam_dense_28_bias_m:@<
*assignvariableop_41_adam_dense_29_kernel_m:@6
(assignvariableop_42_adam_dense_29_bias_m:E
+assignvariableop_43_adam_conv2d_89_kernel_v: 7
)assignvariableop_44_adam_conv2d_89_bias_v: E
+assignvariableop_45_adam_conv2d_90_kernel_v: @7
)assignvariableop_46_adam_conv2d_90_bias_v:@E
+assignvariableop_47_adam_conv2d_91_kernel_v:@@7
)assignvariableop_48_adam_conv2d_91_bias_v:@E
+assignvariableop_49_adam_conv2d_92_kernel_v:@@7
)assignvariableop_50_adam_conv2d_92_bias_v:@E
+assignvariableop_51_adam_conv2d_93_kernel_v:@@7
)assignvariableop_52_adam_conv2d_93_bias_v:@E
+assignvariableop_53_adam_conv2d_94_kernel_v:@@7
)assignvariableop_54_adam_conv2d_94_bias_v:@=
*assignvariableop_55_adam_dense_28_kernel_v:	А@6
(assignvariableop_56_adam_dense_28_bias_v:@<
*assignvariableop_57_adam_dense_29_kernel_v:@6
(assignvariableop_58_adam_dense_29_bias_v:
identity_60ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ђ!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Є 
valueЃ BЂ <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЙ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Н
valueГBА<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЏ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ж
_output_shapesу
р::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<			2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity†
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_89_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_89_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2®
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_90_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¶
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_90_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4®
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_91_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¶
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_91_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6®
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_92_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¶
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_92_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8®
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_93_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¶
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_93_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10ђ
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_94_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11™
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_94_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ђ
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_28_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13©
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_28_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ђ
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_29_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15©
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_29_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16•
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17І
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18І
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¶
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ѓ
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_21§
AssignVariableOp_21AssignVariableOpassignvariableop_21_variableIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_22¶
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23°
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25£
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26£
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27≥
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_89_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28±
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_89_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29≥
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_90_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30±
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_90_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31≥
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_91_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32±
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_91_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33≥
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_92_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34±
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_92_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35≥
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_93_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36±
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_93_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37≥
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_94_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38±
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_94_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39≤
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_28_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40∞
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_28_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41≤
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_29_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42∞
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_29_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43≥
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_89_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44±
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_89_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45≥
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_90_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46±
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_90_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47≥
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_91_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48±
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_91_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49≥
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_92_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50±
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_92_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51≥
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_93_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52±
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_93_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53≥
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_94_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54±
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_94_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55≤
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_28_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56∞
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_28_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57≤
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_29_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58∞
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_29_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_589
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpр

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_59г

Identity_60IdentityIdentity_59:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_60"#
identity_60Identity_60:output:0*Л
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
»
Я
*__inference_conv2d_92_layer_call_fn_146925

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_92_layer_call_and_return_conditional_losses_1451142
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
»
Л
.__inference_sequential_28_layer_call_fn_146508
random_flip_8_input
unknown:	
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_8_inputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_28_layer_call_and_return_conditional_losses_1447822
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namerandom_flip_8_input
Ц
ю
E__inference_conv2d_93_layer_call_and_return_conditional_losses_145132

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
»
Я
*__inference_conv2d_91_layer_call_fn_146905

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_91_layer_call_and_return_conditional_losses_1450962
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€<<@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€>>@
 
_user_specified_nameinputs
№
M
1__inference_max_pooling2d_91_layer_call_fn_145004

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_1449982
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
№
M
1__inference_max_pooling2d_92_layer_call_fn_145016

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_1450102
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ц
ю
E__inference_conv2d_93_layer_call_and_return_conditional_losses_146956

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
№
M
1__inference_max_pooling2d_93_layer_call_fn_145028

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_1450222
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"ћL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ќ
serving_defaultє
]
sequential_27_inputF
%serving_default_sequential_27_input:0€€€€€€€€€АА<
dense_290
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:∆Ё
зЦ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
В_default_save_signature
Г__call__
+Д&call_and_return_all_conditional_losses"дС
_tf_keras_sequentialƒС{"name": "sequential_31", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_31", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_27_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_27", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_7_input"}}, {"class_name": "Resizing", "config": {"name": "resizing_7", "trainable": true, "dtype": "float32", "height": 256, "width": 256, "interpolation": "bilinear"}}, {"class_name": "Rescaling", "config": {"name": "rescaling_7", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}}, {"class_name": "Sequential", "config": {"name": "sequential_28", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_8_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_8", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_8", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_89", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_89", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_90", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_90", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_91", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_91", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_92", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_92", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_93", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_93", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_94", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_94", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_14", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 40, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [32, 256, 256, 3]}, "float32", "sequential_27_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_31", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_27_input"}, "shared_object_id": 0}, {"class_name": "Sequential", "config": {"name": "sequential_27", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_7_input"}}, {"class_name": "Resizing", "config": {"name": "resizing_7", "trainable": true, "dtype": "float32", "height": 256, "width": 256, "interpolation": "bilinear"}}, {"class_name": "Rescaling", "config": {"name": "rescaling_7", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "shared_object_id": 4}, {"class_name": "Sequential", "config": {"name": "sequential_28", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_8_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_8", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_8", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "conv2d_89", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_89", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 12}, {"class_name": "Conv2D", "config": {"name": "conv2d_90", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_90", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 16}, {"class_name": "Conv2D", "config": {"name": "conv2d_91", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_91", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "conv2d_92", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_92", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 24}, {"class_name": "Conv2D", "config": {"name": "conv2d_93", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 27}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_93", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 28}, {"class_name": "Conv2D", "config": {"name": "conv2d_94", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_94", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 32}, {"class_name": "Flatten", "config": {"name": "flatten_14", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 33}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 36}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 39}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 41}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 42}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Љ
layer-0
layer-1
trainable_variables
regularization_losses
	variables
	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"С
_tf_keras_sequentialт{"name": "sequential_27", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_27", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_7_input"}}, {"class_name": "Resizing", "config": {"name": "resizing_7", "trainable": true, "dtype": "float32", "height": 256, "width": 256, "interpolation": "bilinear"}}, {"class_name": "Rescaling", "config": {"name": "rescaling_7", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "shared_object_id": 4, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [32, 256, 256, 3]}, "float32", "resizing_7_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_27", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_7_input"}, "shared_object_id": 1}, {"class_name": "Resizing", "config": {"name": "resizing_7", "trainable": true, "dtype": "float32", "height": 256, "width": 256, "interpolation": "bilinear"}, "shared_object_id": 2}, {"class_name": "Rescaling", "config": {"name": "rescaling_7", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 3}]}}}
л
layer-0
layer-1
 trainable_variables
!regularization_losses
"	variables
#	keras_api
З__call__
+И&call_and_return_all_conditional_losses"ј
_tf_keras_sequential°{"name": "sequential_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_28", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_8_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_8", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_8", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [32, 256, 256, 3]}, "float32", "random_flip_8_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_28", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_8_input"}, "shared_object_id": 5}, {"class_name": "RandomFlip", "config": {"name": "random_flip_8", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}, "shared_object_id": 6}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_8", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 7}]}}}
б

$kernel
%bias
&trainable_variables
'regularization_losses
(	variables
)	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"Ї

_tf_keras_layer†
{"name": "conv2d_89", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_89", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 44}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 256, 256, 3]}}
≥
*trainable_variables
+regularization_losses
,	variables
-	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"Ґ
_tf_keras_layerИ{"name": "max_pooling2d_89", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_89", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 45}}
„


.kernel
/bias
0trainable_variables
1regularization_losses
2	variables
3	keras_api
Н__call__
+О&call_and_return_all_conditional_losses"∞	
_tf_keras_layerЦ	{"name": "conv2d_90", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_90", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 46}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 127, 127, 32]}}
≥
4trainable_variables
5regularization_losses
6	variables
7	keras_api
П__call__
+Р&call_and_return_all_conditional_losses"Ґ
_tf_keras_layerИ{"name": "max_pooling2d_90", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_90", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 47}}
’


8kernel
9bias
:trainable_variables
;regularization_losses
<	variables
=	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"Ѓ	
_tf_keras_layerФ	{"name": "conv2d_91", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_91", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 48}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 62, 62, 64]}}
≥
>trainable_variables
?regularization_losses
@	variables
A	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"Ґ
_tf_keras_layerИ{"name": "max_pooling2d_91", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_91", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 49}}
’


Bkernel
Cbias
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses"Ѓ	
_tf_keras_layerФ	{"name": "conv2d_92", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_92", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 30, 30, 64]}}
≥
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"Ґ
_tf_keras_layerИ{"name": "max_pooling2d_92", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_92", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 51}}
’


Lkernel
Mbias
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"Ѓ	
_tf_keras_layerФ	{"name": "conv2d_93", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_93", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 14, 14, 64]}}
≥
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"Ґ
_tf_keras_layerИ{"name": "max_pooling2d_93", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_93", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 53}}
”


Vkernel
Wbias
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"ђ	
_tf_keras_layerТ	{"name": "conv2d_94", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_94", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 54}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 6, 6, 64]}}
≥
\trainable_variables
]regularization_losses
^	variables
_	keras_api
Я__call__
+†&call_and_return_all_conditional_losses"Ґ
_tf_keras_layerИ{"name": "max_pooling2d_94", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_94", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 55}}
Ъ
`trainable_variables
aregularization_losses
b	variables
c	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses"Й
_tf_keras_layerп{"name": "flatten_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_14", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 56}}
‘

dkernel
ebias
ftrainable_variables
gregularization_losses
h	variables
i	keras_api
£__call__
+§&call_and_return_all_conditional_losses"≠
_tf_keras_layerУ{"name": "dense_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 36, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 256]}}
‘

jkernel
kbias
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
•__call__
+¶&call_and_return_all_conditional_losses"≠
_tf_keras_layerУ{"name": "dense_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 58}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 64]}}
У
piter

qbeta_1

rbeta_2
	sdecay
tlearning_rate$mв%mг.mд/mе8mж9mзBmиCmйLmкMmлVmмWmнdmоemпjmрkmс$vт%vу.vф/vх8vц9vчBvшCvщLvъMvыVvьWvэdvюev€jvАkvБ"
	optimizer
Ц
$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
d12
e13
j14
k15"
trackable_list_wrapper
 "
trackable_list_wrapper
Ц
$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
d12
e13
j14
k15"
trackable_list_wrapper
ќ
unon_trainable_variables
vmetrics

wlayers
trainable_variables
xlayer_regularization_losses
regularization_losses
ylayer_metrics
	variables
Г__call__
В_default_save_signature
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
-
Іserving_default"
signature_map
М
z	keras_api"ъ
_tf_keras_layerа{"name": "resizing_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Resizing", "config": {"name": "resizing_7", "trainable": true, "dtype": "float32", "height": 256, "width": 256, "interpolation": "bilinear"}, "shared_object_id": 2}
В
{	keras_api"р
_tf_keras_layer÷{"name": "rescaling_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Rescaling", "config": {"name": "rescaling_7", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 3}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
±
|non_trainable_variables
}metrics

~layers
trainable_variables
layer_regularization_losses
regularization_losses
Аlayer_metrics
	variables
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
Њ
	Б_rng
В	keras_api"†
_tf_keras_layerЖ{"name": "random_flip_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomFlip", "config": {"name": "random_flip_8", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 43}}
÷
	Г_rng
Д	keras_api"Є
_tf_keras_layerЮ{"name": "random_rotation_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomRotation", "config": {"name": "random_rotation_8", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 7}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Еnon_trainable_variables
Жmetrics
Зlayers
 trainable_variables
 Иlayer_regularization_losses
!regularization_losses
Йlayer_metrics
"	variables
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_89/kernel
: 2conv2d_89/bias
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
µ
Кnon_trainable_variables
Лmetrics
Мlayers
&trainable_variables
 Нlayer_regularization_losses
'regularization_losses
Оlayer_metrics
(	variables
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Пnon_trainable_variables
Рmetrics
Сlayers
*trainable_variables
 Тlayer_regularization_losses
+regularization_losses
Уlayer_metrics
,	variables
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_90/kernel
:@2conv2d_90/bias
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
µ
Фnon_trainable_variables
Хmetrics
Цlayers
0trainable_variables
 Чlayer_regularization_losses
1regularization_losses
Шlayer_metrics
2	variables
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Щnon_trainable_variables
Ъmetrics
Ыlayers
4trainable_variables
 Ьlayer_regularization_losses
5regularization_losses
Эlayer_metrics
6	variables
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_91/kernel
:@2conv2d_91/bias
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
µ
Юnon_trainable_variables
Яmetrics
†layers
:trainable_variables
 °layer_regularization_losses
;regularization_losses
Ґlayer_metrics
<	variables
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
£non_trainable_variables
§metrics
•layers
>trainable_variables
 ¶layer_regularization_losses
?regularization_losses
Іlayer_metrics
@	variables
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_92/kernel
:@2conv2d_92/bias
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
µ
®non_trainable_variables
©metrics
™layers
Dtrainable_variables
 Ђlayer_regularization_losses
Eregularization_losses
ђlayer_metrics
F	variables
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
≠non_trainable_variables
Ѓmetrics
ѓlayers
Htrainable_variables
 ∞layer_regularization_losses
Iregularization_losses
±layer_metrics
J	variables
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_93/kernel
:@2conv2d_93/bias
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
µ
≤non_trainable_variables
≥metrics
іlayers
Ntrainable_variables
 µlayer_regularization_losses
Oregularization_losses
ґlayer_metrics
P	variables
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Јnon_trainable_variables
Єmetrics
єlayers
Rtrainable_variables
 Їlayer_regularization_losses
Sregularization_losses
їlayer_metrics
T	variables
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_94/kernel
:@2conv2d_94/bias
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
µ
Љnon_trainable_variables
љmetrics
Њlayers
Xtrainable_variables
 њlayer_regularization_losses
Yregularization_losses
јlayer_metrics
Z	variables
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ѕnon_trainable_variables
¬metrics
√layers
\trainable_variables
 ƒlayer_regularization_losses
]regularization_losses
≈layer_metrics
^	variables
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
∆non_trainable_variables
«metrics
»layers
`trainable_variables
 …layer_regularization_losses
aregularization_losses
 layer_metrics
b	variables
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses"
_generic_user_object
": 	А@2dense_28/kernel
:@2dense_28/bias
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
µ
Ћnon_trainable_variables
ћmetrics
Ќlayers
ftrainable_variables
 ќlayer_regularization_losses
gregularization_losses
ѕlayer_metrics
h	variables
£__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_29/kernel
:2dense_29/bias
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
µ
–non_trainable_variables
—metrics
“layers
ltrainable_variables
 ”layer_regularization_losses
mregularization_losses
‘layer_metrics
n	variables
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
0
’0
÷1"
trackable_list_wrapper
Ю
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
/
„
_state_var"
_generic_user_object
"
_generic_user_object
/
Ў
_state_var"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
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
Ў

ўtotal

Џcount
џ	variables
№	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 59}
£

Ёtotal

ёcount
я
_fn_kwargs
а	variables
б	keras_api"„
_tf_keras_metricЉ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 42}
:	2Variable
:	2Variable
:  (2total
:  (2count
0
ў0
Џ1"
trackable_list_wrapper
.
џ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ё0
ё1"
trackable_list_wrapper
.
а	variables"
_generic_user_object
/:- 2Adam/conv2d_89/kernel/m
!: 2Adam/conv2d_89/bias/m
/:- @2Adam/conv2d_90/kernel/m
!:@2Adam/conv2d_90/bias/m
/:-@@2Adam/conv2d_91/kernel/m
!:@2Adam/conv2d_91/bias/m
/:-@@2Adam/conv2d_92/kernel/m
!:@2Adam/conv2d_92/bias/m
/:-@@2Adam/conv2d_93/kernel/m
!:@2Adam/conv2d_93/bias/m
/:-@@2Adam/conv2d_94/kernel/m
!:@2Adam/conv2d_94/bias/m
':%	А@2Adam/dense_28/kernel/m
 :@2Adam/dense_28/bias/m
&:$@2Adam/dense_29/kernel/m
 :2Adam/dense_29/bias/m
/:- 2Adam/conv2d_89/kernel/v
!: 2Adam/conv2d_89/bias/v
/:- @2Adam/conv2d_90/kernel/v
!:@2Adam/conv2d_90/bias/v
/:-@@2Adam/conv2d_91/kernel/v
!:@2Adam/conv2d_91/bias/v
/:-@@2Adam/conv2d_92/kernel/v
!:@2Adam/conv2d_92/bias/v
/:-@@2Adam/conv2d_93/kernel/v
!:@2Adam/conv2d_93/bias/v
/:-@@2Adam/conv2d_94/kernel/v
!:@2Adam/conv2d_94/bias/v
':%	А@2Adam/dense_28/kernel/v
 :@2Adam/dense_28/bias/v
&:$@2Adam/dense_29/kernel/v
 :2Adam/dense_29/bias/v
х2т
!__inference__wrapped_model_144532ћ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *<Ґ9
7К4
sequential_27_input€€€€€€€€€АА
Ж2Г
.__inference_sequential_31_layer_call_fn_145681
.__inference_sequential_31_layer_call_fn_145718
.__inference_sequential_31_layer_call_fn_145757
.__inference_sequential_31_layer_call_fn_145796ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
I__inference_sequential_31_layer_call_and_return_conditional_losses_145870
I__inference_sequential_31_layer_call_and_return_conditional_losses_146110
I__inference_sequential_31_layer_call_and_return_conditional_losses_146184
I__inference_sequential_31_layer_call_and_return_conditional_losses_146424ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ж2Г
.__inference_sequential_27_layer_call_fn_146429
.__inference_sequential_27_layer_call_fn_146434
.__inference_sequential_27_layer_call_fn_146439
.__inference_sequential_27_layer_call_fn_146444ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
I__inference_sequential_27_layer_call_and_return_conditional_losses_146454
I__inference_sequential_27_layer_call_and_return_conditional_losses_146464
I__inference_sequential_27_layer_call_and_return_conditional_losses_146474
I__inference_sequential_27_layer_call_and_return_conditional_losses_146484ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ж2Г
.__inference_sequential_28_layer_call_fn_146489
.__inference_sequential_28_layer_call_fn_146494
.__inference_sequential_28_layer_call_fn_146501
.__inference_sequential_28_layer_call_fn_146508ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
I__inference_sequential_28_layer_call_and_return_conditional_losses_146512
I__inference_sequential_28_layer_call_and_return_conditional_losses_146682
I__inference_sequential_28_layer_call_and_return_conditional_losses_146686
I__inference_sequential_28_layer_call_and_return_conditional_losses_146856ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
‘2—
*__inference_conv2d_89_layer_call_fn_146865Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_conv2d_89_layer_call_and_return_conditional_losses_146876Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Щ2Ц
1__inference_max_pooling2d_89_layer_call_fn_144980а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
і2±
L__inference_max_pooling2d_89_layer_call_and_return_conditional_losses_144974а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
‘2—
*__inference_conv2d_90_layer_call_fn_146885Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_conv2d_90_layer_call_and_return_conditional_losses_146896Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Щ2Ц
1__inference_max_pooling2d_90_layer_call_fn_144992а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
і2±
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_144986а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
‘2—
*__inference_conv2d_91_layer_call_fn_146905Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_conv2d_91_layer_call_and_return_conditional_losses_146916Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Щ2Ц
1__inference_max_pooling2d_91_layer_call_fn_145004а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
і2±
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_144998а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
‘2—
*__inference_conv2d_92_layer_call_fn_146925Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_conv2d_92_layer_call_and_return_conditional_losses_146936Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Щ2Ц
1__inference_max_pooling2d_92_layer_call_fn_145016а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
і2±
L__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_145010а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
‘2—
*__inference_conv2d_93_layer_call_fn_146945Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_conv2d_93_layer_call_and_return_conditional_losses_146956Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Щ2Ц
1__inference_max_pooling2d_93_layer_call_fn_145028а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
і2±
L__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_145022а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
‘2—
*__inference_conv2d_94_layer_call_fn_146965Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_conv2d_94_layer_call_and_return_conditional_losses_146976Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Щ2Ц
1__inference_max_pooling2d_94_layer_call_fn_145040а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
і2±
L__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_145034а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
’2“
+__inference_flatten_14_layer_call_fn_146981Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
р2н
F__inference_flatten_14_layer_call_and_return_conditional_losses_146987Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_dense_28_layer_call_fn_146996Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_dense_28_layer_call_and_return_conditional_losses_147007Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_dense_29_layer_call_fn_147016Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_dense_29_layer_call_and_return_conditional_losses_147027Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„B‘
$__inference_signature_wrapper_145644sequential_27_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 µ
!__inference__wrapped_model_144532П$%./89BCLMVWdejkFҐC
<Ґ9
7К4
sequential_27_input€€€€€€€€€АА
™ "3™0
.
dense_29"К
dense_29€€€€€€€€€є
E__inference_conv2d_89_layer_call_and_return_conditional_losses_146876p$%9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€юю 
Ъ С
*__inference_conv2d_89_layer_call_fn_146865c$%9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€юю µ
E__inference_conv2d_90_layer_call_and_return_conditional_losses_146896l./7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€}}@
Ъ Н
*__inference_conv2d_90_layer_call_fn_146885_./7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€}}@µ
E__inference_conv2d_91_layer_call_and_return_conditional_losses_146916l897Ґ4
-Ґ*
(К%
inputs€€€€€€€€€>>@
™ "-Ґ*
#К 
0€€€€€€€€€<<@
Ъ Н
*__inference_conv2d_91_layer_call_fn_146905_897Ґ4
-Ґ*
(К%
inputs€€€€€€€€€>>@
™ " К€€€€€€€€€<<@µ
E__inference_conv2d_92_layer_call_and_return_conditional_losses_146936lBC7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Н
*__inference_conv2d_92_layer_call_fn_146925_BC7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@µ
E__inference_conv2d_93_layer_call_and_return_conditional_losses_146956lLM7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Н
*__inference_conv2d_93_layer_call_fn_146945_LM7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@µ
E__inference_conv2d_94_layer_call_and_return_conditional_losses_146976lVW7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Н
*__inference_conv2d_94_layer_call_fn_146965_VW7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@•
D__inference_dense_28_layer_call_and_return_conditional_losses_147007]de0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€@
Ъ }
)__inference_dense_28_layer_call_fn_146996Pde0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€@§
D__inference_dense_29_layer_call_and_return_conditional_losses_147027\jk/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
)__inference_dense_29_layer_call_fn_147016Ojk/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€Ђ
F__inference_flatten_14_layer_call_and_return_conditional_losses_146987a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Г
+__inference_flatten_14_layer_call_fn_146981T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "К€€€€€€€€€Ап
L__inference_max_pooling2d_89_layer_call_and_return_conditional_losses_144974ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_89_layer_call_fn_144980СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_144986ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_90_layer_call_fn_144992СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_144998ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_91_layer_call_fn_145004СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_145010ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_92_layer_call_fn_145016СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_145022ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_93_layer_call_fn_145028СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_145034ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_94_layer_call_fn_145040СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ѕ
I__inference_sequential_27_layer_call_and_return_conditional_losses_146454tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Ѕ
I__inference_sequential_27_layer_call_and_return_conditional_losses_146464tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Ћ
I__inference_sequential_27_layer_call_and_return_conditional_losses_146474~KҐH
AҐ>
4К1
resizing_7_input€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Ћ
I__inference_sequential_27_layer_call_and_return_conditional_losses_146484~KҐH
AҐ>
4К1
resizing_7_input€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ £
.__inference_sequential_27_layer_call_fn_146429qKҐH
AҐ>
4К1
resizing_7_input€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААЩ
.__inference_sequential_27_layer_call_fn_146434gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААЩ
.__inference_sequential_27_layer_call_fn_146439gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€АА£
.__inference_sequential_27_layer_call_fn_146444qKҐH
AҐ>
4К1
resizing_7_input€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€ААЅ
I__inference_sequential_28_layer_call_and_return_conditional_losses_146512tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ≈
I__inference_sequential_28_layer_call_and_return_conditional_losses_146682xЎAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ѕ
I__inference_sequential_28_layer_call_and_return_conditional_losses_146686БNҐK
DҐA
7К4
random_flip_8_input€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ”
I__inference_sequential_28_layer_call_and_return_conditional_losses_146856ЕЎNҐK
DҐA
7К4
random_flip_8_input€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ¶
.__inference_sequential_28_layer_call_fn_146489tNҐK
DҐA
7К4
random_flip_8_input€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААЩ
.__inference_sequential_28_layer_call_fn_146494gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААЭ
.__inference_sequential_28_layer_call_fn_146501kЎAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€АА™
.__inference_sequential_28_layer_call_fn_146508xЎNҐK
DҐA
7К4
random_flip_8_input€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€АА…
I__inference_sequential_31_layer_call_and_return_conditional_losses_145870|$%./89BCLMVWdejkAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ћ
I__inference_sequential_31_layer_call_and_return_conditional_losses_146110~Ў$%./89BCLMVWdejkAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ „
I__inference_sequential_31_layer_call_and_return_conditional_losses_146184Й$%./89BCLMVWdejkNҐK
DҐA
7К4
sequential_27_input€€€€€€€€€АА
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ў
I__inference_sequential_31_layer_call_and_return_conditional_losses_146424ЛЎ$%./89BCLMVWdejkNҐK
DҐA
7К4
sequential_27_input€€€€€€€€€АА
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ѓ
.__inference_sequential_31_layer_call_fn_145681|$%./89BCLMVWdejkNҐK
DҐA
7К4
sequential_27_input€€€€€€€€€АА
p 

 
™ "К€€€€€€€€€°
.__inference_sequential_31_layer_call_fn_145718o$%./89BCLMVWdejkAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "К€€€€€€€€€£
.__inference_sequential_31_layer_call_fn_145757qЎ$%./89BCLMVWdejkAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "К€€€€€€€€€∞
.__inference_sequential_31_layer_call_fn_145796~Ў$%./89BCLMVWdejkNҐK
DҐA
7К4
sequential_27_input€€€€€€€€€АА
p

 
™ "К€€€€€€€€€ѕ
$__inference_signature_wrapper_145644¶$%./89BCLMVWdejk]ҐZ
Ґ 
S™P
N
sequential_27_input7К4
sequential_27_input€€€€€€€€€АА"3™0
.
dense_29"К
dense_29€€€€€€€€€