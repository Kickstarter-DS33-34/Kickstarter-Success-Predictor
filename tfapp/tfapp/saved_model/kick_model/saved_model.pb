??$
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
?
DenseBincount
input"Tidx
size"Tidx
weights"T
output"T"
Tidxtype:
2	"
Ttype:
2	"
binary_outputbool( 
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
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
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
?
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
executor_typestring ??
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??"
n

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name935862*
value_dtype0	
?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_896632*
value_dtype0	
p
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name975125*
value_dtype0	
?
MutableHashTable_1MutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_935895*
value_dtype0	
q
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	1014388*
value_dtype0	
?
MutableHashTable_2MutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_975158*
value_dtype0	
q
hash_table_3HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	1053651*
value_dtype0	
?
MutableHashTable_3MutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_1014421*
value_dtype0	
q
hash_table_4HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name	1092914*
value_dtype0	
?
MutableHashTable_4MutableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_nametable_1053684*
value_dtype0	
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
d
mean_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_1
]
mean_1/Read/ReadVariableOpReadVariableOpmean_1*
_output_shapes
:*
dtype0
l

variance_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_1
e
variance_1/Read/ReadVariableOpReadVariableOp
variance_1*
_output_shapes
:*
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0	
d
mean_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_2
]
mean_2/Read/ReadVariableOpReadVariableOpmean_2*
_output_shapes
:*
dtype0
l

variance_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_2
e
variance_2/Read/ReadVariableOpReadVariableOp
variance_2*
_output_shapes
:*
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0	
d
mean_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_3
]
mean_3/Read/ReadVariableOpReadVariableOpmean_3*
_output_shapes
:*
dtype0
l

variance_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_3
e
variance_3/Read/ReadVariableOpReadVariableOp
variance_3*
_output_shapes
:*
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0	
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?_2*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	?_2*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:2*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:2*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
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
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
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
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?_2*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	?_2*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:2*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?_2*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	?_2*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:2*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R 
\
Const_5Const*
_output_shapes

:*
dtype0*
valueB*?[G
\
Const_6Const*
_output_shapes

:*
dtype0*
valueB*a?S
\
Const_7Const*
_output_shapes

:*
dtype0*
valueB*?3B
\
Const_8Const*
_output_shapes

:*
dtype0*
valueB*[?C
\
Const_9Const*
_output_shapes

:*
dtype0*
valueB*?K?B
]
Const_10Const*
_output_shapes

:*
dtype0*
valueB*?=RD
]
Const_11Const*
_output_shapes

:*
dtype0*
valueB*mt B
]
Const_12Const*
_output_shapes

:*
dtype0*
valueB*??AC
J
Const_13Const*
_output_shapes
: *
dtype0	*
value	B	 R 
J
Const_14Const*
_output_shapes
: *
dtype0	*
value	B	 R 
J
Const_15Const*
_output_shapes
: *
dtype0	*
value	B	 R 
J
Const_16Const*
_output_shapes
: *
dtype0	*
value	B	 R 
J
Const_17Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
Const_18Const*
_output_shapes
:*
dtype0*w
valuenBlBUSBGBBCABAUBDEBMXBFRBITBESBNLBSEBHKBDKBNZBCHBSGBIEBBEBJPBATBNOBLUBPLBGRBSI
?
Const_19Const*
_output_shapes
:*
dtype0	*?
value?B?	"?                                                        	       
                                                                                                                
ŵ
Const_20Const*
_output_shapes	
:?]*
dtype0*??
value??B???]Blos angelesBlondonBnew yorkBchicagoBsan franciscoBbrooklynBseattleBportlandBatlantaBtorontoBaustinBbostonBphiladelphiaBminneapolisB
washingtonB	san diegoBhoustonBdallasBdenverB	las vegasB	vancouverB	manhattanB	hong kongBparisB	nashvilleBorlandoB	melbourneBsydneyBmiamiB	edinburghBphoenixBmontrealBberlinB
pittsburghBsalt lake cityBmexico cityBcolumbusBdetroitB	baltimoreBoaklandB	amsterdamB
birminghamB	stockholmB
manchesterBnew orleansB	st. louisBkansas cityBtampaB	singaporeB
sacramentoB	clevelandBsan joseB	charlotteBindianapolisBsan antonioBrichmondBtokyoB	hollywoodBbristolB
copenhagenBbrisbaneB	barcelonaB
cincinnatiBraleighB	milwaukeeBmadridBtucsonBitaliaBalbuquerqueB	rochesterBcalgaryB	cambridgeBmexicoBjacksonvilleBgrand rapidsBmadisonBfranceBboulderBaucklandBglasgowBdublinB
louisvilleB
charlestonBottawaBperthBmilanBprovoBspringfieldBgreater londonBviennaBromeBedmontonBst. paulB
providenceBcolorado springsBmemphisBberkeleyBblack rock cityBleedsB	sheffieldB
fort worthBbuffaloB	ashevilleBcolumbiaB
wilmingtonB	liverpoolBhonoluluBdurhamB
nottinghamB	lexingtonBoklahoma cityBsavannahBboiseBfort lauderdaleBathensB	ann arborB
long beachBadelaideBespañaBlincolnBoxfordBosloBbrusselsBspokaneBnewcastle upon tyneBhamburgBmunichBeugeneBnewarkBirvineBcardiffBbrighton and hove cityB
greenvilleBqueensBguadalajaraBlong islandBdaytonBdowntown torontoBzurichBwinnipegBtulsaB	new havenBsanta feB
burlingtonBomahaBfayettevilleBst. petersburgB
santa cruzBtallahasseeBwalesBsarasotaBsyracuseBsouth floridaB	arlingtonB
des moinesBveniceBrenoB	knoxvilleB
greensboroBbelfastB	anchorageB
bellinghamBalbanyBflorenceBvictoriaBsanta barbaraBseoulBjersey cityBgreater manchesterBvirginia beachBbloomingtonBchattanoogaBnorfolkBcologneBsanta monicaBsalemBtoledoB	lancasterBnorwichBbronxBshenzhenBbournemouthBquebecBnorthamptonBhalifaxB
portsmouthBjacksonB
gothenburgBlittle rockBhamiltonBakronB
scottsdaleBcornwall and isles of scillyBmalmöB
alexandriaBkentB	lafayetteB	palo altoBfort collinsB
wellingtonBtacomaBwinston-salemBburbankBolympiaBfresnoBwichitaB	worcesterBcharlottesvilleBsouthamptonBhartfordBpasadenaBdeutschBwest palm beachBvalenciaBnaplesBontarioBdentonBbaton rougeBgainesvilleBcoventryBorangeB
huntsvilleBlansingBmesaBhuntington beachBtempeByorkB	riversideB	rotterdamBkingstonBbrightonB
fort wayneBtaipei cityBreadingBnorth yorkshireBbendB	leicesterB	queretaroBauroraBauburnBsan juanB	monterreyBel pasoBerieBbathB	kalamazooBbozemanB
somervilleBessexBoremBmiami beachBithacaBnorth hollywoodBgenevaB
santa rosaBantwerpBlyonB	pensacolaBogdenBplymouthBnewport beachBglendaleBchapel hillBsomersetBsanta claraBexeterBsan luis obispoBstaten islandBmissoulaB
harrisburgBlawrenceBduluthB	iowa cityB	lynchburgBfairfaxB	eindhovenBchristchurchBsurreyBturinBcantonBshanghaiBstate collegeB	frankfurtB
costa mesaBwaterlooBfalmouthB
boca ratonBpueblaBbakersfieldBanaheimB	the hagueBfredericksburgB
fort myersBlower east sideBlakelandBkievBchandlerBméxicoButrechtB	fairfieldB	stuttgartBcanberraB	princetonBbeijingBmilton keynesB	hendersonB	allentownBcity of gold coastB
evansvilleBwilliamsburgBhanoverBsioux fallsBmountain viewBdundeeBashlandB
south bendB
cheltenhamB	champaignBmontereyBarhusB
middletownBdevonBfargoBastoriaBaberdeenBnew brunswickBnewportBfremontB
winchesterB	newcastleBstamfordBwindsorB	rockvilleBdoverBsilver springB
huntingtonB	sunnyvaleB
shreveportBnairobiB
dusseldorfBcheshireBbolognaBtroyBreddingBmodestoBpeterboroughBcorkBflintBwest sussexB	montclairB	frederickBmoscowBwest yorkshireBwest midlandsBtraverse cityBchicoBbangkokBmilanoBsuffolkBventuraBpeoriaBmyrtle beachB
lancashireBpragueBmississaugaBmobileBtrentonBrockfordB	bethlehemBwestminsterB
binghamtonBtijuanaBsanta claritaBplanoBocalaBhudsonBstoke-on-trentB	santa anaBlausanneBnormanB
clearwaterBlimaBevanstonBbuenos airesBpetalumaBpanama cityBkelownaBbellevueBtoulouseBkronenwetterB	hampshireBlubbockBloganBbogotaB	kitchenerB	green bayBamherstB	annapolisBwest hollywoodBmedfordBfranklinBdurangoBderbyB	saskatoonBharlemBbergenBcumbriaBbordeauxBhertfordshireBdavisBhuntleyB	woodstockBlakewoodBhiloB
eau claireBcorpus christiBbowling greenB	reykjavikBredmondB	jerusalemB	flagstaffB	corvallisBlowellB
san marcosBnorth atlantaB	davenportB	cupertinoB	cape townB
st. georgeB
lake worthBjohnson cityBhavanaBroanokeBprestonB	marseilleBhamptonB
youngstownBnashuaBidaho fallsBgilbertBveracruzB
derbyshireBbudapestB	oceansideBdecaturBbradfordBredondo beachB	fairbanksB
las crucesBconcordBcedar rapidsBwarsawBst. augustineBpalm springsB
new londonBeverettBmariettaB	san mateoB
montgomeryBeast sussexB
colchesterBpoughkeepsieBgloucestershireBlongmontBhaywardB	stratfordBdorsetBscrantonB
georgetownBclarksvilleBaccraB
strasbourgBalamedaBlebanonB
tuscaloosaBsevilleBnantesB
chesapeakeBbangorBhot springsBnapaB	blackpoolBmünchenBlilleBhastingsBstocktonBstanfordBcharlottetownB	bradentonBcarleton placeB
abbotsfordBmalagaBgrazBeasthamptonBsaratoga springsBtemeculaBlovelandBeurekaBstaffordshireBmuncieBgoldenB	fullertonBcamdenBmidlandBcoeur d'aleneBcaryB
carbondaleBaugustaB
napervilleBmanilaBhollandBdaytona beachBbooneBsaginawB	karlsruheBcairnsBaguascalientesB
montpelierBleipzigBgrand junctionBcairoBtorranceBspartanburgBeast lansingB
shrewsburyB
san rafaelB	osaka-shiBméridaBmonroeBbedfordBwarwickButicaBoverland parkBleónBkeeneB	brunswickBpalermoBkatyBjefferson cityBamesBwalnutBthe woodlandsBswindonBluxembourg cityBcounty durhamBamarilloB
germantownBfrankfurt mainBpalmdaleB	littletonBredwood cityBhobartBgenoaBcheyenneBwacoBtaosBlong island cityBleicestershireB	bremertonB	rosevilleB
carrolltonBcarlsbadBarcataBaalborgBvilniusB
stillwaterBport townsendBipswichBcambridgeshireBbransonB	beavertonBdresdenBwausauBsterlingB	ljubljanaB	kyoto-shiBhelenaB
alpharettaB	ypsilantiBkampalaBistanbulBconwayBbelgradeBurbanaBtel avivB	st. cloudBsouth yorkshireB
rapid cityB	wiltshireBtylerBmurfreesboroBmumbaiBdortmundBcherry hillBrennesBquincyBfriscoBcoronaBlisbonB	kissimmeeBwalla wallaBstudio cityBsedonaBjohnsonBhobokenB
shropshireBpompano beachBnorwalkBmiddlesbroughBgranadaBgaithersburgBnewport newsBkey westB	kathmanduBbushwickBveronaBport st. lucieBmilfordBmalibuB	groningenBcollege stationBthousand oaksB	rock hillBleesburgBferndaleBappletonBnelsonBgerlachBbrattleboroBwest chesterB
valparaisoBmeridianBlawrencevilleBindependenceB	elk groveBberneB
sunderlandBlimerickBlake forestBgreeleyB	englewoodBelginBbillingsBstaffordBscarboroughB	salisburyB
new castleB	kalispellBharrisonburgBedmondBeastonB
canterburyBbethesdaBmaconBlehiBkenoshaBjoplinBculver cityBroswellBpuyallupB	nurembergB
morristownB
morgantownBlagosBgrenobleBchathamBtorinoBsofiaB	encinitasB	alabasterB	watertownBsonomaBpalm bayB	menomonieBcancunB	sao pauloBoaxacaBmuskegonBhullB
doylestownBzagrebBwarrenB
ulan batorBquitoBmontpellierBlinzBkirklandB
heidelbergBbarrieBsaskatchewanBnorthumberlandBnewnanBmainzB
maastrichtBlaguna beachBbentonvilleB
st. john'sBrancho cucamongaBmankatoBgrass valleyBgalwayBdelray beachBwarwickshireBrio de janeiroB
pittsfieldB
high pointBeast villageB
sherbrookeBmount vernonBlongviewBlehigh valleyBclovisB	camarilloBwinter parkB
warringtonBtupeloBmount pleasantB
gloucesterBdunedinBbaselBarvadaBredlandsB
las palmasBjohannesburgBgrand forksB	chihuahuaBwoodburyBrexburgBpleasant groveBpescaraB
great neckBestado de mexicoBbresciaBtempleBkielBgarlandBcummingB	bucharestBmurciaBmaineBfreiburgBcuyahoga fallsBcollege parkB	brentwoodBamerican forkB
toms riverBspring hillB
palm coastB
chiang maiBuppsalaBsandyBnorthamptonshireBnijmegenBirvingBgrants passBwichita fallsBwest hartfordB	trondheimBsherman oaksBnampaBmcallenB	livermoreB	innsbruckBho chi minh cityBbrownsvilleBsan bernardinoBhigh wycombeB	guildfordBdelawareBcarson cityBbremenBbowieBrestonBnew britainBmarkhamBmargateBlundB	covingtonBsimi valleyBniceBmartinezBlondon borough of hackneyBliegeBlaurelBhilton head islandBsouth lake tahoeBrigaBpuebloBprescottBkingston upon thamesBhamdenB
blacksburgBbeverly hillsBbereaBwalnut creekBvailBtustinBqueen creekBmedellinBkabulBbuckinghamshireBbeaconBbanffBantiochBzaragozaBwhite plainsB	waterfordBreginaBoshkoshBcataniaBwilkes-barreBtallinnBsalzburgB	ridgewoodB	new paltzBlincolnshireBlewistonBlake charlesBguelphBgrimsbyB	den boschB
chelmsfordBabileneBumeåBsudburyBsarajevoB	sandpointBpurchaseBodenseBnevada cityBmoreno valleyB
menlo parkB
lewisvilleBlangleyB
hagerstownB	finksburgBdowntown los angelesBsmyrnaBnovatoBnewtonBmission viejoB	marrakeshBlongyearbyenBgatineauBandersonBwhittierBoak parkBgardenaBgarden groveBde landBwyomingBvinelandBterre hauteB
st. josephB	san pedroBsalinasB	rotherhamBjuneauBhuddersfieldBgulfportBcarmelBsouth portlandBsanto domingoBniagara fallsBlompocBkilleenB	greenwoodBgeelongB
folkestoneBcoral springsB	claremontBchinoBbrandonBashburnB
antarcticaBwayneB	tellurideBsouthend-on-seaBs. luis potosiB
pennsvilleBnanaimoB
livingstonBleidenBedwardsvilleBdubaiB
cedar cityBanokaByucatanBwarner robinsBvistaBvallejoBshawneeB
post fallsBoviedoBniagaraB	kennewickBkennesawB
hermosilloB	escondidoBdanvilleBcorningBcomoBbilbaoBthunder bayBswanseaBspokane valleyBsouth jordanBmanassasB	maidstoneBjoshua treeB	pocatelloBpaducahBodessaBmckinneyBmacombBhillsboroughB
greenfieldBculiacanB	wakefieldB
plainfieldBmonctonBlewesBhelsingborgBfontanaBderryBdakarBcouncil bluffsBciudad juarezBbedfordshireBwilliamstownBvigoBstevens pointBsantiagoB
marysvilleB
leamingtonBkahuluiBherndonBhanoiB	gatesheadBedinburgB
bridgeportBaugsburgBvictorvilleBsan clementeB
san angeloBrockportBparmaBnagoyaBmesquiteB	marquetteBlentate sul sevesoBfalls churchB	berkshireBatlantic cityBwolverhamptonBvan nuysBtunbridge wellsB
sioux cityBpeckhamBnewburghBluganoBhendersonvilleB	harrogateBfond du lacBfolsomBaspenBworthingBweymouthBtruroBspringBplacervilleBoswegoBormond beachBnewburyportBkigaliBhyattsvilleB	hillsboroBeast riding of yorkshireBdelftBcentralBbemidjiBbeirutBbeaumontBschenectadyBsanfordBpomonaBosakaB	north bayBnorth adamsBlaramieBfairhopeB
dana pointB	brooklineBbethelBasbury parkBtauntonBpotsdamBpatersonB
new albanyBmill valleyBkamloopsBjolietBfrederictonBfederal wayBelktonBboynton beachBörebroBwaukeshaBsparksBpamplonaBherefordBfalkirkBdestinB
cookevilleBaachenBwestchesterBwest lafayetteBvicenzaBsierra vistaBred bankBramsgateBracineBoxfordshireBnorthern virginiaBnewtownBlawtonBlaieB	kingsportBkarlstadBholyokeBhattiesburgB	greenwichB
cape coralBbryanByerevanBtromsoBtopekaBstroudBst. catharinesBsanta cruz de tenerifeBpullmanBparkerBpalm beach gardensBnorth charlestonBmoreliaBmechanicsburgB
lethbridgeB	la crosseBkailuaB	claremoreBcarlisleB
bloomfieldB
bellevilleBankenyBaltoonaByakimaB
valladolidB	vacavilleBteaneckBstauntonBrogersBrocklandBpleasant hillBlodiB	ketteringB	invernessBdarwinB
chichesterBburkeBannecyBwoodland hillsBwoodinvilleBwest philadelphiaBwalthamBojaiBmetzB	mansfieldBlargoBisle of wightBbridgewaterB	blackburnBammanBwestportB	pittsburgBnyackBnew bedfordBlutonBla jollaBjupiterBhammondBgoshenBcleveland heightsBcampbellB	byron bayBbreaBaliso viejoBalicanteB	westfieldB
waynesboroBunionBst. charlesBsalinaBred deerBpooleB
phnom penhBoberlinBminotBlondonderryBjaliscoBjakartaB
greenpointB
gig harborB
chateaugayBbay cityByonkersBwilsonBwest orangeBspringvilleBsouth philadelphiaB
san carlosBrussellvilleBrocky mountBrancho cordovaBmarionB	los gatosBhelsinkiBfairmontBeagle riverB	dartmouthBcliftonBcampecheBbolzanoB	wiesbadenBwailukuBsurpriseB	snohomishB
saint johnB	perpignanB
northridgeBnormalB	new delhiB	nederlandB	magdeburgB	galvestonBdubuqueBdeltonaBcypressBchiapasBchesterfieldBcannesBbergamoBaddis ababaBwilliamsportBwaldorfBvaldostaB
southfieldB
sebastopolBsantiago de compostelaBport-au-princeBnorcrossBmooresvilleBmiramarBglens fallsB	frankfortBfifeBelizabethtownBde kalbBconroeBclermont-ferrandBchengduBbig bear lakeBallenBaix-en-provenceB
woodbridgeB	tonawandaBtilburgBriver fallsB	pawtucketBnottinghamshireB	newmarketBmurrietaBmilpitasB
middleburyBhorshamBhesperiaBelmiraBeast los angelesBbrodheadsvilleBbismarckB	aylesburyBapexBwest covinaBvisaliaBprince georgeBpetoskeyB
ocean cityBnew port richeyB	longueuilB
healdsburgBfort walton beachBboltonB	yuba cityB
wollongongBwest jordanBvejleBusaBtel aviv-yafoB	stavangerBsouthingtonB
round rockBpalma de mallorcaBnacogdochesBmonroviaBmissouri cityBmarfaBla pazBkolkataBkearneyB	elizabethBcranstonBbonnBbeverlyBbattle creekBarcadiaBapple valleyB	wenatcheeB	salamancaBrancho santa margaritaBkrakowBhickoryB	evergreenBebeltoftBbrainerdBbeaufortBbarnsleyBwroclawBwhitbyBuplandB
sugar landBsouth pasadenaBpoulsboBolatheBnew bernBmissionB	maplewoodBlees summitBkokomoBklamath fallsB	kaysvilleB
guanajuatoBgreat fallsBflower moundB	fitchburgBdowntown montréalB	dickinsonBdearbornBdavieB
cuernavacaBcornwallBbanburyBazusaBalfredBwrexhamBstevensvilleB
st. albansBrochester hillsBpisaBmanaguaBmammoth lakesB	glassboroBfreeportB	dahlonegaBbiloxiBbelmontBarnhemBactonBstroudsburgBst. andrewsBsouth minneapolisB
schaumburgBsault ste. marieBsanta mariaB
richardsonBrandolphBoshawaBmodenaBmichigan cityBmartinsburgBmakawaoBliberty lakeB	lewisburgBkitteryBkapaaB	farmvilleB
emeryvilleB
dorchesterBdenpasarBchula vistaBcape girardeauB
burlingameB
brockvilleB
atascaderoByorba lindaBtowsonB
townsvilleBswedenBsunolBsunburyBstratford-upon-avonBsherwoodBsaltilloBperugiaBpalmerston northBoakvilleB
midlothianBlynnwoodBlenexaBlecceBkuala lumpurBkiheiBhowellBhermosa beachBhaarlemB	fallbrookBennisBaventuraBwest sacramentoB	waterburyBtysons cornerBtbilisiBtaurangaBswansea city and countyBscottsbluffBprovincetownBport charlotteBpacificaB	owensboroBnorrköpingBmurrayB	mishawakaBmenashaBlivoniaBleuvenB
leeuwardenBlahainaBkumasiB	johnstownBjacksonville beachBhackneyBgreshamB
fort braggBclermontBcentrevilleBcaldwellBcaenB	bielefeldBwest monroeBsteamboat springsB
scunthorpeB	sausalitoBrutlandB	royal oakBrockwallBprescott valleyBport richeyBpoint reyes stationBpflugervilleBpembrokeBoxnardBoneontaB
merseysideBmanhattan beachB	hammontonBguatemala cityB
framinghamBelkhartBdraperBcanbyBburnleyBasheboroB	wimberleyBwasillaBwappingers fallsBtolucaBtelfordBsuperiorB
snoqualmieBportageBlaytonBkaiserslauternB	jonesboroBfuquay-varinaBfishersBellicott cityBeast nashvilleBeast brunswickBdar es salaamBcuzcoBclifton park centerBcagliariBbeltonBandoverBaikenBweston-super-mareBwesley chapelB	stockportBsan leandroBsan juan capistranoBpuerto vallartaB	pittsboroBmannheimB
janesvilleB	jamestownB	hawthorneB
hartlepoolBghentBclintonBclaytonBcaracasBcadizBbloomfield hillsBapache junctionBzaporizhzhyaBsheltonBsan salvadorBrouenB	park cityBpalisades parkB
northfieldBnew smyrna beachBmays landingBmarina del reyBlondon borough of greenwichB	levittownBlaguna hillsBkingston upon hull cityBkellerBkailua konaBhaleiwaB	grayslakeBgoletaBeast palo altoBdurbanBchillicotheBblaineB	belvidereBballaratBalhambraBagoura hillsB
whitehorseBwestwoodBwestfordBwest tisburyBwallingfordBpembroke pinesBossiningBnew braunfelsBlaredoB	indonesiaBindioBgrand havenBfromeB
fort smithBfindlayBeulessB
enterpriseB
el cerritoBduisburgB	cullowheeBcocoaB
chatsworthBcedar fallsB
carmichaelB	calabasasB
buena parkBberwynBayrBwiganB	warrentonBtrois-rivièresBtampicoBtakoma parkB	southavenBshepherdstownBreimsBpalm harborBnew milfordBmenifeeBlondon borough of camdenBlaguna niguelBjasperB	inglewoodB
hutchinsonBgranitevilleBgrand prairieB
gettysburgBgaryBfountain valleyBfort leeBevansBessenB	darmstadtBdanversBcovinaB
cottonwoodBclemsonBcitrus heightsBchelseaB	carrizozoBcarrboroBcalifornia cityBalamosaBwest melbourneBwaynesvilleBulmBubudB
twin fallsBtorreónBtorquayBthomasvilleBsouth san franciscoBsouth lanarkshireBslidellBrichlandBportoBphillipsburgBmount hollyBmetepecB	mendocinoBmedicine hatBlansdaleBkutztownB
klagenfurtB	hurricaneBgrand canyon villageBgironaB
ellensburgBel dorado hillsBdothanBcrystal lakeBcorinthBcordobaBchesterB
centennialBbury st. edmundsBbrugesB	brantfordBbathurstBapopkaBaberystwythBwheatonBwexfordBukiahBudineB
titusvilleBtaichung cityBsouthern pinesBsalfordBrockaway beachB
rio ranchoBravennaB
pleasantonBpaso roblesBodesaBnutleyBnew plymouthBmount laurelBmoorheadBmartinB
letchworthBgrotonBedisonBdundalkBdouglasvilleBcolomboB	brookingsB
benningtonBwoodlandBwinstedBwinonaBsuisun cityBsouth hadleyBsouth bostonBsan anselmoBpunta gordaBpearlandBpalmerBpalm desertBpahoaBold lymeBmount clemensB	milwaukieBmetairieBmercedB	massillonBmahwahBmadisonvilleB	lakevilleBlake genevaBkristiansandBhumbleB
hood riverB	hollisterBhemetBgreenevilleBgranbyB	gaza cityB
fall riverB	fair oaksBenschedeBeagle mountainBcelebrationBbonita springsBbarreB
bar harborBarushaBarlesB
amersfoortByucaipaBwyckoffBwest des moinesBweatherfordBwatfordBwake forestBtracyB
st. petersBsimpsonvilleB	shelburneBsanduskyBrocklinB
ridgefieldBpismo beachBpachuca de sotoBnogalesB	morro bayBmontreal westB
montevideoBmoabBmarbellaBlockportB
linlithgowBketchumBjamaica plainBhangzhouBforneyBfarnhamB
farmingtonBdeptfordBcolombiaBchennaiBbroken arrowB	bountifulBbossier cityB	biddefordBberrien springsBbeloitB	argentinaBaarhus centralByumaBwhite river junctionBwhistlerBvassarBtrumbullBtruckeeBtorshavnBsiciliBseviervilleB	san ramonBsan miguel de allendeBrowleyBrockawayBplaya del carmenBo'fallonB	nyköpingBnorth olmstedBludwigsburgBlondon borough of lewishamBle mansB	lake maryBla verneBköpingB	hopatcongBhatfieldBharrisonBhampton coveBfreeholdBerlangenBcerritosB
broomfieldBbrixtonB
bratislavaBbochumBbeniciaBardmoreBalmereBzapopanBwhite bear lakeB	toowoombaB	texarkanaBsummervilleBspencerBsistersBsassariBruidosoBrivertonBpontiacBphuketBpaoniaB
palm beachBpalatineBnancyBmorrisvilleB	middletonBmerrillvilleBmaynardBlondon borough of southwarkBkyleBkortrijkBkaukaunaBjönköpingB	haverhillBhackettstownB
hackensackBguilfordBfront royalBeast molineBdeerfield beachBcommerce charter townshipBcoconut creekB
clarksdaleB
cedar parkBcasperB	caledoniaBbullhead cityBbiarritzBbayernBalmeriaB
alamogordoB	abu dhabiB	wuppertalBwirral metropolitan boroughBwinter havenBvernonBvallettaB
tamaulipasBstowB
springdaleB	spearfishBsalernoBroubaixBriminiBport angelesBpaysonB	patchogueBowings millsB	osnabruckBorilliaB
oak harborB
moorestownB	montreuilBluleåB
linköpingBlilburnBlibertyBla crescentaB	kirkcaldyB
isla vistaBibizaBgundelfingenBgreat barringtonBglen burnieBenidBdudleyBconyersBconnellsvilleBcholulaBblufftonBbig surBbariBajaxByukonBwinnetkaBwindhamB	willistonB	west bendBvoorheesBvaughanBsun prairieBstuartBstockton-on-teesBstockbridgeB	siem reapB
shoreditchB	sheboyganBscherervilleBsamaraBroute 66BroseburgBolive branchBnorthern san diegoBnorth vancouverBnorth sydneyBnassauBnapierBminskBmaple valleyB	lyndhurstBluccaBlihueBlexington parkBleague cityB	la miradaBkinshasaB	kingslandBkasselBholmdelBhighlands ranchBhadleyB	guangzhouBgreencastleBgraftonB	fremantleB
estes parkBensenadaBdiamond barBconey islandBcollingswoodB	clarkstonB
chilliwackB	cartagenaBbuffalo groveBbasingstokeB
adirondackByosemite villageBwest richlandBwaconiaBtuxtla gutiérrezBtrogenBtiffinB
statesboroB
starkvilleBst. clair shoresBseymourBsevillaBsan tan valleyBsan fernandoBryeBputneyBprienBport orchardBpinellas parkBoronoBokanaganBnuneatonBnew rochelleB
new canaanBmonmouthBmetuchenBlynnBluzernBloughboroughBlorainB
little elmB
leominsterB	la grandeBkonstanzBkoblenzBinterlochenBhoumaB
horseheadsBhopkinsBhersheyBhartlandBflushingBeureka springsBendicottBelmhurstB	doncasterB	corneliusBcorbyBcolimaBcocoa beachBclevedonBcentral san diegoBcatskillBcastro valleyBcarmel-by-the-seaBbutteB
bloomsburgBbelgiumBbarstowB
barringtonBwinter gardenB	westbrookB	wellesleyBvisbyB
vero beachB	todmordenBtaylorB
swampscottBsummitBst-jean-sur-richelieuBsicklervilleBshelbyB	sevenoaksB	scarsdaleB
sag harborBrock islandB	plainviewB	placentiaB	oldenburgBocean springsBoaktonB	northportBnorth palm beachBmuskokaBmount shastaBmorgan hillBmontroseBmentorBmelkshamBmatawanBmarshallBmanitou springsBlusakaBlindenhurstBlawrenceburgB
kilmarnockB
iver heathB
ingolstadtBhighland parkB	grandviewBfukuokaB	franconiaBfalunB
eastbourneBdumfriesBda nangBcrown heightsBcollinsvilleBchristiansburgBcastle rockBbutlerBbrevardBbayonneB	batterseaBbataviaBarezzoB	apeldoornBalice springsBwinter springsBwheelingB	west linnB
villa ricaB	timisoaraBsouthseaBsonoraBshelbyvilleBseasideBrotoruaB	rosenheimBringwoodB	rhinebeckBpelhamB
old bridgeB
north portBmünsterBmuscle shoalsBmuchBmediaBmchenryBmaumeeBmartinsvilleBmarshalltownB	los altosBlloydminsterBlibertyvilleBla habraB	ketchikanBkearnyBimlayBhonokaaB	hempsteadBhastings hudsonBguthrieBgriffinB	frostburgBfarmington hillsBdowneyBdicksonB
cumberlandBchisinauBchino hillsBcasselberryB
canonsburgBbexhill-on-seaBbaldwinBarea 51Bantigua guatemalaBalburyBalbaceteBadjuntasBzionBweavervilleBwan tsaiBvareseB
union cityBtulumB
texas cityBtecumsehBtarpon springsBtamworthBtainan cityBsylmarBspartaBspanish forkBsohoB
snellvilleB
smithfieldBsloughBsleepy hollowBsienaB	saxapahawB
rutherfordB
port huronBpekinB	peekskillBozarkBowossoBokinawa-shiBnixaB	neuchatelBmonetaBmeredithB	meadvilleBmayaguezBmantecaB
los alamosBlenoirB
launcestonBlake elsinoreBlaceyB
kerhonksonBhopkinsvilleBhighlandBhasseltBfort st. johnBerfurtBephrataBdanburyBconwyBcelayaBbuxtonBbraunschweigBbarrowB	bangaloreBatholBartesiaBarlington heightsB	annandaleBaltadenaBallianceBwynwoodBwisconsin rapidsBwilsonvilleBvillahermosaBstony brookBstone ridgeBstatesvilleB
sonderborgBsolihullBshermanBsan gabrielBreynosaBportalesBport jervisBponchatoulaBouagadougouBormskirkB	orbetelloBnorth miami beachBnorth little rockBnoblesvilleBmiltonB	millvilleBmcminnvilleB	mcdonoughBlondon borough of croydonBlillehammerB	lichfieldBkendalB
heber cityBharrowBgurneeB
fredericiaBfort pierceB	dunnellonBdubboBdroghedaBdonostia-san sebastiánBdefianceBdamascusBdaltonBculpeperBcremonaBcoos bayBcollingwoodBchambersburgBcardiff-by-the-seaBcanyon lakeBbredaBbamakoBbainbridge islandBassisiBabingdonBzwolleB	zacatecasByucca valleyByellowknifeByellow springsBwest torontoBwest indianapolisBwarehamBwalsallBtepicB	tahlequahBsydney southBsuwaneeBstirlingBsouth titusvilleBsouth brisbaneBsoquelBrock springsB	riverheadBprescotBpoznanBphoenixvilleBpetawawaB	pentictonBpalmaBpaiaB
oconomowocB	nürnbergBnicosiaBnewburyBnavarreBmunsterBmorelosBmerrit islandBmarlboroughBlongwoodBlimogesBleavenworthBlarkspurBkharkivB	kerrvilleB
jim thorpeBiron mountainB	hopkintonB	honesdaleB	hilversumBhidalgoBherrimanBhebden bridgeB	grapevineBglenwood springsB	glen coveBgallatinBgabriolaBfreetownBfergus fallsBemporiaBedmondsBeast grinsteadBdouglasBcorner brookBclaymontBchemnitzB	chantillyBcape mayBcampbell riverB	camdentonBburgosBbolingbrookBblock islandBberwickBbaldwin parkBavonBauburn hillsBanconaByorktownBxeniaB	wolfsburgBwillimanticB
whitesboroBweimarBwarrensburgBvitoriaBtyne and wearB	tullamoreBtripoliBtrevisoB	tottenhamBsussexBstorrsBspotsylvaniaBsouth orangeBsophia antipolisB	smithtownBsilver lakeBsiloam springsBsidneyBseafordBsaltspring islandBreisterstownBpresque isleBport orangeBpoint pleasantBoregon cityBoleanBoakhurstBnorth philadelphiaBnorth auburnBnimesBnilesBnewquayB	new lenoxBmeridenBmcleanB	maysvilleB	manasquanBlutzBlurayBlindonBlavalB
lake orionBla salleB
la coruñaBkemptenBidyllwild-pine coveBhopewellBhilliardBhancockBhamilton squareBglastonburyBgastoniaBeuropaBeuclidBeast durhamBdenaliBde pereBcroydonBcoral gablesBcomptonBbromleyBbernexBbellwoodBbelize cityBbartlettBbambergBaptosBamesburyBaalesundBwilmoreBwilmetteBwien  7Bwheat ridgeBwestlandB	wellfleetB	weehawkenBvineyard havenBupper darbyBtryonBtruth or consequencesBtriesteBtoursBthousand palmsBtalentB
swarthmoreBstephenvilleB	southportBsouth elginBsierra madreB	sammamishBs. cristobal de las casasBrigbyBprince williamBpharrBpacific groveBosceolaB	oak ridgeBnoviBnew windsorB	nevşehirBneussBmorrisBmidvaleB	maryvilleBmariposaBlynbrookB	lumbertonB	lowestoftBleanderBlaurence harborBlake havasu cityBlaconiaBl'aquilaB	killarneyBjuneeBjamaicaBhomewoodB	hillsdaleBhaddonfieldBgrahamBgemeinde tübingenBgarden cityBfultonBfarmingdaleBeast hamptonB	devonportBdecorahBdeath valleyBcebuBbrooksvilleBberkeley heightsBbellows fallsB	barbertonBbaja californiaBazleBabujaBwest springfieldBwest bromwichBuclueletBtunisB
torringtonB	tonbridgeBtlalnepantlaB	tillamookBsiracusaBsimsburyBshow lowBsheridanBsettleB	san dimasBrowland heightsBroselleBromeoB	rendsburgBramseyBpulaskiBprince albertBport coquitlamBpoitiersB
plantationBpeabodyBparowanBnorwoodBnorthernBnorth augustaB	nicevilleBneedhamBmordenBmontego bayBmindenB	mcfarlandB
mason cityBmarltonBmanheimBlynwoodB	luxemburgB	larchmontB	lake cityB	la grangeBkisumuBkaneoheBkanagawaB	holstebroBhoffman estatesB	hermistonB
greensburgB	gravesendBgrand blancB	gladstoneBgarvaghB	flensburgBelkoBel cajonBeast orangeBdeltaBcórdobaBcleburneBcentral islipBcarthageB
burnsvilleBbufordBbrooklyn parkBbornholmBbelmarB	bay shoreB	attleboroBangwinB	anacortesBalpineBacworthBaccokeekBzugByaoundeBwoking boroughB	willowickBwethersfieldBwestmontBwest vancouverBwebsterB	wadsworthBtyroneBtimminsB
sykesvilleB	sundsvallB
summerlandB
sugar hillBstewartstownB	southlakeBsouth brunswickB	solothurnB	shorelineBshippensburgBsharonB
saugertiesBsandy springsBrialtoB
queensburyBpunta arenasBpotomacBold saybrookBnorth las vegasBnewbury parkBnew glasgowBnatickBnarrowsburgB	michoacanB	mazatlánBmapletonBmaple ridgeBlong branchBlehigh acresBlahoreBl'vivB
kirknewtonBjenaBjalapa enríquezB	heilbronnB	harlingenBhalleBgulf shoresBgreat yarmouthBgrangerBgorhamB
falkenbergBelkins parkBcuautitlánBcrown pointB	crestlineBcotswold districtBchickamaugaB	centraliaBcape bretonB	callicoonBcaceresBburnieBbunburyBbroxburnB
brownsburgB
bronxvilleBbothellBbedford-stuyvesantBannandale-on-hudsonByokohamaByangonBwoosterBwillmarB	whitefishBwestervilleB	west l.a.Bwest chicagoBweirtonBwaycrossB
waxahachieBvictorBventnor cityBvenloBvaranasiBtenaflyB	stornowayB
st. helenaBspainBsouth farmingdaleBsolana beachB
shibuya-kuBshakopeeBsenecaBscottsvilleBscotch plainsBsaratogaBrustonBromseyB
river edgeBred hookBrahwayBpurcellvilleB
plainvilleB
piscatawayBpine islandBpascoBpaphosBpaisleyBpagosa springsBpaduaB
orangeburgBopelikaBnorth salt lakeBnorth ridgevilleBnorth chicagoBnarberthB	nantucketBnaestvedBmuskogeeB	mount joyBmililaniBmenomonee fallsBmelroseBmedinaBmechanicsvilleBmacclesfieldBlufkinBludlowB
loganvilleB	llandudnoBlincoln parkB	le marcheBlakes entranceB
lake walesB	ladysmithBla porteBla mesaBkrąkówBknob nosterBkernersvilleBkerkradeBindian trailB
ilfracombeB
hervey bayB	hartselleBharareBhanfordBhalf moon bayBgreerBgrande prairieBgosportB
glenrothesBfukuoka-shiBfredrikstadBfredoniaB	fort millBelkridgeBedgewoodBeasleyBeagarBdowntown miamiBdhakaBdexterBcullmanBcrawleyBcranfordBcopenhagen centralB	coldwaterBcoahuilaBchevy chaseBcamasBcadillacBbryantBbrnoBbrasilBboråsB
big springBbakewellBassenBarmidaleBannistonBaltamonte springsBalpenaBagawamB
zanesvilleB
yogyakartaByardleyBwinslowBwestlake villageBwaverlyBwatsonvilleB
västeråsBvestalB
versaillesB
vermillionB	van burenBurbinoBuniversity placeBtrollhattanBtlaxcalaB	tipperaryBthanet districtBtasmanB	tarragonaB	sunnysideB	stevenageBspruce pineBsouth veniceBsouth bronxB	somerdaleBsolvangBsligoBsafety harborB	riverdaleBrinconB
reutlingenBquetzaltenangoB	pottstownBport alberniBplauenBpigeon forgeBpiedmontBpapeeteBorkneyBnuukBnorth royaltonBnewbergBnew zealandBnanjingBmustangBmountain homeBmount julietBmoorparkBmontvaleBmonterey parkBmechelenB
mcleodganjBmattoonBmadison heightsBlouisaBlortonBleroyB
kittanningBkinnelonBkilsythB
karlskronaBirunBholidayBhiroshima-shiB	hinesburgBheerlenB	hamtramckBguernevilleBgranada hillsBgonzalesB	goldsboroBfentonBescanabaBemmettBeden prairieBecatepec de morelosB	eastleighBdürenBdissBdingmans ferryBdenvilleBdeadwoodBculbokieB	courtenayB
cochabambaB	coachellaBciceroBcascadeBcanoga parkB
caerphillyB
buckhannonBbridgtonB	blakesleeBbendigoBbearB
barnstableBareciboBardsleyBalt-saarbrückenB
östersundBörnsköldsvikBåkersbergaBxiamenB
woonsocketBwest plainsB
west havenB
wapakonetaBwalthamstowBtwain harteBturlockBtribecaBtrentoBtotowaBtiptonBtampereBsulphurB	straubingB	stoughtonB
steilacoomB	southeastBsouth houstonBsouth atlantaBsomers pointB	skaelskorB
shenandoahBsequimBsan ignacioBrowvilleBromanBriponB	richfieldB
revelstokeB
prattvilleBport jeffersonB
plant cityBpinckneyB	pforzheimBparkersburgBpalmyraBpalatkaBpaigntonBpahrumpBorleansBnorth cantonBningboBnew hartfordBnew brightonBmountain groveBmonaghanBmexicaliBmalvernBmagnoliaBlopez islandBlombardBlittle fallsB
litchfieldB
lindenbergBlesinaBlake itascaB	la speziaBla pineBkemahBjohnstonB	jeffersonB	hotchkissBhooverBholdenBholbrookBhitchinBhibbingB	halesowenBhackney wickB
göttingenBguerreroBgoose creekB
glen ellynBgenkBfriday harborBfrederiksbergBfranklin lakesB	fairgroveBemmenBemmausBelk grove villageB	el doradoB
eastpointeB
east hemetB	dumbartonBdesotoBdesert hot springsBdaeguBcotatiBcopalis beachBcolvilleBchorleyBcarpentersvilleB
brookfieldBbrisbane centralBbremerhavenBbolivarBbellaireBbecketB	beachwoodBbarabooB	ashtabulaB
appomattoxB	applegateBamiensB
albert leaBaberdeenshireByeovilBwuhanBworcestershireBwolcottBwhitley bayB
whitehouseBwest seattleB	washougalB	walkertonBwalkerBwaimeaBviroquaBtournaiBtopangaBteramoBtegucigalpaBtavaresBsuisseBsturgisB	steinbachB
st. helensBspring valleyBsouth superiorB	snowflakeBslagelseBsitkaB	silvertonB
seal beachB
roosendaalBromfordBrollaB	riverviewBresearch triangle parkBradfordBprilepBpowder springsB
perrysburgBpassauB
paramariboB	palestineB	paderbornBoakleyBnovaraBnorth richland hillsBnorth kingstownBnauvooBnatchitochesB	montesanoBmonte verdeBmonseyBmillersburgB
middleburgBmercerBmedwayBmatthewsBmaroochydoreBmariborBmaple groveBmanosqueBmackayB	lüneburgB
lindenwoldBlincoln cityBleonBlenoxBleigh-on-seaB
lauderhillBlancingBlakeportB
kingsvilleBkingmanBking of prussiaB
kemptvilleB	keansburgBirapuatoBiquitosB
india gateBhertfordBherningBherefordshireB	helsingorBhawleyB	haugesundBhannibalBhalmstadBhaikuBhacienda heightsBgrinnellBgrayBgoodyearB
goldendaleBglenviewBglendoraBgilgitBgiessenB	gibraltarB
gatlinburgBfountain hillsBfountainBfigueresB	ellsworthBelkBelizabeth cityBelephant and castleBelcheBelbertonBedinboroBeast stroudsburgBdrummondvilleBdaphneB	crestviewBcortonaBcorbettBconnersvilleBcommerceBclioBcleethorpesB
clarksburgBciudad obregónBcertaldoBbyronBbukavuBbrocktonB	bricktownB	brasíliaBbrasovBbourgoin-jallieuBbishop's stortfordBberkeley springsBbergen op zoomBbelo horizonteBbellmoreBbellmeadB
bellefonteBauckland centralBargyll and buteBaldenBalbionBaalenBåreBwylieB	wolfvilleBwitneyB
willoughbyBwillitsBwilliamsB
wilkesboroBwestlakeBwest mysticBwest lake stevensB
west groveBwest branchBwest babylonB
wellsvilleBweertBuruapan del progresoBupper marlboroB
two riversBtwentynine palmsBturtle lakeBtukwilaBtoccoaBtivoliBthornton-cleveleysBthomsonBthessalonikiB	tarrytownBsunriseB	st. amantBsomersworthBsocorroBsavageBsanta fe springsBsaarBrugbyBrouyn-norandaB	roeselareB
ridgecrestB	richlandsBrevereB
queanbeyanBpugliaBprince edwardBport washingtonBport of spainB	pickeringBphilmontBphenix cityB	pendletonBpassaicB
park slopeBparamusB	papillionB	palmwoodsB
oberhausenBnortonBnorthboroughBnorth plainfieldBnodaB
nishio-shiBnewton fallsBnew cumberlandBnagpurBmurphyBmount rainierB
mooloolabaBmontréal-estBmequonBmckinleyvilleB
mandevilleB
manahawkinBmaderaB	léogâneBlleidaBlismoreBleighton buzzardBledyardBlapeerB	lansdowneBlakeviewB	la puenteBklaipedaBking's crossBjüchenBjuárezB	june lakeBjuarezBjeffersonvilleBjaenBisla de pascuaBinwoodBinvercargillBhuntersvilleBhollisB
high fallsB	haymarketB	havertownBharbor springsBgreenwich villageBgradaraBgilroyBgenovaBgemeinde offenburgBgarnerBfribourgB
frenchtownBfort washingtonB	fort utahB
fort payneB
fort davisBfernleyBfernandina beachBfergusonBfairviewBesch-sur-alzetteB	effinghamBedinaBeast haddamBeast chicagoBdunellenBduncanBdumboBdowningtownBdixonBdingleBcoyoacanBcopperas coveB	constantaB	coleraineBcluj-napocaBclarenceBciboloBchristchurch centralB
chautauquaBcharles townBcayceBcave junctionBcalaisBbretagneB	bracknellB	blackwoodB
birkenheadBbicesterB
bellinzonaBbeaver fallsBbayfieldBbaxterBbastropBbarrow-in-furnessBbarnegatBbadalonaBapiaBantananarivoB	angoulemeBaltusBalohaBalmeloBallstonBalloaBairdrieBaalstB90650B10002B
zoetermeerB	winnsboroBwindhoekBwest norwoodB
west hillsB
warr acresBwagga waggaBvesuviusBventimigliaBvashonBvandaliaBvalley streamBupper slaughterBuckfieldBtwo harborsB
twickenhamBtulareBtotnesB	tombstoneBterricciolaBtaylorsvilleBtaupoBtarantoBsödertäljeBswadlincoteBsumnerB
succasunnaBsteubenvilleBst.-mathieu-du-parcBsouthboroughB	soudertonBskövdeB	skowheganBskopjeBselmaBschweizBschaffhausenB
sayrevilleBsanteeB	san pabloB	san brunoBsalton sea beachBsaitama-shiBsacoBrzeszówB	rosenbergBroselle parkB
reidsvilleB	reedsburgBredditchBpymbleBpuneBport jefferson stationB
ponca cityBplattsburghBpinoleBpesaroB
penningtonBpearlBpaoliB	palisadesBpacoimaBotavaloBodentonBoakfieldBnosaraBnorth dallasBnarvikBmountlake terraceBmostarBmoreheadB
minnetonkaBmineral wellsBmeridaBmasticBmassaBmandanBmanassas parkB	macedoniaBlyonsBlusbyB	los banosB
logansportBlithoniaBlindenBlemontB
laurinburgBlas palmas de gran canariaBlake in the hillsBlake hopatcongBkuchingBkingwoodBkingswinfordBkilkennyB	key largoBkamuelaBjinjaBjerseyBjaénB	irvingtonBirelandBhurstBholtBherisauBhennikerB
grove cityB	godalmingBglenomaB	fukushimaBfriedrichshafenBfar rockawayBestate thomasBesbjergBerbilB	ennepetalBenfieldBelkins junctionBelizabethtonBeast wenatcheeBeast torontoBeast providenceBeast longmeadowBeast jerusalemBeast atlantaBduvallBdunfermlineBdetroit lakesBdel monte forestB	cuckfieldBcreweBcoon rapidsBcle elumBclaphamBchinaBcheneyBceredigion countyBcentral fallsB
cedar hillB
carmarthenBcape canaveralBcanyon countryB
canon cityBcadenetBburnabyBburgess hillBbucklandB
brookhavenB
bridgwaterBbranfordBbramptonB	braintreeBbodenB	bloenduosBblantyreB
blackheathB	blackfootBbisbeeB	billericaBbiellaBbethpageBavellinoBarroyo grandeBarnoldBaddisonB66212BétretatByork cornerB	wolfeboroB
winterthurBwinderB	whangareiB
wetaskiwinB
wentzvilleBwebster cityBwaterloovilleB	vicksburgBvernon hillsB	vergennesB	venezuelaBvarbergBturnerBtoulonB
three oaksBthorntonBsulmonaBsteinhausenBstanwoodB
st. gallenBsoutheast atlantaBsouth sacramentoBsouth burlingtonBsouth altoonaBshibuyaBselmerBschöneiche bei berlinBsaffron waldenBsabadellBroseauBromblonBrogue riverBrochdaleBrobbinsdaleBrjukanBrichmond hillBred wingBragusaBradcliffBquimperBprince rupertBprairie du sacB	portadownBpoplar bluffB
pontypriddB	pontypoolB
pontevedraBpolsonB
pine ridgeBparklandBpalos verdes estatesBourenseBossipeeBorangevilleB
okeechobeeBnorth andoverBnorrfjärdenBnewton aycliffeBnew hopeBnablusB	murchisonBmukilteoBmount tremperBmount morrisBmorehead cityBmineolaBmilletB	millertonB
mill creekB
middleportBmid missouriBmendhamBmasonBmariannaBmaldenBlurganBligonierBleonbergBlennoxBlelystadBlathamBlake oswegoBla canada flintridgeBkristianstadBkings langleyBkentwoodBkelsoBkatrineholmBkapoleiBkankakeeBjohns creekBjinanBjerezBjensen beachBjalapaBjacmelB
islamoradaBirmoBhyrumBhuber heightsBhuauchinangoBhoneoye fallsB
hildesheimBherkimerB	heinsbergBharpers ferryB	hampsteadBgómez palacioBgranthamBgranburyBgowanusBfürthBfort stewartB	fort hoodBfogelsvilleBflandersBfire islandBfairbornB
eskilstunaBerlangerBel sobranteB	el centroBedenBechizen-shiB	dungarvanBdumontBdonegalB
dodge cityBdenham springsB
deep riverBculozBcorozalBcoolum beachBconneautB
colwyn bayBcoffs harbourBclontarfBcheshamBchagrin fallsBcentervilleBcamp lejeuneBbusanB	brockportB
bridgetownB
bressanoneB
bordentownBbodrumB
blythewoodB	bluffdaleBbiel bienneB
bettendorfBbelchertownBbeech groveBbassano del grappaBbarnardBbadajozBashfordBaccidentB30606BzephyrhillsByokohama-shiByanktonByadkinvilleB	wyandotteBwrightsville beachBwoolwichBwoburnBwillow groveB
whitstableB
whitesburgBwesterlyBwestburyB
west pointBwest decaturBwellsBweil am rheinBwaupacaB
warminsterB
waiblingenBvan wertBvalricoB	uttoxeterBupper east sideBuintahBuhrichsvilleBtowandaBtomballBtollandBtokoname-shiBtiznitBthursoBthree hillsB
the dallesB
terrebonneB	tehachapiBtecopaBtargu muresB	tallmadgeBsunny isles beachB
summersideBsuffernB	strasburgBstourbridgeB	stirchleyBstewartsvilleBstewartBspirit lakeBsouthbridgeBsouth milwaukeeBsouth melbourneBslingerBskopelosB	silkeborgBsignal mountainBshirleyBshetland islandsBsharjahBsevenoaks districtBsebringBseahamBscituateBscioB	santanderBsan luis potosiBsalvadorBsalon-de-provenceBrumfordBrollinsfordB
rock fallsBriver rougeBresedaBrenfrewshireB
portisheadB	pontederaBpineroloB	pinehurstB	petershamBperth amboyBpembrokeshire countyBparoBowegoBokobojiBogallalaB
northbrookBnorth seattleBnorth providenceBnorth bergenB
norristownBnishinomiyaB	ninilchikBniagara falls southBnew richmondBnew hyde parkBnecheBnayaritBnanningBnairnBmurwillumbahBmullumbimbyBmt katahdinB
mount airyBmontrossBmont-tremblant-villageBmolineBmokenaBmelton mowbrayB	matsuyamaB	marlintonB	manitowocB
maidenheadBmagnaBluverneBlulingBlublinB
los mochisBlokerenBliestalBleylandBleitchfieldB
landskronaBlake stevensBlacombeBkutsukiheraBkobe-shiBknaresboroughBkingsleyBkhersonBkerikeriB	kennebunkBkenaiBkeighleyBjeromeBjerez de la fronteraBjalapa de enriquezBizmirBimolaBibaguéBhudsonvilleBhoornB	homesteadBhollidaysburgBhinghamBherculesB
hazel parkBhauserBhaines cityBgemeinde frankfurt an der oderBgardinerBgaffneyBgaboroneB
fuengirolaBfrozardBfraserBfranklintonBforest parkB	flat rockBfinsbury parkB	fennvilleB
falköpingB	fair lawnBenumclawBengenBelmsfordB
el segundoB	el mirageBeidsvollBeast windsorBeast meadowBdowntn minneapolisBdowagiacBdornbirnBdohaBdearborn heightsBdarienBcroftonBcreve coeurBcos cobB
coromandelBcoramBcommackBcolwichB
colts neckBcolleyvilleB	clackamasBcirclevilleB	churchillBchippewa fallsBchippendaleBchicago heightsBchibaBchestnut hill historic districtBcherokeeB
charlevoixBcelinaB	cabo rojoBbuderimBbrommaBbrixleggBbridlingtonBbowBbourbonnaisBbokeeliaB
bluff cityB
blainvilleBbesanconBbelfryB
beaver damBbarnard castleBbandungBbaileyBaubreyBanthemBamericaBalkmaarBalbaBajoB	adamstownB84098B11207B11201B02133BzutphenB	zhongshanByeppoonBwurzburgB
wrightwoodBwoodsideBwoodburnBwinooskiB	whitehallBwest warwickBwest end annistonB	wellsboroBweedBwaxhawBwatkins glenBwassaicBwapatoBvoironBvilla ridgeB	valdemoroBvadnais heightsBuvaldeBusticaBturners fallsBtumwaterBtrumansburgBtillsonburgB	thomastonBthimphuB	thibodauxBterrassaBtemucoBte pukeB
tahoe cityBsunshineBsumterBstouffvilleBsteyrBstemBst.-jérômeB	st. neotsBst. michaelsBspeyerBspanawayBsouth yarmouthBsouth wirralBsouth tucsonBsouth miamiB
south lyonBsouth kingstownBsolingenBskåneBskokieB
silverlakeBsilver cityBshizuoka-shiBshilohBsedaliaBsapporo-shiBsan'aBsaint-etienneBrugeleyBroyal palm beachBrosarioBripleyBrichboroBrhinelanderBrepublicBrentonBredcarB	red bluffBrandallstownBrancho mirageB	purmerendB
pottsvilleB	port hopeB
port byronBpikes peak parkBpico riveraB	pescaderoB
perryvilleBperryBpapendrechtBpalenciaBottumwaBotrantoBoswestryBosijekBosageBoneidaBoaklynBoakdaleB
nuevo leonBnorth platteBnorth myrtle beachBnorth ayrshireBnorth auroraBnoosa headsBnianticBnewtown squareBnewcastle westBneenahBnarragansettBnantou cityBnamurBmulhouseBmount prospectBmount angelBmoultrieBmorelia centroBmineralBmid bedfordshire districtBmestreBmertertB	merrimackBmedfieldBmasakaBmarinaBmargaret riverBmancosB
mamaroneckB
malmesburyBmalindiBloxleyBlombokBlittlehamptonBlindsayBlinaresBleslieBlatrobeBlandersBlanderBlake placidB
lago vistaBla plataB
kungsbackaB
kodaikanalBkirkwallB
kirksvilleBkill devil hillsBkilaueaBkennerBkeizerB
keerbergenBkeaauBkatoombaBkatonahBkanabBjohor baharuB	jamesburgBissaquahBisantiBironwoodBindianaBhämeenkyröBhyogoBhuronB	horn lakeBholdregeB	hiroshimaBhiramBhinckleyBhialeahBhessleBhessenBhaileyBgunnisonB	grünbachBgreymouth centralBgreenwood villageB
greenacresBgossauBgorno-altayskBglen waverleyB	glen rockBglen carbonBgladbeckBgisborneBgetafeBgelsenkirchenBgalaxBfurthB	frosinoneBfracc distrito federalBfostoriaB
fort meadeBflatbushBfanwoodBfanoBexmouthBewingBermuaBerlenseeBelmwood parkBelmvaleBellijayBelkinsBeast sumterBeast st. louisBeast beckleyBeagleBdurantBdupont circleB	dunstableBdunedin centralBdundasBduboisBdracutBdowntown edmontonBdijonBdequincyBdenmarkB
den helderBde graffBcreteBcreswellB	creedmoorB	coshoctonBcorellaBcorbinB
coralvilleBcoppellBconshohockenBconakryBcobourgBcoatzacoalcosB
coarsegoldBchuluotaBchristianstedB
chernobyl'B	chalmetteB
cave creekBcarsonBcarolina beachBcarnelian bayBcarmel valleyBcarbostBcanandaiguaB	camp hillBcamano cityBcajemeBburlesonBbuffalo centerBbromontB	brighouseBbrigham cityBbrenhamBbregenzBbound brookB	boonvilleBbodminBboazBblue springsBblack earthBbingenBbidartBbergenfieldBbelperB
bedminsterBbeavercreekBbeauvechainBbañosBbaysideB
batesvilleBavignonBauvergneBatlantic beachBashleyBarundelBarbelBapodacaBansoniaB	altenglanB
al zaatariBadenBacqui termeB54495B47630BévryBzanzibarB	zakynthosByateleyBwoolloomoolooBwoodland parkB	woodhavenB	wiscassetBwinfieldBwildwoodB
white lakeB
west texasB
west pascoBwest new yorkB
west allisB
west akronBweldonBweirs beachBwedelBwaynokaBwasaga beachBwallBwaikoloaBwahiawaBväxjöB	vrindavanBvilchesBvalley villageBuxbridgeBunion squareBulluwatuB	turrialbaBtumutBtula de allendeBtrujilloBtroyesBtorres del paineBtonopahBtlajomulco de zúñigaBtielBthunBthief river fallsB
tewkesburyBtellico plainsBteesside county boroughBtarboroBswanageBsultanBsuitlandB	struthersBstrabaneBstoke-on-trent cityBstansted mountfitchetBstadtteil stadtwaldB
st.-tropezBst. louis parkBst. francisBsouthwest denverBsoriaBsookeBskellefteåBskegnessBskanderborgBshort hillsB	shoreviewBshorehamBshaver lakeBshamongBsewellBseverna parkBseminoleB
sede boqerBsarniaBsantiago tulantepec de lugoBsantiago de queretaroBsanta ninfaBsan joaquinBsaguenayB	rushvilleB	rougemontBrotorua centralB
romeovilleBrohrbachBrivasBridgwayBrhylB
reedsvilleBraefordB
queenstownBquecheeB
pátzcuaroBprosserBprahranBpotenzaBport macquarieBport lavacaBport chesterBpopayánBpoolerB
pontarlierBpollock pinesBpolegateBplaya del reyBplattsmouthBpisgah forestB	pinevilleB	pen argylBpecosBpeachtree cornersBpeachamBpaviaBpattonB
pascagoulaB
parsippanyBpalmettoBorovilleBonalaskaBoldsmarBoil cityBocoeeBochtrupB	oberurselBnorthwest philadelphiaB	northwestBnortheast harborBnorth tallahasseeBnorth massapequaBnorth fort myersBnorderstedtBnewfoundlandBnew lebanonBnew baltimoreB	naugatuckBnational cityBmurphysboroBmount kiscoB	mount isaBmoshiBmonzaBmonheganBmoneeBmoberlyBmiraniBmillers tavernBmiller placeBmentoneBmentonBmenaBmataneBmarstalBmarrickvilleBmanayunkBlönnebergaBlouthBloudonvilleBlouangphrabangBlongboat keyBlondon borough of newhamBlondon borough of haringeyBlittle currentBlithgowBliberiaB	lehightonBleghornBle marsB	landgraafBlake zurichB
lake millsBlake balboaBlagrangevilleBkofu-shiBkirunaB	kirkvilleB	kimberleyB
kaunakakaiB	katherineBkamakuraBkallangBjerichoBinterlachenBhärnösandBhälsingborgBhurleyBhopewell junctionB
hope millsBhoonahB	homosassaBhomerBhoi anBhillsideBhighgateBhemel hempsteadBhauulaBharerBhamlin parkBhallockB
hallandaleB	guayaquilB
gouverneurBgmundenBgloversvilleB	glenoldenBglennieBgijónBgijonBgermersheimBgemeinde stralsundBgardnerBgaltB	funkstownB	freindorfBfort mcmurrayBfort campbellBfort atkinsonBforest lakeBforest groveBfoggiaBfloridaBflorencevilleB	fleetwoodBfleetBfalklandBfairplayBeustisBestelíBerrolBepsomBemersonBeloyB	ellenwoodBel renoBel monteBeast san diegoBeast liverpoolBeast harlemBeast dunbartonshireBdunsboroughBdumasBdulwichBdiscovery bayB	dillsburgBdenisonB	delaplaneB	deer parkBdawsonBdarwenBculrossBcullyB	cranleighBcottbusBcoolBcolumbia fallsBcollegevilleBcodyB
clarkrangeBcinnaminsonBchincoteagueB
chernivtsiB
chanhassenBcazalla de la sierraBcataloocheeBcassinoBcarteretBcartagoBcarpinteriaBcarboniaB	capraficoBcap-haïtienBbukit mertajamBbuchananBbrühlB
brookvilleB
branchburgBbraddockBboyle heightsB	boyertownBboxtelBbowmanvilleBboulder cityBborneBbodoB	blue bellBbilbao la viejaB	big sandyBberchtesgadenBbenton harborB	beneventoBbelmopanBbella vistaBbeckleyBbayreuthBbasildonBbandaraya georgetownBbakersvilleBbaie-mahaultBbabylonBbabson parkBbaalbekBavalonB
assendelftBarrasBantrimBangolaB	amstettenBakaroaB	abondanceBabergavennyBaarauB92038B71270B38635B32701Bústí nad labemBzeelandByxnerumByokosuka-shiB	yamanashiBwunstorfBworthingtonBwootton bassettB	woodstownBwixomBwindomBwindberBwilliams bayB
willemstadBwilkesonBwhitmore lakeBwhite sulphur springsBwhite settlementBwhite salmonBwhangaparaoaB	westvilleBwestbyBwest worthingBwest norwalkB
west fargoBwest endBwest atlantaBwellandB	wawarsingBwatkinsvilleBwashoe valleyBwanganuiBwallkillB	waimanaloBvladivostokBviet triBviborgB	verdigrisBverdenBvenetiaBvenetaBvenaria realeBvatersayB
vassalboroBvallecasButuadoBushuaiaB
upton parkBupper freeholdB
udon thaniB	uckendorfBtuxedoBtuscolaBtupper lakeB	troutdaleBtrinidadBtravagliatoBtrapper creekBtoluca de lerdoB	tolentinoBtigardBthredbo villageB	thornwoodBthoreauBtennant creekBtemple cityBtecamacBtarzanaBtarascon-sur-ariègeB	tamarindoBtallardBtaiyuanBsylvaniaBsydney centralBsycamoreB	swannanoaB	summertonBsummersvilleBstonehamBstodvarfjordurBstalybridgeB
st. thomasB
st. simonsB
st. robertBsquamishBspruce groveBspilimbergoBsoutholdB	southburyBsouth wedgeBsouth tacomaBsouth seattleBsouth parkersburgBsouth daytonaBsouth calgaryBsouth amboyBsolonBsoddy-daisyBsiegenBshoreham-by-seaB
sheppertonBshelleyBshelburne fallsBsheet harbourBshaker heightsBseldenB	seagravesBscrevenBsavoieBsauteeBsatellite beachBsanta cruz de la sierraBsanta cruz de la palmaB
sandy mushBsandwichBsandersvilleBsan remoBsan pedro cholulaBsan jacintoB	s. andresBrutherfordtonBrussellBrunning springsB	rovaniemiBround lake beachBrosslandB
rolesvilleBroi etBrohnert parkB	riverbankBrio grande cityBringgoldBrijswijkBriesaB	rice lakeBreusB	remscheidBreith bei seefeldBrehoboth beachB	reedsportBredwoodBredwayBredfordB	red lodgeBrantoulBqinhuangdaoBprospect heightsB
prior lakeB
powderhornBpowayBportstewartB	pordenoneB	poincianaBplovdivB	plouzanéBplayasBplacitasBpingree groveBpine ridge reservationBpienzaB	philomathBperkasieBpenn yanBpalenqueBouluB	orquevauxBoregonBonishiBold pickensBolafsfjordurBokotoksBocean pinesBoak lawnBnyonBnowhereBnorth mankatoBnorth denverBnorth bethesdaBnordhornBnootdorpB	niskayunaB
nieuwegeinBnicholasvilleB	newingtonBnewfaneB
new hudsonBnew forest districtBneoshoBneah bayBnatchezBnarvarteB	moyobambaBmount poconoBmount barkerBmotalaB
moss pointBmorconeBmoragaB
montebelloB	montazeauBmontauk beachBmonessenBmoncks cornerBmombasaBmitchellBminas geraisBmillikenBmillbraeB	milky-wayBmiddlefieldBmeschedeBmerrillBmerriamBmelissaBmcconnelsvilleBmayoBmateraBmarcus hookBmarathonB	mar vistaBmanisteeBmanausB	manalapanBmae hong sonBmacauB
luganvilleBlucedaleBlower woods harbourBlovettsvilleBlomitaBlohneB	lockerbieBlittle silverBlilongweBland o' lakesB	la vergneB
la condesaBkulaBkrumpendorfBkidderminsterBkenoraB	kennedaleB
kenilworthBkendallBkatowiceBkandyBkalmarBjokkmokkBjohorBjeju-siB	jamesportBirontonBioanninaB	inverurieBinezBincline villageB	hüfingenB	hyderabadB	hyde parkBhunnebostrandBhumboldtBhubbardBhoylakeBhorsensBhopeBhoney groveBholualoaBholguínBhinsdaleBhiltonsB	hephzibahBhemmingfordBhellB	helendaleBhefeiBheerhugowaardBhazletonBhazletB
hazlehurstBharvardBhartley wintneyBhailshamBgulf breezeBguaymasBgstaadB	greendaleBgreen valley lakeBgreater echo park elysianBgreat meadowsBgreat malvernB
grassfieldBgranite bayBgoslarB	gorinchemBgonohe-machiBgold countryB
glen ridgeBgirardBgenarpBgemeinde würzburgBgemeinde regensburgBgemeinde hochstadt am mainBgarrisonBgallupBgalenaB
fronhausenBfritzlarBfrickenhausenBfresh meadowsBfredericktownBfort-de-franceB	fort polkBfort leonard woodB
fort dodgeBforliBforest hillB	footscrayBfloydBflorida centerBflaglerBfillmoreB	filipstadBfernieBfeastervilleBfarnboroughBfarehamBfalsetB	fairhavenBfaenzaBestesBespanolaB
esmeraldasBelyriaB	ellesmereBeksjöBeilean siarB	eganvilleBedwardsBeasthamBeast toowoombaBeast londonBearthBdéniaBdowntownBdona franciscaB	dix hillsBdieppeBdeventerBdelavanBdel rioBdavisonBdanbyBdagenhamBdaejonB	dade cityBczęstochowaBcutlerBcussetaBcudahyBcrownsvilleBcrestview hillsBcouncil groveBcottage groveBcoogeeBconverseBcolmarBcluteB
clearfieldB	clayoquotBcivita castellanaBchimacumB
chiang raiBcheverlyBchesterlandBchesapeake beachB	chesaningBchepstowBchehalisBchardonBchaniaB	champlainBchalk riverBcentro historicoBcentral pointBcenter harborB	cedaredgeB	cazenoviaB	catanzaroBcastellammare del golfoBcartersvilleBcarpiBcarol streamBcarmiBcapon bridgeBcaplanBcanningBcanmoreB	caloundraBcalienteBcaleraBbushkillBburnley boroughBbuckleyBbryneB	bryn mawrBbryce canyonB	brimfieldBbrazzavilleBbrazilBbratislava iBbourg-en-bresseBbonhamBbondi beachB	boblingenB	bluefieldB
blairstownBbiotBbełżecBbeziersBbeverleyBbethaltoB
beltsvilleBbeloeilB	bellbrookB
beamsvilleBbayvilleBbayamónBbattleB
barnstapleBbamako kouraBbaghdadBbabbittBayerB	avon parkBasiaBarkvilleBarctic villageBaranjuezB	apalachinBaostaB
antigonishBantibesBannapolis royalBangletonB
amstelveenBaltonB	allendaleBalcantarilhaB	ahmedabadB78745B48325B18104B08360B03820B
øksendrupBépinalBzacharyB	youngtownByasuniB
wädenswilBwolfenbüttelBwinstonBwimbledon parkBwillowBwillcoxBwiener neustadtB
wickenburgB
whitewaterBwestonBwest phoenixBwest newburyB
west islipBwest bloomfieldBwemBwelwyn garden cityBweil der stadtB
waynesburgB
watervlietBwashington court houseBwashburnBwasecaBwarrnamboolB
walvis bayB	walldürnBwaipahuBwaiakeaBwaalwijkBvineyardB	villanovaBvilla gustavo a. maderoBvichyBvichtenBvarnaB
vallecitosBvalašské meziříčíBvalatieBvajontBusterBurubambaB	urbandaleBuniversity of mnBuniversity cityBunited southwestB	uniontownBuji-shiBtyndallBtualatinB
trussvilleBtroutmanBtraunBtraleeBtopshamBtonkawaBtimaruBtietonB
terryvilleBteninoBtenbyBtehranBtauranga centralB	tambopataB	talladegaB	talkeetnaBtakasaki-shiBtakarazuka-shiBsw portlandBsuvaBsurrey heathBsturgeon bayBstreetsboroBstoweB
storm lakeB
stoningtonBstevenage boroughBstellenboschB	steinkjerBstary krakówB	starnbergBstaplehurstBstanleyBst. pete beachBst. johnsburyB
st. ignaceB	st. clairB
springwoodBspring lakeBsparkillBsouth windhamBsouth plainfieldBsouth padre islandBsouth charlestonBsouth berwickBsoldotnaBsointulaB
smithvilleBskiatookBsittweBsitgesB	shorewoodBshiojiri-shiBsheboygan fallsBshardlowB
shady sideBsevernBseto-shiBseneca fallsBselinsgroveB
schopfheimBschiedamB	scandicciBscadicciBsawtellBsavonaB	saugatuckB	sassinoroB	santarémB
santa ynezBsanta rosa beachBsanta martaB	sandstoneBsan pedro tultepecBsan pedro garza garciaBsan miguel de cozumelBsan juan del ríoBsan juan de alicanteB	salekhardBsado-shiBsaddle brookBsaaremaaBrothburyBrocky pointB	rockledgeBroatánBriviera beachB	rishikeshB
ringkobingBrigginsBridgeleyBrichwoodBrichland hillsBredhillBrayleighBravenscourt parkBratoathBrandleB
ramsbottomBramonaB
rainsvilleBrabatBquestaBquanticoBqualicum beachB	pyongyangBprospectBpristinaBportslade-by-seaBpompton plainsBpokharaBploverBpleasantvilleBplattevilleBplatoBplaisirBpittstonBpitmanBpipestemBpiove di saccoB
pikesvilleBpictonB
petersburgBpendle boroughBpembroke townshipBpearl riverBparoikiaBparadiseBpanaceaBpahokeeBpaddock woodB
ozone parkB
oyster bayBowatonnaBowassoBortenBoregon houseB
orangevaleBolneyBolivaBoldhamBold hickoryB	old forgeBokemosBocontoB	ocho riosBoakbankB	oak creekB	oak cliffBnuevo mexicaliB	northcoteBnorth wheelingBnorth torontoBnorth seekonkBnorth plainsBnorth lauderdaleBnorth greenwichBnorth chattanoogaBnorth battlefordBnizhniy novgorodBnewvilleBnew ulmBnew cityBnetcongBnepiBnephiBneiafuBnaucalpan de juárezBnarbonneBmuskegon heightsBmount freedomBmotuekaBmortons gapBmorganvilleB	morgantonB	morecambeBmooloolah valleyBmontbéliardBmonroevilleBmonmouth junctionBmondoviBmolallaB	millfieldBmillburnBmidwest cityB
middelburgB
miamisburgBmessinaBmeruBmercer islandBmeranBmechanicvilleB	mazomanieBmarneuliBmarlowB
marbleheadBmaple heightsBmantenoB	manizalesB	mancelonaBmanakaraBmalenyBmaitlandBmae sotB	macclennyB
långasjöB
lyme regisBluthervilleBlower burrellBlive oakBlisleBlinières-boutonBlimónBlimerick centerBleydenBlewis centerB
les calaisBleonardtownBlensBlemoore stationBlefkadaBleatherheadB	leadvilleBlaurensBlakesideB
lake tappsB
lake groveB	lagunitasBlagos de morenoB	la quintaBl'assomptionB	kỳ sơnBkurri kurriBkoksijdeBkochiaBknowltonBkirkwoodB	kingsburyBkimballBkillaloeBkildareBkellsB
kecskemétBkayseriB
kaufbeurenBkatikatiBkalamataBjáveaBjunction cityBjonesboroughBjammuBizolaBisle of lewisBhückelhovenB	hässelbyB
hägerstenBhyèresBhurlburt fieldBhuarazB
holtsvilleBholly springsBhistoric fort collinsBhistoric anacostiaB
hicksvilleBhernandoBhenley on thamesBhelsingeBhazardBhaydenvilleBhaydenB
hay-on-wyeBhawkingeBhatterasBhardinB	hannöverB
hanna cityBhanaleiBhahiraBgävleBgwyneddBguilford centerBgrossetoBgrimesBgreen riverBgreenBgraysonBgrawnBgranite cityB
grandvilleBgrand islandBgrand coteauBgolden valleyBgilmerBgilchingBgeorginaBgemertBgemeinde kaiserseschBgeldermalsenBgdanskBgardnervilleBgallowayB
fruit coveBfrederikssundB
frauenfeldBfrancavilla in sinniBfowlervilleB
fort rileyBforsythBforfarBforbesBflorissant old townBflodaBfigino serenzaBfarragutB
fair havenBetnaBeppingBelkhornB	eislingenBeastern passageBeast peoriaBeast melbourneBeast greenbushB	eagle bayBeaganBdwightBdupontBdunedin northBdunbarBdouglassBdos hermanasB
donningtonB
dodgevilleBdobbs ferryB	depoe bayBdemingBdelemontB	deerfieldBdahokBdachauBcuernavaca centroBcrystal cityBcrespièresBcraneBcowetaB
coupevilleBcountry club hillsBcorte maderaBcorona del marBcorollaBcornwall on hudsonBcondonBcolusaBcolliervilleBcolfaxBcolemanBcohoesBclosterBclemmonsBclausthal-zellerfeldBcity of edinburghBchâteauguayBchimayoB	chiba-shiBchewelahBcherry valleyBchecotahBchart suttonBcharlotte hallBchanasBcesenaBcathedral cityBcascoBcascade locksBcarneys pointBcardiganBcanajoharieBcaminoBcaliBcalhounBcairns northBcaddo millsBbussumBburtonB	bundabergBbulawayoB	buceríasBbridgendBbrewsterBbrestBbreckenridgeB	brasstownB	braseltonBbowen islandBbourg-lès-valenceBboothbayBbondiBboiling springsBbogalusaB	boalsburgBblackhall millB	birdsboroB	beverwijkBbernardsvilleBbellmawrBbelle plaineBbedford hillsBbartlesvilleBbargersvilleBbaragaBballston spaBbacchus marshBbaBavondaleB
austintownBaustellB
assiniboiaBaspuddenBarmeniaBanaholaBanaheim hillsB	anacostiaB
amityvilleBambérieu-en-bugeyBalteaBallistonBalamoB	aghadoweyBadrianBadamsBabidjanB	abbevilleB97471B78708B75074B50014B50010B45400B44113B30720B19136B15601B08077B'ayn al-'arabBåtvidabergBzinderByosemite westByermoByanbianBwoodford halseB	wokinghamBwisbechB
wirksworthBwinthropB	wintersetB	wimbledonBwilliamstonBwien  5BwicklowBwhyallaBwhartonB	weybridgeBwestcliff-on-seaBwest yellowstoneBwest wendoverBwest senecaBwest nashvilleBwest milfordBwest deptfordBwest baltimoreBwendoverBweenerBwaylandB
watervilleBwashington heightsBwalton-on-thamesBwaikikiBwabashBvoorburgBvolcanoBvirginia cityB	vinnytsyaB	vincennesB
villa parkB
veenendaalB	vancleaveBupper squamishBuniversity districtBtwispB	tunbridgeB	tullahomaBtroodosBtrevoseBtreorchyBtravelers restBtorremolinosB	tolpuddleB	tobyhannaBtinley parkBtimoniumB
timberlakeBtianjinBthoroldBtheatre districtBtequilaBtemple hillsBtelkwaBtega cayBtaxcoBtarnówB	swansboroB	sutherlinBsullivanB	stranraerB
stowmarketBstoupaBst.-hyacintheBst.-antoine-de-breuilhBst. augustaB	st hubertB
springboroBspicerBspaldingBsouth riverBsouth el monteBsouth bluefieldBsorøBsorrentoBsogamosoBsnowmass villageBskienBskagaströndBsionB
silver bayBsibiuB	sherborneB	senatobiaBsecaucusB	sebastianB
sarrebruckBsardinaBsaranac lakeBsanibelB
sanborntonB
san ysidroB
san marinoBsan felipe de puerto plataBsambrevilleB
salobreñaB
salmon armBsalmoBsalidaBsaint jamesBruther glenBrusselsheimBrudrapurBrowlettBrotkreuzBroslinB	rosemountBrosebud westBrogers parkBrobbinsvilleB
rising sunBrifleBrheurdtBreptonB
rensselaerBrehobothBraynes parkBraymondBradevormwaldBquallaBputnamBpuchong new villageBprosperBpretoriaBprairie leaBprague 9Bport-vendresBporiBpontotocBponce de leonBplaistowBpierreBpickeringtonBphilippiB
perry hallB	perigueuxBpenzanceB	penobscotBparrottBpaimpontBpadulBpaducah mallBpachuca de soto centroBpaceB
owen soundBoverijseBotsu-shiBoscodaB
orwigsburgBorvietoBorland parkBorenseBone tree pointBoliverBold town victorvilleBold town lompocBold san juanB
old mysticBold montrealBokazaki-shiBogunquitBodense centralB
occidentalBobanBo'brienBny-ålesundBnorwayB	northsideBnortheast colorado springsBnorth wealdBnorth stoningtonBnorth libertyBnorth ironwoodBnorth fond du lacBnorth cowichanBnorth brunswickBnorth berwickBnewcastle upon tyne cityBnewcastle under lymeBnewberryBnew waverlyB	new egyptBnesoddenBnakhon ratchasimaB	müllheimBmönchengladbach-rheindahlenB
männedorfBmurrells inletBmulberryB	mukwonagoBmountain home villageBmount baldyBmoseleyBmorrisonB
morrisaniaB
morningtonB
monticelloB
montevalloB
montecortoBmontagueBmonclovaBmidpinesBmiddle islandBmichianaBmeudonBmetamoraB	menomineeBmccookBmbaleBmattesonB	matagalpaBmartins ferryB
marshfieldBmandalayBmalešovBmackinawBmackay centralB
machupichoBlythamBlyndonvilleBlyndenBlybsterB	lunenburgBluandaB
lovingstonB
loves parkBloudonBlos mochis centroB	los lunasBlorientB	longridgeBlondon borough of tower hamletsBlogronoBlodwarBlisburnBlincolnvilleBlimonBlienzBlemooreBlatoniaBlatinaBlandshutBlandauBla roca del vallèsB
kwai chungB
kunkletownBkrasnoyarskBkranjBkrabiBkoldingBko samuiB	kitzbuhelBkintailBkenyonBkennedy meadowBkelseyvilleBkarachiBjódarBjosephBjohn o'groatsBjersey shoreBjayuyaBjamulBjackson heightsBizhevskBisle of dogsBirwinBinnerleithenBindustryBimperial beachBiloilo cityB
härkingenBhuttoBhuguenotBhughesvilleB
hughestownBhudson fallsBhortenB	hookstownB	hoofddorpBhonaunauB
homervilleBholiday parkB	hockessinBherzogenburgBhendrik-ido-ambachtBhaukijärviB
hartsvilleBharshawBharker heightsB
harderwijkBhamontBhallettsvilleBhaldenBhackney centralBgunnison centerB
gränsforsB	grovetownBgrosse pointe woodsB
grindletonB
greystonesB	greymouthBgrenzach-wyhlenB
greifswaldBgreenwood lakeBgreater upper marlboroBgreat millsB
grass lakeBgrand maraisB	gold hillBglensideB
glen arborBgjovikBghardaiaBgermanyB	geraldtonBgemeinde vechtaBgeleenBgeelong westBgarrettBgarnet valleyBgarfieldBgalatinaBfukushima-shiB	fukui-shiBfryeburgBfreisingBfortunaBfort fairfieldBfontenay-sous-boisB
flemingtonBfestusB	fermanaghBfergusBfenwick islandB
fenstantonBfairportBfairless hillsBfairleeBexcelsior springsBeskdalemuirBepping forest districtBenglewood cliffsBendwellBelversonBelk hornB
eldersburgBel vendrellBel campoB	eastsoundBeast setauketBeast norritonBeast meredithB	east lymeBeast lumbertonBeast hanoverBeast greenwichBeast el pasoB
east butteB
east burkeB	dungannonB
driebergenBdragorB	dordrechtB	doravilleBdharaviBdesertBdelsboB	delacroixB
deggendorfBdebenhamB
darlingtonBcut offBculiacan rosalesB
crowthorneBcrested butteBcradley heathBcowesBcortlandB	corsicanaB	cornvilleB	coquitlamBcommercyBcolonial heightsBcolonia făgărașBcollege placeBclos-fontaineBclintonvilleBcleonaB	clearlakeB
clear lakeB
chittagongB
chippenhamB	chinautlaBchietiB
chicoutimiBchiassoBchestertownBcheonbuk-myeonBcharlestownB
chandigarhBcavanB	catahoulaBcassano d'addaB	carnationBcarlowBcaptain cookB
cape coastB
canicattìBcanaanBcampbellvilleBcampbelltownBcampbellsvilleBcallawayBcabarita beachBbüdelsdorfBbyhaliaBbueaBbrunswick northB
brownvilleBbrooklinBbronxville heightsBbroadstairsBbrecksvilleBbrandenburgBbramanBbrailaBboxboroBbowralBboneBboerneBblue sulphurBbloomingdaleBbishkekB
big timberBbig skyBbethany beachBbestBbelle vernonBbelfairB
barlassinaB
banner elkBbamendaBbaldwinsvilleBbakuB	bad tölzBaylmerBaveryBavaruaB
auburndaleBashmoreBarroyo secoBarmaBarkansas cityB	arita-choBardwickBantiguaBantigoBancoatsBanchor pointBamityBamerican canyonBameniaB	amagerbroB
altrinchamBalmatyBallardtB	albemarleBagrinioBagadezB94965B93257B92024B84401B75460B50021B45069B35801B30005B25401B12871BälmhultB
zuccarelloBzolfo springsBzettenBzellBzamora de hidalgoBzamoraBytracBymuidenByakutskBwoy woyB
woudenbergBwormsBwooreBwonder lakeBwishawBwillisBwillingboroBwillichBwilliamsvilleBwildwood crestBwhitmoreB
whitefieldB	whakaparaBwesthampton beachBwest oaklandBwest latrobeBwest ipswichBwest helenaBwest battle groundBweslacoBwernersvilleBweiserBweidmanBwarfordsburgB	warendorfBwaranaBwantaghBwanakaB	walmsgateBwalkersvilleBwaldwickB
waldenburgBvöcklabruckBvuisseBvredenBvranyaBvitznauBvitoria-gasteizB
vinalhavenBvina del marBvilleurbanneB	vildbjergBvictoriavilleBvibo valentiaBvenneslaBvelika kladuµaBvauxhallBvalley cityBurichBupper saddle riverBuniversity parkB
uncasvilleBunadillaBukrainaB
tuscarawasBtunnel hillBtulancingo de bravoBtroonBtres cantosBtrentinoBtrafalgar squareBtoritBtorfaen county boroughBtorch riverBtooeleBtoddBtoboBtividaleBtitusB	tipp cityBtignesB
the plainsBterrigalBterniBtensedBtennilleBtaorminaBtabernasBtabascoB
swan riverB	svendborgBsurry hillsBstordBstiglerBstiaBste.-marie-madeleineBste. genevieveBstara zagoraBsta. catarina ixtahuacanBst.-patrice-de-beaurivageBst.-niklaasBst.-ambroise-de-kildareB
st. mariesBst. leonardsBst. johnBst. denis-westremBspringmountBspoletoBsoutheast philadelphiaBsouth tampaBsouth shieldsBsouth nashvilleBsouth goldsboroBsouth glens fallsB
south gateBsouth coatesvilleBsouth chicagoBsouth attleboroBsolomonsBsololáBskiptonBskeppsholmenBskarnesBsjællands oddeBsimcoeB
siler cityBsidcupBshimoniBsherwood parkBshawanoB
shavertownBsharpsvilleB
sharnbrookBshaferBseabrookBscugogBschwalmstadtBschuylkill havenBschriesheimBschofield barracksBschertzBsawyerB
sarrebourgBsanta elenaB
sandy hookBsan sebastiánBsamish islandBsamburuBsaludaBsaltburn-by-the-seaBsaffordB	sackvilleBroyB	round topB
round lakeBroseto degli abruzziBroseberyB	roscommonBrosamondBrosalieBromilly-sur-seineBrockhamptonB	rock hallBroanoke rapidsBrizalBrivière-du-loupB
rijsbergenB	ridgelandBridgefield parkBriddlevilleBrhomeBrhododendronB
repentignyBrennemoulinBrenesseBreinfeldB
regensbergB	redcliffeBred oakBraumaBratisbonB	randlemanBrainbowB	radcliffeBquebradillasB
puntarenasBpukkilaBpratoBprairie villageBpowers lakeBpovertyBportola valleyBportneufBport sanilacB	porspoderBpornicBpontoiseB	polk cityBpolicoroBpolandBpoissyBpisecoBpinedaleB
pine riverBpilsenBpierre partBpiermontBpeytonBperuBperrisBperhamBpepinBpensacola beachBpeapack and gladstoneB
paya lebarBpawneeBpawletB	paulsboroBpatos de minasBpaterosB	parkvilleBparkgateBparkers prairieB	palmanovaB	palm cityBoussouyeBosann-monzelBorrvilleBorient pointBorcuttBonehungaBommenBolowaluBolomoucBoldsBolallaB
okehamptonBodderBocotilloBobregonBobbichtB	oak brookB
nussbaumenBnuoroB
nuku'alofaBnuevo laredoBnueva andalucíaBnowraBnovi sadB	notasulgaBnorthallertonBnorth zanesvilleBnorth topekaBnorth prosserB
north poleBnorth omahaBnorth miamiBnorth hamptonBnorth haledonBnorth conwayBnorth centralB
north bendBnong bua lamphuBnipomoB
nieuwkuijkBnezahualcoyotlBnewcastle emlynBnewaygoBnewallaBnew providenceB
new miltonBnerjaB
nellysfordBnebraska cityBnavapolatskBnavanBnatersBnalinnesBmâconBmunchengladbachB	mullingarBmount hermonBmount elizaBmount beautyBmounds viewBmoultonboroughBmoultonB
moses lakeBmortonB	morriltonBmorissetBmorichesBmoriartyBmorayBmooreBmoon valleyBmonumentBmontemorelosBmonte-carloBmonte sant'angeloB	montaubanB	montabaurBmonsonBmonopoliB
mocksvilleB	miramichiB	mint hillBmingo junctionBmifflinburgBmiagaoB
metropolisBmelbyB	mehlvilleBmeadowlandsBmcraeB
mckeesportBmaurBmauldinBmattapoisettB	matamorosBmastic beachBmasterton centralB
maryleboneBmarseille-8e arrondissementBmarnay-sur-seineB	maquoketaBmanteoBmanning parkBmanchester-by-the-seaBmalahideB
macksvilleBmacchupicchoBmaarianhaminaB	lövestadBlyngbyBlydneyBlyckebyBlyckeB
lukachukaiBloyaltonBlotusB	los cabosBlos alamitosBlongianoBlondon borough of barnetB
llwyncelynBlittle ferryBlititzBlichtenvoordeBliberty hillB	lewisportBlethbridge countyBleonardBlennox headB	lembonganBleithBleerdamBleekB	leechburgBleccoBleadville junctionBle puyBle breil-de-foinBle bois-plage-en-réB	lavéruneBlaurentidesBlathropBlanesboroughB	landsbergBlandoverBlanarkBlampungBlamasBlalleyB
lake ridgeBladsonB
la prairieB	la pointeBla cieneguitaBl'isleBl'abbayeBkutná horaBkusatsuBkumamoto-shiB
kriebsteinBkrefeldBkrasneBkowloonBkoutojärviBkochiBkobukB
ko phanganBknotts islandB
kitty hawkBkirtlandBkintampoB	kimbertonBkilaBkiamaBkesterciemsBkepnockBkents storeBkennett squareBkenmareBkendallvilleBkempseyBkawasaki-shiBkawana watersBkaunasB	kahakuloaBjustinBjunglinsterBjoureBjohn dayBjesupBiwakuni-shiBitzehoeBiokaB	indianolaBindian landBigualadaBiesiB
idaho cityBicelandB
häselgehrBhyannisBhuxleyBhuixquilucanBhuelvaB
hudson bayBhriseyBhonleyBhondoBhofBhintonB
hinesvilleBhilmarBhidden valley lakeBhensleyBheeswijk-dintherBheart of missoulaB
hawaii kaiBhavelockBhaskellBhasbrouck heightsB	hartsburgBharrogate boroughBharlowBhardwickBharbour viewBhanover parkB
hancevilleBhanauBhampton baysBhamburg-nordB	halsterenBhagenBhadbjergB	guysvilleB	guterslohBguizhouBguardoBgrumolo delle abbadesseB	grovelandBgrey highlandsB	greenlandB	greenhillB
greenbrierBgreat lakesBgravetteB	granvilleB	gotland 4BglobeBglendale heightsB
gibsonburgBgetxoBgescherBgemeinde monheim am rheinBgemeinde idar-obersteinB"gemeinde gundelfingen an der donauBgelaBgearhartBgavereBgarmisch-partenkirchenBgardnersB
gallipolisBgaletonBgadsdenBfriendswoodBfredersdorf-vogelsdorfBfortroseBfort myers beachBfort eustis miltary reservationBforked riverBforest hillsBfloraBfishers islandBferrumBferrisB	felinfachBfederalsburgB
fair groveBeuxtonBeudoraBessex junctionBespartoBerkrathBerathBepsom and ewell boroughBenglish country manorBencinoBelburnBedgardB	echo parkBecclesBebermannstadtB	eatontownBeastlakeBeastern shoresBeast williamsburgBeast wheelingBeast topekaBeast sioux fallsBeast rutherfordB
east omahaBeast mansfieldBeast elmhurstBeast chathamBeast cambridgeBeast baltimoreBeast armidaleBeast amwellBeagle pointBdushanbeBduquesneBdunshaughlinBdunoonBduncanvilleBdowntown willoughbyBdowntown faribaultBdoualaBdobbinBdjibouti cityBdillonBdillardBdigbethBdierenBdidcotBdeurleBdenman islandBdedhamBdeath valley junctionBdawsonvilleBdarbyBdangrigaBdalstonBcuxhavenBcruz bayBcrestonBcreemoreB
coulee damBcortezBcontantBcongersB	conchalíBcominesBcoltonBcolorado placeBcockeysvilleBcochraneBcoalportBclogh millsBclifton forgeBclayton brookBclairtonBciutadella de menorcaB	churchtonBchemalBchebeague islandBcharleville-mézièresB	chappaquaB	channahonBchamblyBchalcoBchacalaBcevinsB	celbridgeBceglie messapicaBcedar bluffBcatujiB	castlegarBcastleblayneyB	cassvilleB
cassopolisB	cassibileBcasale monferratoBcasa grandeBcarmichaelsBcandorB
camp verdeB
camberwellB
calipatriaBcajicáB
cabin johnBcabbagetownBcabareteBbushnellBburleyBburleigh headsBburgawBbundaberg northBbundaberg centralBbulachB	buckeburgBbrunswick lowerBbrowns valleyBbrowningB
brigantineB
bridgeviewBbriarcliff manorBbradley beachBbracebridgeBbozsokBboydenBboyceBboontonBboones millB	bonavistaBbollingstedtBboissy-le-châtelBblythevilleBblue mountainBbirnamB
big rapidsBbig lakeBbidefordB
bethersdenB	berruilesBbergeracB	beresfordBbenjaminBbengaziB	belvedereBbelenBbattersea parkBbatleyB
batdambangBbarkers valeBbardejovBbangalowB	ballintoyB	ballingerBbaldivisBbad oeynhausenB	aylesfordBaugust townBashvilleBash flatBarmaghB
argenteuilBangeredBandrewsB	andalusiaBamegliaBalvaBaltenkunstadtBalphabet cityBalmontBalgomaBalessandriaB
alcobendasBalburtisB
alajuelitaBadams morganBacambayBabseconBabiquiuBabingtonBabertilleryB96814B94590B94520B92663B92532B91732B83209B80906B78015B76140B76028B62650B55112B45219B44120B40208B38129B34491B34432B31503B28546B28152B23454B22192B20813B11724B11224B10025B07311B06511BzofingenBzirconiaBzelkingBzabrzeByverdon-les-bainsByuriria centroByuccaB	yorkvilleByoqneam illitByerresB	yellvilleByellowstoneByantaiBxiningB
wytschaeteB
wythevilleBwynwood art districtBwynneBwuyuan townB	wrenshallBwrangellB	worpswedeB
woolacombeBwoodwardB
woods holeBwoodruffB
withernseaB
winnemuccaBwinklerBwindow rockB
wilwisheimBwilmerBwillow woodBwillow springsBwillow riverBwillow creekBwijk bij duurstedeBwieslochBwien 22Bwien 11Bwicker parkB
whitsundayBwhitney portalBwhitnashBwhitmireB	whanganuiBwetherbyBwestparkB
westcliffeBwest warehamBwest villageBwest tawakoniBwest of twin peaksB
west nyackBwest lynchburgBwest lake walesBwest islandBwest forks plantationBwest coolupBwest columbiaBwest colorado springsBwest chezzetcookBwernhoutB
wemeldingeBweltBwellingboroughBweiterstadtBwaupunBwaukeganBwatsonBwaterford worksBwater valley landingB
water millBwat arunBwarriors markBwangdu phodrangBwalthamstow centralBwalpoleBwaiukuBwaileaBwaihi beachBwahiawā homesteadsBwagenerBwadhurstB	värmlandBvirtonBvirginiaBvillingen-schwenningenBvilligenBvillers-sous-st.-leuBville platteBvillasBvilla de alvarezBvilla coronaBvignolaBvieux-quebecBvieraBvictoria fallsBvevayBverviersBvernoniaBvernierBvenusBvejbystrandB
vegrevilleB
vecindarioBvechtaBveazieBvatican cityBvarelBvan learB
valkenburgBvalenceBvaitapeBvaihingen an der enzB
unionvilleBunion beachBunicoiB	underwoodB
umm durmanBumatillaBukiB	twinsburgBtweed headsBtuross headB
tumacacoriBtultitlan de mariano escobedoBtuggerahBtudelaBtubizeBtschamutB	troisdorfBtrimbleBtriangleBtres piedrasBtrenzanoB
trelleborgBtransferBtotanaBtortoreto lidoB	tortoretoBtopsailBtonasketBtomskBtomahBtoluca lakeBtohokuBtivertonBtipperary ruralBtin can bayBtimaru centralBtiburonBtibroBthurmontBthree bridgesBthouarsB	thorndaleB
thomastownBtholenB
thionvilleBthetfordB
the colonyB
thamesmeadBthames dittonBtermini imereseB	tell cityBtazewellBtaxco de alarcónBtawasBtatumBtashkentBtarrantB	tarancónBtappahannockBtalbottBtaitung cityB
tagbilaranBsønderholmBsyrosBsylvan beachB	sylacaugaB
sweet homeB
swedesboroBswanzeyBsurkhetBsurfsideB	surf cityBsurbitonBsurat thaniBsupplyBsupaiBsunset parkBsunny islesBsuncookBsun cityBsumurB
summertownBsulzburgBsugar groveB	sublimityBsturgeon lakeB
strömstadBstrongsvilleBstreatorB
strathavenBstorvikBstoke newingtonBsteenbergenBste.-rose-de-watfordB	staßfurtBstatesboroughBstanhopeBstadt frankfurtBstacyBst.-paul-trois-châteauxBst.-just-en-chausséeBst.-ferréol-les-neigesBst.-dié-des-vosgesBst.-andré-d'olérarguesBst. vithB	st. marysBst. maartenBst. leoBst. johnsvilleBst. augustinBst. anneBst. andrä-wördernBst luciaBst kildaBspurBspringwaterBspring groveBspring greenB	splendoraBspiroBspenardBspearfish canyonBsouthwest philadelphiaBsouthwest detroitB	southgateBsouthbourneBsouth wheelingBsouth surreyBsouth sumterBsouth saskatoonBsouth pottstownBsouth los angelesBsouth jamaicaBsouth inglewoodB
south guamBsouth grimsbyBsouth dunedinBsouth bellmoreBsouth amboy junctionBsourisBsorelBsoltauBsneekBsmelt brookBslovenj gradecBsleightsBskagwayBsineuBsindhupalchokBsigtunaB
siegenburgBsibacaBsherwood shoresB
shell knobB	sheernessBsheepshead bayB
shawiniganBshawBshandonBshakespeareBshaftesburyBshafterBsewardBseven pointsBsestri ponenteBsensB
senigalliaBsenahúBseligmanB
selbyvilleBsegmonBsedgwickBsebago lakeBseagroveB
seagovilleBse portlandBschlangenbadBschioBschiltigheimBscheveningenBsayvilleBsayulitaBsaxtons riverBsatipoB	sarpsborgBsaronnoBsaratovBsanturceBsantiago de cubaBsantiago atitlánBsanta venerinaBsanta paulaBsanta maria tlahuitoltepecB
sandefjordBsan vito dei normanniBsan sebastián de los reyesBsan pedro sulaBsan mauro pascoliBsan marcos la lagunaBsan lorenzoBsan cristóbal de la lagunaBsaltashBsaltaireBsalouBsalisbury millsBsalineBsalaberry-de-valleyfieldB
sakata-shiB
saint-paulBsaint-martin-le-nœudBsaint-louisBsaint-denisBsacileBs pietruBrío gallegosBrutland countyBruskBrupanyupB	rulevilleBrueil-malmaisonBrudalzaBrottweilBrotenturm an der pinkaB	rossvilleBrosaritoBroquetas de marBroppongiBromulusBromneyB
romanshornBromanoBrolandBroermondBrodovreB
rocky hillBrockmartBrocanville no 151BrivenichBrivas-vaciamadridBriva del gardaBriptonB	riolunatoBrio dellBrigaudBridgewayB
ridderkerkBresacaBrensselaervilleBreggio nell'emiliaBreformaBredwood valleyB
redgraniteBredcliffBred lionB	reburkovoBreaganBrawsonvilleBrawmarshBrancho palos verdesBramsundB
ramrod keyBramingsteinBrainhamBrainbow cityBraglanB
radovljicaBqueens villageB
quartucciuB
quakertownB	péruwelzB
put-in-bayBpushkarBpunta del hidalgoBpunoBpulilanBpuerto ricoBpuerto escondidoBpuerto ayoraBprévostBprocidaBprince frederickB	prestwichBprairieBprachin buriBpowys countyBpownalBpowells pointBpositanoBportugalB	portorožB
porthmadogBport stanleyBport laoiseBport isabelBport aransasB
porrentruyBponte vedra beachBpompton lakesBpomfret centerBpomfretBpollocksvilleBpolignano a mareB
polebridgeBpoint harborBpoconoBploiestiBpleasant prairieBplaya de fajardoBpiranBpiquaBpippa passesBpioneertownB	pine knotBpimaBpilot mountainBpilbaraB	pikevilleBpicayuneBphumi thbeng meancheyBpeñaranda de bracamonteBpetlalcingoBpeterleeBperwezB	pepperellBpeostaBpenroseB	penngroveB	pell cityBpeculiarBpecan groveBpearlingtonBpeaks islandBpeachtree cityBpaxoiB	paulstownBpatrickBpaternaB	pataskalaBparkesBpangaiBpanaBpalos heightsB	palmertonBpalagianelloBpakenhamBpainesvilleBpaigeB	oxon hillBoxnard shoresB	ottweilerBottawa southBotsegoBosage beachBorsayBorondoBormocBorindaBorihuela costaBorange parkB	opelousasBold town stony plainBold chathamBolbia 2BokemahBokanagan fallsBohridB	odenvilleBocean shoresBocean beachBobernaiB
oberaudorfBoakwoodBoakridgeB	oak groveB
nürtingenBnuneaton and bedworth boroughBnoumeaB
northvilleBnortholtBnorthfield fallsB	northeastBnorth raleighBnorth potomacBnorth la crosseBnorth jacksonvilleBnorth havenBnorth coronaBnorth catasauquaBnorth bellmoreB	nordfjordBnolensvilleB
nokesvilleBniwotB
ninety sixBnimitzBnieuw-vennepBnicasioBniagara-on-the-lakeBnewtownardsBnewton centerBnewryB	newdigateBnewberry springsBnew tecumsethB	new roadsBnew orleans eastBnew kingstonBnew kentBnew hazeltonBnew bethlehemB
new athensBneustadt an der weinstraßeBneumarkt am wallerseeB	neuaubingBnerinxBneptune cityBnegril spotsBnebajBne portlandBnapoleonBnanoose bayBnairneBnadiB	mühldorfBmörönBmönchengladbach-neuwerkB
mégevetteBmwanzaBmuttenzBmusselburghBmurphys creekBmurnau am staffelseeBmuretB	mundeleinB	mouseholeBmount waverleyBmount marthaBmount healthyB
mount doraBmount albertBmoundsBmosmanBmosjoenBmosgielBmorzineBmortola superioreBmorrowBmorellaBmoraB	montvilleBmonte serenoBmonte amiataB
montalcinoB
montalbánB	monseliceB
moncalieriBmonacoBmolkomBmoerkapelleBmitchelstownBmississauga valleyBmission hillsB
mirebalaisBmirabelBminneolaBmiloBmilnerBmilmayB	millstoneB	millstadtBmilledgevilleB	millbrookBmiddletown springsB
middleboroB
middelfartBmethuenBmerrickBmerignacBmendotaBmeifodB	meerbuschBmedical lakeBmcleansboroBmcarthurBmayhillBmayfield heightsBmayfairBmayettaBmattawaBmastershausenBmassapequa parkB	mascoutahBmascotB	marystownBmartina francaB	mars hillBmarneBmarket harboroughBmarengoBmardinB	marcellusB	maranelloBmaraenuiBmaracayBmaputoBmaple shadeBmansonBmanorBmanns harborB
manly valeBmanlyBmanliusBmanitoBmamallapuramBmajadahondaB
mainevilleBmaidenBmahometBmadras stationBmacks creekBmachu picchoBmabletonBmaaseikBmaarssenBmaarBlytham st. anne'sB
lynn havenBlyndonBlymmBluxulianBlugoffBlugandaBludwigshafenBludianBlucanBlowvilleBlower ninth wardBlos molinosBlos fresnosBlorraineBloro ciuffennaBloomisBlonsdaleB	longreachB	long neckB
lone groveBlondon borough of wandsworthB
lockesburgBllanoB
llanidloesBljusdalBlisbon fallsBlincroftB
lincolntonBlimite sull'arnoBlimavadyB
librevilleB
lewisporteB
leverkusenBleoniaBleirvikBleipzig zentrumBlegianBlefloreBleakesvilleBle teichBle hézoB	le claireBlaxBlaughlinB	lauchheimB
lascahobasBlas vigas de ramirez centroBlas galletasBlarvikBlanoka harborBlannionBlanhamB
langenfeldBlandmarkBlamezia termeBlakselvBlakeview tahoeB
lake wylieB
lake ozarkBlake katrineBlake buena vistaBlainateB	lady lakeBladogaBlaconBlachuteBla virginiaB	la verniaB	la romanaBla magdalena contrerasBla juntaBla chaux-de-fondsBl'hospitalet llobregatBl'ancienne-loretteBkwinana town centreB
kurukukariB
kurtistownBkumejima-choB
kryvyy rihB	kruµevacBkronachBkreppenBkrachehB
kirriemuirB
kirribilliBkiowaBking georgeB
kilwinningBkilkeeBkeswickBkeokukBkeokeaB
kenningtonBkennardBkendall parkB	kempenichBkegleyBkeeleBkayesBkashima-shiBkarajBkanoBkaneB
kalundborgB	kalimpongBkakadu holiday villageBkaiserseschBkagawaBjusto sierraBjuniataBjudiqueBjonstorpB
jonesvilleBjoeltonBjiutepecBjessupB	jessamineBjennerBjeddahBjarrowBjarrettsvilleBiztaccihuatlBivylandBiverBitascaBislipB
iron riverBinternational fallsBinsurgentes surB	innisfailB	inishmoreBindiana universityBimsumBiklinBidanhaBibbenbürenBhöchst im odenwaldBhytheBhydenBhuntingtown squareBhuntingtownBhuntington stationBhummelstownBhughsonBhoxtonBhowlandBhoveBhortonBhorbB	hoogeveenBhonor oak parkBhonakerB	holmfirthBholmestrandBholmes beachB	hollistonBholladayBholdfastB	ho-ho-kusBhjorringB
hillsvilleBhillerodBhighbury and islingtonB
high rollsB	high peakB	hettstedtBhessmerBherskindB	hermitageB
henryvilleB	henriettaBhenricoBhenningsvarBhenlowBhenfieldB	helmstedtBhelmbrechtsBhell's kitchenBhelensburghBhedgesvilleBhectorBheckmondwikeBheavenerBheadlandBhaysBhayforkBhavre de graceBhaverfordwestB	hauppaugeBhartlyBhartbeespoortBharsewinkelBharrisvilleBharbesonBhappy valleyBhannoverBhamilton mountainBhamelnBhalsteadBhallamBhaledonBhaidian districtB	günzburgBgöteneBguía de isoraBgrödigBgrootebroekBgrižaneB	grindstedB	grimsarghBgriftonBgriffithBgribskovBgretzenbachBgrenaaB	greenportBgreeneB	greenbeltB	greenbankBgreen valleyBgreat missendenBgraylingBgrassy creekB
granollersBgrange-over-sandsBgrande-digueBgrande prairie county no 1Bgrand-bourgBgrand ledgeBgranardBgowandaBgoriziaBgordoBgopengBgoolwa beachBgoodingB
goldfieldsBgoldens bridgeBgoesBgoblesBgoaBglenwoodB	glenshielB	glen lyonBglasgow cityBglasgow centralB	giubiascoBgimliBgilsonBgilletteBgillBgiffordBgibsonBgibbonsvilleB	geraldineBgeorge townBgeneral escobedoB	gemmingenBgemeinde sinsheimBgemeinde schwäbisch hallBgemeinde nisterauBgemeinde neunkirchen am brandBgemeinde lengedeBgemeinde landshutBgemeinde freiburg im breisgauBgemeinde böblingenBgemeinde bad buchauBgaukönigshofenB	garrabostBgarbervilleBgambellB	galesburgBgainesBgaildorfBfulhamBfrutigenBfruitaBfrohnaBfrognerBfrelinghuysenBfreeburgBfrattonBfoxboroBfoster cityBfosterBfort madisonB	fort knoxBfort edwardBforsterBforresBforelBfontainebleauB
font-rubíBfolkstonBfoleyBfloresvilleB	fivizzanoBfigarolBfianarantsoaBferridayBferraraBfelsőtárkányBfederal heightsBfederalBfayvilleB	favershamBfarsøBfarmingvilleBfarmers branchBfar north dallasBfairport harborBfairburyB	fair playB
failsworthBfaggeto larioBexmoreB	excelsiorB
evergladesBettersBestados unidosBessex fellsB
espinaredoBeschbornBerzincanBerwinBerskinevilleBersigenBenniskillenBenmoreB	engelbergB	empfingenBemmingenBemiliano zapataBelxBelthamBelmontBellentonB
elk rapidsBeliotBeldredBeldoretBelburgB
el torreonBel pinell de braiB
einsiedelnBednaBedgmondBedentonBebnat-kappelB
eau gallieBeaton rapidsBeastern san diegoBeast sydneyBeast norwalkB
east islipB
east havenBeast florenceBeast falls churchBeast dundeeBeast colfaxBeast clevelandBeast blytheBeast bloomfieldBeast amherstBealingBdupoBduntaraBdunlapBdulacBduchesneBdruognoB
drumhellerBdrammenBdowntown phoenixBdowntown mobileBdowntown louisvilleBdowntown fort saskatchewanBdownievilleBdowners groveBdoralBdoonsideBdonja tuzlaB	dinkytownBdevizesBdeux-montagnesBdeurneBdetmoldBdes plainesBdenhoffBdendermondeBdemotteB
deltavilleBdelevanBdelaware cityBde funiak springsB
dauphin rmBdauphinBdassowB
dallesportBd'ibervilleBcutler ridgeBcurepipeBculturalBculebraBcuencaBcruquiusBcromwellBcroix des bouquetsBcrockettBcridersvilleBcrewe and nantwich boroughB	crestwoodBcressonB	cresskillB
cresaptownBcrater lakeBcrasto de campiaB	cranfieldB	coxsackieBcourtoisB	cottesloeBcotonouB
cosmopolisBcosenzaBcorvara in badiaBcortazar centroBcorralesB	corinaldoBcorigliano calabroBcordovaB
coraopolisB	copertinoB	coolvilleBcontinentalBcontheyBconsettB	connemaraBcomeBcolquittBcold springB
coimbatoreBcobbBcobarB
coalcománB
clarkfieldBclapham commonBcinqueterreBchuoBchorltonBchomedeyB
chocianówBchitralBchimalhuacánBchicopeeBchicontepec de tejedaB	chiavennaBchetumalBchester-le-streetBcheshuntB	chernihivBchenoaBchelanBcheckBchartleyBcharratB
charmhavenBchannel islandsBchangewaterBchamplinBchachapoyasBcentre hallBcentral ontarioBcenter pointB	cedar keyB	cavaillonBcattaraugusBcatoBcatlettsburgBcatfordBcastrop-rauxelB	castenasoBcastelvetro di modenaBcastell-platja d'aroBcastalian springsBcasinoBcarrick-on-suirB
carpentrasBcarmarthenshire countyBcarlyleB	carlstadtBcarl junctionBcarellesBcapreolBcape may court houseBcape carteretB	capbretonBcanneto paveseBcanberra city centreBcamroseBcamptonB
camperdownBcambriaBcalifonBcalcataBbühlBbávaroBburyBburns harborBburnaby heightsBburkburnettBbungomaBbungayBbulgarograssoBbukit timahB	budd lakeBbuchholz in der nordheideBbrylleBbrunssumBbruce crossingB	broomhillBbridgend county boroughBbridgehamptonB
breezewoodBbreconBbreaux bridgeBbre sopra luganoB
brasschaatB
brandasundB	braidwoodBbradburyBbrackleyB
boyne cityBboyes hot springsBbowbellsBbotopasiBbotanyB	borlängeBboomBbolinasBbognor regisB
boca chicaBbobo-dioulassoBboardmanBboB
bloomsburyBbloemfonteinBblenheimBblandford forumB	blanchardBblairgowrieB	blacktownB
blackstoneB	blacklionBblack river fallsB
birdsvilleB	birch runB	birch bayBbilstonB
billinghamBbikanerBbiharBbexleyBbewdleyBbeverenBbetaghstownBberwick-upon-tweedBbenzoniaBbensalemBbenalmádenaBbelle centerBbelemBbeekBbeaver bottomBbealetonBbay villageB	bay pointBbattery park cityB	bathshebaBbathgateBbastiaBbasinBbaschleidenB	barrigadaBbarnumB	barnsteadB	barneveldBbarendrechtB
banyuwangiB
ban ko taoBballinaBballerupBbalingenBbalatonfüredBbaiting hollowBbaie-comeauBbaia domiziaBbagworthBbagamoyoBbadolatoBazilalB	aurovilleBaurillacBatizapanBathenryBaspersBasiagoBascensión de guarayosBarnpriorB	armstrongBarleeBarklowBarkadelphiaB	arkabutlaBaritonB	areopolisBarendalB
ardencroftBaransas passBanzioBanthonyBannabergBangels campBanabelBammonB	ammanfordBamherstburgBamealco de bonfilBalvonBaltdorfBalpentalB
allen parkB	alingsåsBalgonquin parkB	alexandraB	alert bayBalcala de henaresBakumalBairway heightsBaimeBagnes waterBadejeBacolmanBacapulcoB
abbey woodBaarhus westB98312B98104B97527B97007B94581B94062B92589B92116B91603B90076B89048B85607B85381B84721B84078B81401B81224B77380B77205B75605B75119B74066B72758B72601B70113B64105B63301B61704B61402B60505B60085B49301B48381B46815B45648B45211B41101B40741B38401B33026B32821B32119B30906B30252B30013B29715B27713B23223B21217B20520B19454B19352B19054B15701B15224B13365B13201B10552B06095B03247BželechoviceBöstra ingelstadB
émanvilleBåseleB	zwillikonBzwijndrechtBzwettl-niederösterreichBzottegemB	zona rosaB
zollbrückB
zionsvilleB	zimmermanBzhuhaiB	zhongdianBzhenzhouBzhambylB
zelienopleBzelataByuma proving groundByuendumuBysyk-kolByoungByoakumBynysdduByigoBydre norrebroB	ybor cityB
yazoo cityByamanashi-shiByakutatBxochistlahuacaB
xochicalcoBwynantskillB	wyandanchBwyalkatchemBwuxiB
wrocławkiBworlandBwordenBwoods crossBwoodhullBwoodbury heightsB
woodbourneBwongaling beachBwondervuB"wolverhampton metropolitan boroughBwolkensteinBwohlenBwodongaBwittlichBwittenberg lutherstadtBwintraakB
winterportBwindsor locksBwimaumaBwilmotB
wilmerdingBwillowbrookBwilliams lakeBwierdenBwien 14Bwiang pa paoB
whitinghamBwhitingB
whitestoneBwhite marshB
white hallBwhite cloudB	wheatlandBwhangarei centralBwhaligoeBwewokaBwetumpkaB	westmountBwest virginia central junctionBwest swedenBwest spokaneBwest petalumaBwest perrysburgBwest pensacolaBwest midlandB
west miamiBwest long branchBwest lexhamBwest las vegasBwest glacierBwest fultonBwest cape mayBwest byfleetBwest boothbay harborBwest bay shoreBwertherBwenhamBwelsBwellmanBwellingborough boroughB	weinstadtBweilburgBweidenBweespB
wednesburyB	webb cityBwavelandB	wauwatosaBwaupoosBwaunakeeBwaubausheneBwattsB	waterdownBwaterbury centerBwatchungBwatchemB	wassenaarBwarrumbungleBwarner springsBwaretownBwarehouse pointBwamuran basinBwalsB
walnutportBwalnut groveBwallops islandBwalled lakeBwalldorfB	waldoboroBwaldmohrBwaldkraiburgB	walbertonB
waitsfieldBwaianaeBwaialuaBwahnebergenBwahlrodBwabernBwabenoBvölklingenBvästerhaningeBvärnamoBvouvrayB	voluntownBvolterraBvojensBvleutenBviterboB
vishnevoyeBvirginia waterBvilliscaBvilliers-sur-marneBvillenaBvillachBvilla d'addaBvilamarxantBvigevanoBvieux-québec-- basse-villeB
vieux fortB	viernheimBvidovecBvidaliaBvestavia hillsB	verolengoBvernalBvendlincourtBvelletriBvejer de la fronteraBvega de alatorreBvaudBvan cortlandtvilleBvalle de valdebezanaBvalle de guadalupeB	vallaurisBval-des-montsBvadstenaBuyuniBuvitaButreraButenaBursulo galvánBurkBurbanización porlierBupton upon severnBupplands-väsbyBupper sanduskyB
upper kentBuniversidad de sonoraBuniversidadBunitedBulfborgBueckermündeBudallBudaipurBubicacion tabiqueraBtáborBtyne valleyBtybee islandBtwin bridgesBtweed heads westBtuxpan de rodríguez canoBtuskegeeBturnhoutBtuluáBtularosaBtulalipBtuerongBtržičB
trowbridgeBtrout creekBtrittauBtrescottB	treadwellB	traralgonBtranåsBtraniBtralee ruralB	trafalgarBtowerB	towcesterBtoveyBtoutleBtoruńBtopsail beachBtootingBtooneBtonglingB	tomelillaBtollesonBtollarpBtodos santosB	toamasinaBtlaquepaqueBtlalnepantla de bazBtizimínBtizayucaB
tishomingoBtiruvannamalaiBtinton fallsBtimelkamBtildenBtiftonBtierra verdeBtierpBticonderogaB	thurcroftB	thornhillBthiruvananthapuramBthiensvilleBthienenBtheodoreBthe west endB
the strandBthe sea ranchBthe scottish bordersBthe channonBthayerBthaxtedBtexhomaB	teterboroBteruelBterschellingBterra bellaB	terneuzenB
tepoztlánBtepotzotlánBtepeacaB	ten sleepBteesBteagueBtaylorsville coveBtaylorstownBtaylorsB	tavistockB	tavernierB
tavagnaccoBtartuB	tapachulaBtangentBtampa palmsBtambre d'alpagoBtakayama-shiBtaizéBtain-l'hermitageB	taiji-choB
tabernacleBtaberB	sömmerdaBsävsjöBszegedinBszczecinBsyossetBsylvaB	swissvaleBswifts creekBswift currentBswayzeeBswantonBswanleyB
swainsboroB	svängstaBsuveretoBsutton in ashfieldBsuttonB
sutherlandBsurryBsuringBsurfside beachBsunlandB
sundbybergBsund i lofotenB	sunbrightBsunapeeBsummerfieldB
sugar loafBsucker gardenB	suchitotoBsubiacoBstäfaBsturgeon countyBstubbekøbingBstrohBstrassenBstoverBstony stratfordBstony pointBstoke mandevilleBstinson beachBstevnsBstephanskirchenB
stellartonB	steenwijkB	steenfeldBste.-anne-des-lacsBste.-adèleB	ste. anneB
starksboroBstargard szczecińskiBstanstead abbotsBstanleyvilleBstanley crookBstanchfieldBstadtteil wiesbaden mitteBstadtteil hildesheimBstadtteil aachenBst.-étienne-de-boltonBst. simons islandBst. pöltenB
st. moritzBst. michielsgestelBst. michaelBst. marein bei grazB	st. johnsBst. johann im pongauBst. ivesBst. ignatiusB
st. helierB
st. dennisBst. clairsvilleBst. briavelsBst. austellB
st. albertBst-élie-de-caxtonB
st-niklaasB
springviewBspring creekBspout springsBspoltoreBsplitBspelloBsouth windsorBsouth west rocksB
south sideBsouth robertsonBsouth norwalkBsouth millsBsouth las vegasBsouth fort smithB
south forkBsouth findlayBsouth downsB	sonnebergBsommeryBsolnaBsolkanBsoestBsodusBsochiB	soap lakeBsnowdownBsneads ferryBsmithersB	smethwickB
slyudyankaBslippery rockBslickBslaughter beachBslatonBslades greenB	skærbækBskyBskejbyBsix mileBsittingbourneBsisaketBsinnaiBsimlaBsimbachBsilver plumeBsilsbeeBsikestonBsihanouk villeB
siesta keyBsierreBsibenikB
shullsburgBshorterBshokanBshipkaBshinerBshikokuchuo-shiBshickshinnyBshetlandBshepherdBsheffordBsheepy parvaB	sharptownBshailer parkBseraingB
sendai-shiBsellersburgBseki-shiB	seika-choBsegromigno in monteBsegoviaBseekonkBsecteur-charlevoixBsebeșBseavilleBsealyBseabeckBscotiaBscorranoBscordiaBscobeyBschönauBschwäbisch gmündBschwenksvilleBschwarzwaldBschrobenhausenBscholesBschlitzBschechenBsayreBsaylorsburgBsaunderstownBsateliteB
sassenbergBsarinaBsargodhaBsaranacB	saquaremaBsapphireBsanurBsantorsoB	santaquinBsanta maria a monteBsanta lucia di piaveB
sant maureBsant feliu de guíxolsBsant carles de la ràpitaB
sandy lakeB
sandweilerBsandia parkBsan severino marcheBsan pedro cholulBsan miguel ixtahuacánBsan marzano olivetoBsan juan del rioBsam roi yotBsalvatierraBsalkumBsalisbury eastBsalemiB
sale creekBsakuBsaijoBsagamoreBsafaqisBsaanichBrüthiB
río bravoB
rzhishchevBrutledgeBrussiavilleB
russelltonBrussell springsBrushfordBrupertBruncornBrumsonBruandaBroystonB%royal borough of kingston upon thamesB'royal borough of kensington and chelseaBroxburyB
rothschildB	rotenturmB	rotenburgBrosythBrostockBrosscarberyBrosemeadBrosehillBroseboroBroscoeBrorosBroquebrune-sur-argensBroosevelt islandBronnebyB
ronkonkomaBromeréeBromano di lombardiaBroglianoBrogersvilleBrogers cityBrodezBrockwoodBrocktonB	rockridgeB
rockinghamBrockdaleB
rockcastleBrock tavernBrochelle parkBroccapalumbaBrobertaBrobbinsB	rivervaleBrisskovBrio ricoB
rio brancoBringstedBrignieux-le-francBrietbergBriemstB
riedhausenBridgelyBriccioneBribble valley boroughBrhonddaBrevesby heightsB	rethimnonBrenfrewBrembangBrelizaneBreinachBreigateBredruthBredbank plainsBrecanatiBraytownBravenaBratonBranders north westBramseurBrambouilletBramadieBradebeulBraccoon islandBra'ananaBquibdóBquartier de l'europeB	quang triBquaker cityBqadubBqacha's nekBpétionvilleB
pyrénéesBpungoBpukekoheBpuiflijkBpuhoiBpuerto varasBpuerto putumayoBprivasBprincevilleBprinceton junctionBpreußisch oldendorfBpreston hollowBpreesallBprairievilleBprairie farmBprague 6Bprague 5BpoznańBpowhatanBpoultneyBporto mantovanoBportmoreBport st. johnBport norrisBport norfolkB
port louisBport harcourtB	port ewenBport elizabethB	poperingeB
pontyberemB
pontefractBponorogoBpoloBpoint la nimB	pohang-siBpoestenkillBplérinBpluneretBplevnaBplevenBplaya vicente centroBplateau-mont-royalB
plainsboroB	pittstownB	pittsfordBpiteåB
pipe creekBpinsdorfBpicture butteBpiacenzaBphiloBphilipsburgB
pfäffikonBpetworthBpetrosky-otesgoB	petrosaniBpetersfieldB
pescantinaBperryopolisBpernes-les-fontainesBpepeekeoB	penthalazB	penshurstBpenrithBpengeBpebble beachBpayyoliBpatrasBpasłękBpassignano sul trasimenoBparsonsBparsbergBparosB
parksvilleB
park ridgeBparis 18e arrondissementBparis 12e arrondissementBparentis-en-bornBpapingonBpapaaloaBpanamáB
pampelonneBpalouseBpaloloB
palenvilleBpalazzolo acreideBpaeroaBovertownBoutramB
oude-tongeB	ottobrunnBotisB	otangareiBosterodeBosteenBosseoBosB
ortonvilleB
oro valleyBoriaBorchardBoranienburgBoradour-sur-glaneBoradeaBopaskwayak cree nation ir 21cBoostrozebekeBonyxBonargaBonakaBon top of the worldBomakBolyphantBolfenBoleyBold orchard beachBold greenfield parkBokayamaB	okahandjaB
ogdensburgB	offenbachBoelweinBodense south eastBocillaBoceanBoberwartBobaskaBoamaru centralB	o ribeiroB
nøtterøyBnuwara eliyaBnoyersBnoxonBnovorossiyskB
novo mestoBnovenaBnottulnBnotting hillBnotre-dame-de-la-paixBnorthwest sioux fallsB#northeastern manitoulin and islandsBnortheast washingtonBnorthamBnorth truroBnorth syracuseBnorth scituateBnorth san leandroBnorth parramattaB
north parkBnorth orwellBnorth ontarioBnorth nashvilleBnorth merrickBnorth mcalesterBnorth huntingdonBnorth greenbushBnorth crossettBnorth clevelandBnorth chittenangoBnorth braddockBnorth baton rougeBnorrlandBnorresundbyBnormannaBnordlandB	nordenhamBnorciaBnommernBnolitaB
nolanvilleBnoisy-le-grandBnogent-sur-oiseBnixonBnitroBnishinomiya-shiB	nine elmsBnijlenBnieuwersluisB	niersteinB
niederwaldBniedersachswerfenBnicolletBngongBnewsteadBnewmarket on fergusBnewlynBnewhamBnewhallBnewcastle-under-lyme boroughBnew westminsterB
new viennaBnew philadelphiaBnew madisonB
new durhamB
new denverBnew carlisleBnew buffaloB
new berlinBnewBneveleBnevadaBneumarktBneu-ulmB	nettletonBnettieBnetherlandsBneseburBneptuneBnepalBnelsonvilleBnegomboBnegauneeBnecedahBnazarethBnavajo indian reservationBnaustdalBnattheimBnathalieBnashwaukBnapoleonvilleBnapiliBnanuetB	nanticokeBnalchikBnaganoBnackaBnaalehuBmönchengladbach-windbergBmöllnBméreauBmyrtle creekBmynachlog-dduBmykonosBmuswellbrookB	mussoorieBmuscotahBmurrumbeenaBmurrumbatemanBmuro lecceseBmurmanskB
munnsvilleBmunfordBmulvaneBmuldrowBmoyie springsBmountainsideBmountainburgBmount sterlingBmount sidneyBmount maunganuiBmount idahoB
mount hopeBmount gambierBmount eden centralBmount coot-thaBmount coolumBmouenBmotoquaBmotleyBmoss landingBmosineeBmorris plainsBmorlaixBmoriBmoreton morrellBmorenciBmoosicBmooers forksBmoodusBmontreuxBmontferlandBmontelloBmontefiasconeBmontecastelloBmonte castello di vibioBmont vernonBmonforte de lemosBmonettBmonasteraceBmojaveBmohonk lakeBmoeBmintlawBminonkBminocquaB
minnertsgaBminisinkBminersvilleBmineral pointBmilroyBmillinocketBmillburyBmill brook housesBmikonosBmikadoBmidtown omahaB	middlesexBmiddle sackvilleBmiddle riverB	mickletonB
micheldorfBmiami lakesBmiahuatlán de porfirio díazBmezőkövesdB	mezquiticBmeterenBmesa de tijuanaBmerida centroBmerenschwandB	meredosiaBmeppelBmentasta lakeBmenahgaBmelsBmellrichstadtBmelhusBmeeting creekBmeekerBmedicine lakeBmebaneBmeauxBmeadow bridgeBmead valleyB	mcphersonBmcloughlins beachBmccloudBmccallBmayerBmawson lakesB	mattituckBmatlockB
mata ortizBmassyB
massapequaB
maspalomasBmaserà di padovaB	marysvaleB	marstrandBmarsa matruhBmarreroBmarrawahBmarly-le-roiBmarlinBmarlboroBmarkt allhauBmarket draytonBmarkdaleB	mariefredBmaria steinBmarco islandBmarciana marinaBmarcheBmarblemountBmarbleBmarateaB
manzanilloBmanvelBmansfield centerB	manorbierBmanoaBmangochiBmandello del larioBmandelieu-la-napouleBmanaliBmambray creekBmaloneBmalesherbesBmaldon districtBmahopacBmahnomenBmahilyowBmaguires bridgeBmadeira beachBmacungieBmacleodBmackinaw cityBmacclesfield boroughBmabankBlüdenscheidB	lytteltonBlydbrookBluquilloB	lundeborgBlumsdenBlummiBlucerne valleyB
lucasvilleBlubbeekBloxahatcheeBlowrysBlowgapB
lower huttBlovereBloughtonBlosoneBlookout mountainB	loogooteeBlonokeB
longmeadowB	long pondBlondon borough of islingtonBlondon borough of haveringB	lomträskB
loma lindaBlolo hot springsBlollandBlogroñoBloctudyB
lock havenBloch sheldrakeBlocarnoBllorenç del penedèsBlivingstoneBlittle bay islandsBlithia springsB	lippstadtBliphookB
linn creekBlinglestownBlindleyB	lindfieldBlincoln squareBlimoursBliminkaBlimenaBlimburgB
lidköpingB
lichteneggBlibresBlibavaBlevangerBleukBlessacBles éboulementsBles ulisBles roussesBles houchesB
les abymesBleomaBleoBlendavaBleknesBlejreBleerBlebachBleawoodB
le vigeantBle pré-st.-gervaisBle mont-st.-michelBle bourg-d'iréBlawnsideBlawndaleB
lavalletteBlauderdale lakesBlaroseBlaplaceBlaonBlansfordBlangportBlangenB
landenbergBlalitpurBlake view terraceBlake st. louisBlake panasoffkeeBlake junaluskaBlake jacksonBlake dallasBlaeBladybankBladera ranchBladbroke groveBla vall d'uixóBla rochelleB
la capillaB
kvistgårdBkuujjuaqBkurandaBkumamotoBkrumB	krommenieBkrimpen aan de lekB	krasnodarBkouroussa-centreBkoufaliaBkotamadya jakarta baratBkonzellBkokkedalBkohlbergBkodiakBkodakBko yaoBknysnaBknoxBknegselBkneelandBklosterBklippanBkleveBkleindöttingenBklazienaveenBklatovyBkittery foresideBkirkokBkirkconnellBkipahuluB	kingstownB	kingsfordBkings mountainB	kingfieldBking's lynnBkilrushBkilifiBkilgoreBkilaforsBkigomaB
kidlingtonB	khon kaenBkeystoneBkershawBkerseyBkenockeeBkennebunkportBkenmoreBkenlyBkempnerBkeffiBkeddieBkearnsBkearneysvilleBkawartha lakesBkastrupB	karlskogaB
karioitahiBkaraisenBkapitiBkapaluaBkampong khleangBkampenB
kalgoorlieBkalapanaBkalamaBkakelaoB
k'obulet'iBjægersprisBjärnaBjulichBjohns islandBjersey villageBjenningsBjenksBjamundíB	jaisalmerBjaipurBjacumbaBjackson centerBjacaB
ixtapalucaBivorytonBitoigawa-shiBisny im allgäuBismaningBislandBisabelaBirrigonBirondequoitBiron bridgeBiqaluitBioniaBioneBinyokernBinternational drive areaBinternacional tijuanaBinmanBingramBindoreBinchtureBincheonBimnahaBilulisatBile a vacheBidlewildBidaho springsB	húsavíkB	höganäsBhässleholmBhypoluxoB	hyltebrukBhvidovreBhuyB
hurstvilleB
hurffvilleBhunterB	humlebækBhuixquilucan de degolladoBhughes springsBhubliBhubbardsvilleBhuachuca cityBhoxieBhowardsvilleBhoward cityBhounslowBhoughtonBhortaB
horse caveBhornby islandBhormiguerosBhoplandBhonomuBhoneoyeB
honea pathBhondarribiaBholywoodBholsteinBholly ridgeB
hokuto-shiBhokitikaB	hohenwaldBhogansvilleBhinwilBhinkleyB	hillcrestB
highcliffeB
high laverBhigh desertBhigashiosaka-shiBhickory hillsBhickmanB	hiawasseeBherrinB	herne bayB	heraklionBhenrievilleBhennefBhengeloBhemerBhelmondB
hellertownBheistBheflinB
heerenveenBhebbronvilleBheathsvilleBhaywards heathBhaynesvilleB	haw riverB	haverfordBhaveBhavasupai indian reservationBharvestBhartwellB	hartvilleBharrisonvilleBharrimanBharfordBhareidB	hanstholmBhansestadt rostockBhanleyBhamelBhamburg-mitteBhamarøyBhalstadBhalifax peninsulaB
haliburtonBhalfwayB
haleyvilleBhalenB
hainesportB	guétharyBgunnison riverBgunnison palisadeBgummersbachBgulf harborsBguernseyBguderhandviertelBguastiBguadixB	grünbergBgroßheubachBgroßen-lindenB
gros-morneBgriswoldBgrimsby mountainB
grimeslandBgrieskirchenB
grembergenBgreenockB	greenbraeBgreen pointBgreeceBgreat gransdenBgravenhurstBgratkornB
grantvilleBgranite shoalsBgranite fallsBgrand falls-windsorB	grand bayBgranada hills northBgrambekBgrain valleyBgothamBgothaBgosford westB	goochlandBgomaBgolden gateBgold runBgoianiaBgoderichBgochBgmünd in kärntenBgmündBgmina oświęcimBglyndonBglousterB
globevilleBglideBglenpoolBglenns ferryBglen st. maryBglen huntlyBglen canyonBglen burnie parkBgislavedBgilmourBgilfordBgifhornBgexB	gernsheimBgeorge westBgentryvilleBgeneseoBgemeinde wickedeBgemeinde trierBgemeinde sindelfingenBgemeinde ritterhudeBgemeinde reutlingenBgemeinde mühldorf am innBgemeinde memmingenBgemeinde mandelbachtalBgemeinde göppingenBgemeinde bad wildungenBgemeinde bad waldseeBgemblouxB	geghanistBgearyBgdyniaBgawlerBgarzeBgardizB
gangnam-guB	gananoqueBgalsBgalleB
gainesboroBgabrovoB	føresvikBfärjestadenBfuzhouBfurnesBfujinomiya-shiB	frontenacBfront rangeBfrombergBfreretBfreiberg am neckarBfrederikstedB	frankstonBfranklin parkBfrankenmuthBfrankenbergBfoyilBfoxburgBfossilBfortsonBfort williamBfort morganBfort mitchellB
fort lewisBfort leavenworthB	fort kentB
fort irwinBfort huachucaBfort flaglerB	fort erieB	fort drumBfort benningB
fort ashbyB	formicolaB
fork unionBforest of dean districtBforest acresBforestBfolignoBfloyds knobsBflowery branchB	flossmoorBflemingsburgB
flat riverBfitzroyB
fitzgeraldB	finspångBfinlandBfilzmoosBferronBferrolBferrières-en-brieB
fermignanoB	fennimoreB
felsenthalB	feldkirchBfehringBfeeding hillsBfaystonBfayetteB
fauntleroyBfatimaB
farringdonBfarmersvilleBfallonB
falfurriasBfabiusBfaaborgBextonBevryBeveshamBeverglades cityB
eutawvilleBeupenBetowahBethelBetauxBesthervilleBestevanBestella/lizarraBestanciaBespooBesopusBeruwaBerknerBeppanBephraimBeolaB	entlebuchBennsBengadineBenergyB	emmeloordBemeraldBelyBelsahBels hostalets de pierolaBelmshornBelmerBelmaBellisBelliottsburgB	ellingtonBelkinBelkhorn cityB	elk ridgeBelisabethfehn nordBelectric cityBeldoraBeldonBeldaBelbertaB
el salitreBel ritoBel prat de llobregatBel jebelBel infiernoBel ejidoBeindBeichenauBehrhardtBegyptBeghezéeBeghamBeggenfeldenBegg harbor cityBegbeBeflandBeffortBeerselBedwardsburgBedtBedsbynBedonBedgertonB	eddyvilleBebreichsdorfBeberstalzellB	ebensburgBeatontonBeatonBeastlandBeast waterboroBeast wakefieldBeast vancouverBeast toledoBeast side phoenixBeast saint cloudBeast ridingB
east ridgeBeast morichesBeast millinocketBeast hollywoodBeast greenvilleBeast fishkillBeast falmouthBeast berlinBeast barnetBeast bakersfieldBdürrenäschBdörpenBdursleyBdunsterBdunquinBdunkirkBduncansvilleBdumfries and gallowayBdullikenBdrontenBdripping springsBdriggsBdowntown watsonvilleBdowntown rahwayBdowntown petalumaBdowntown mcallenBdowntown des moinesBdownBdowaBdouaiB
dossenheimBdorseyBdormontBdonnaBdongenB
don benitoBdoltonBdolan springsB	docklandsBdnipropetrovs'kBdistrict d'hochelagaBdiptonBdingessBdinantBdigne-les-bainsBdifferdangeBdieuzeB	dieterichB	dhrimazesBdevil's bridgeBdestelbergenBdessauBdescansoBderby centerBdepositBdemossvilleBdelfgauwB	delbrückBdelaware water gapBdeerwoodBdededoBdebaryBdaybreakBdaxBdawlishB	davisburgBdartfordB
darjeelingB
dargavilleBdanehillB
dallastownBdallas centerB	dale cityBdakota dunesBcúcutaBcyprus southwestBcuyamaBcurranBcuparB
cunninghamB	culemborgBcubaBcuautlaBcuautitlan izcalli centroBcrystal riverBcroxley greenBcrow agencyB
crossfieldBcrescentinoBcrescent city northBcrescentBcreelBcrawfordvilleB	cranberryB
cowlingtonB	cowbridgeBcovertB
courbevoieBcotuitBcotterB
corridoniaB	corralejoBcorpachBcoronadoBcorioBcordeleBcoquilleBcopan ruinasBcooranBcooperstown junctionBcoonabarabranBconstantineBcongressB
compiègneBcommercial pointB
comegliansBcolumbia stationBcolumbia cityB	collioureBcollier rowB	coles bayB	colebrookBcoffeyvilleBcoconut groveBcockburn harbourBcochranBcoamoBcoal valleyB
cloverdaleBclinton hillB	cliffwoodBcleverBcleoraB	clementonBclearlake oaksB	claiborneBciudad vallesBcity of londonBcitrus springsBchâtenay-malabryBchurtB
churchdownBchurBchubbuckBchouteauBchorlton cum hardyBchorleywoodB	chon buriBchocowinityBchitwanBchiswickBchino valleyBchimaltenangoBchildsBchieti scaloBchichihualcoBchetekBchesterhillBcherryvilleBchenango bridgeBcheesman parkB	cheboyganB	chauvignyBchateaurouxBchaplinBchanuteBchalfontB	cerveteriBcerro de pascoBcergyBceresBcentre wellingtonBcentral saanichBcentral mercedB
centereachB
cellarengoBcelerina/schlarignaB
cedarhurstB	cedarburgBcayucosBcawstonBcava de' tirreniBcausewayB	catterickBcatoosaBcatenanuovaB	castletonB
castlefordBcasparBcashmereBcasertaB	casaprotaBcasal di principeB
casablancaBcarugateBcarrollBcarraraBcaroline springsBcarolinaBcarmenBcarlos julio arosemena tolaBcarinaroBcarignanBcaribbean keyBcarate brianzaBcapitolaBcapitol heightsBcapenaBcap-aux-meulesB
cantonmentBcannon fallsBcannon beachBcannockB
canningtonBcanal winchesterBcanaan valleyB
campobassoBcampoB	campegineB
camp mccoyBcamerotaBcalumetBcalsazioBcalimesaBcalexicoBcalera de leónBcaldad da rainhaB	calahorraBcaistorBcaerphilly county boroughB
caernarfonBcaciqueBcachanBcaccuriBcabrisBcaboolBbürenB
båtsfjordBbätterkindenBbynumB	bylakuppeB	bydgoszczBbutzbachBbusto arsizioBburtonsvilleB	burscoughBburraB	burntwoodBburnt pointBburleighBburke mountainBburglengenfeldB
burghausenBbunschoten spakenburgB
bunschotenBbunnellBbulverdeBbulleBbuckeyeBbryson cityBbryant pondBbrusselBbruneauB	brownwoodB
brown deerBbroomallBbronkhorstspruitBbrodheadBbrinayBbrightlingseaBbrielleBbrie-comte-robertBbridportBbretton woodsB	bremangerBbreitscheidBbredeneBbrechtBbraunau am innBbrasiliaB
brant lakeB
brambletonB	brambauerBbraivesBbradshawBbrabrandB	box elderB	bournmoorBbourdeillesBbountiful heightsB	bottineauBborrego springsBborgonovo val tidoneBborgo a buggianoBboqueteB	boonsboroB
bonnyvilleB
bonnevilleBbonner springsBbonitaBbon aquaBbon airBbolsoverB	bollebygdBbolgartB
boischatelB
bodega bayBbochniaBbluffB
blue ridgeBblue mountainsBblue islandB	blossburgBbledBblarneyBblanesBblancoBblairB
blackshearB
black wolfBblack mountainBbitterne parkBbishop arts districtBbirstallB
biristrandBbingleyBbila tserkvaBbihaćBbig stone gapB
bickenbachBbhanpurBbhadaurBbetws-y-coedBbethel springsBbethel parkBbesenbürenBberounBbermaguiBberkeley lakeBberi nagBbergschenhoekB
beresfieldBberberaBbentonBbensonBbenfleetB
ben lomondB
bellflowerBbellegarde-sur-valserineBbellBbelcaBbelalcázarBbelairBbel airBbeek en donkB
beechworthBbeckerBbeauportB	bear lakeB
bealsvilleBbeach havenBbaños de agua santaBbaytownBbayportBbaybayBbayan-ulaanBbat caveBbarronBbanska bystricaBbannerBbangsB	banbridgeBban tha song yangB	ballymenaB
ballyheigeB
ballyclareB	bald hillBbagnesBbadenBbad vöslauBbad neustadt an der saaleBbad nauheimBbad liebenzellBbad hersfeldBbad axeB
back swampBbacauBbabenhausenBazoyúBaynorBavonmoreBavistonBavilesBaverill parkBavenchesBavelgemBaveburyB	aumsvilleBauggenBaudubonBaubussonBathloneBathertonB
athelstoneBatchisonBatacamaBasuncionBastiBastanaBashfieldBarzoBarthurBartajonaBarpajonBarnstadtBarmonkBarmentièresBargyleB	argentineBarequipaBareopoliBarcachonBaranda de dueroBarabelaBapuelaBapollo beachBapanBantonyB	antioquiaB	ansedoniaBanneyronBannaBanglesey countyBangierBangermündeBangelus oaksBangelicaBandriaBandratxBancasterBameryBamericusB	americanaB	amecamecaBambridgeB	amblesideBamblerBamalfiBalziraBalvinBalturasBalserioBalseaBalsagerBalphaB
alotenangoBalnwick districtB	allschwilBalligator creekBallgäuB	aliquippaBalgerBalgarviaBalfordBaldieBalderley edgeBalcoaBalabama junctionBakwesasne indian reserve 59BajaccioBaix-les-bainsBaguilarBaeugstertalBadkinsBadelantoBaculco de espinozaBactionBacmeBachouffeBachernBacademy parkBabita springsBabeokutaBabbottstownB99950B99629B99503B99220B99201B97331B97309B97233B96802B95823B93562B93505B93003B92683B92662B92545B92101B91406B91016B90005B89112B89027B87301B86003B84117B80205B80015B78721B78665B77546B77459B77290B77095B76098B75965B70726B63304B60645B60630B60626B60608B56601B56001B54904B53083B49735B49503B49203B45228B44221B43701B43068B39534B39047B38680B38506B37686B37605B37087B36542B36081B34986B34982B33196B33102B33009B32570B32504B32004B30004B29835B28147B28054B24210B23705B23602B23112B20815B20194B19901B19464B19195B19193B15218B13204B11978B11722B11237B10184B10128B10065B08724B06614B06082B04101BłódźBölandBépernayBzwickauBzigzagB
ziguinchorBzielona góraBzevenBzephyrhills northBzeewoldeBzbarazhBzaporozh'yeBzacapaByuleeByufu-shiByomitan-sonBynyslasByeosu-siByelmByautepecByarmouthByaphankByamhillByambolByambaByaltaBxátivaB	xirochoriBxichúBwrexham county boroughBworksopBwoodford greenBwokingBwivenhoeBwittenBwinterswijkBwinsfordBwimborne minsterBwillungaBwills pointB	willaminaBwilkinsburgBwietzeB	wickliffeB
white rockBwhite houseBwheatley heightsB	whakataneBweyburnBwewakBwewahitchkaBwevelgemBwestfallB
westamptonBwest windsorB
west unionBwest toledoBwest tellurideBwest suffieldB	west stowBwest roxburyBwest panama city beachBwest oxfordshire districtBwest memphisBwest gunnisonBwest draytonBwest denmarkBwest baden springsBwerdauB	wentworthBwentorfBwendellBwembleyB
weinfeldenBwehlBwegbergBwauchulaB
wathlingenB	waterboroBwataugaBwashingtonvilleBwarroadB
wangarattaB
wandsworthB	wanamingoBwaldshut-tiengenBwaldportBwading riverBvélez-málagaBvossavangenBvolusiaBvoldaBvolcánBvoditsaBvitry-sur-seineBvirgilBviolaBvinitaBvilseckBviloniaB	villenovaB
villagránB
vicopisanoBvicBveluweBvellingeBvejenBveghelBvastoB	van vleckBvan dyneBvalley fallsBvalle de chalcoBvaljevoBvale of glamorganBvalcourtBuvernet-foursBuppercoBupper daintreeBupper colwallBupper arlingtonBuntermeitingenBunterföhringBuniversiti sains malaysiaBuniversal cityBunidad veracruzanaB	underhillBullapoolB
ukrains'keBukrainian villageB	třebíčBtwentynine palms mcbB	tuscumbiaBtuningenBtsumkweBtrosaB	trofaiachBtrailBtownsendB	tourcoingBtorupBtorroxB
torreviejaBtorrejón del reyBtoptonBtooting becBtonsbergBtonaláB
tombouctouB
titchmarshB
tindivanamBtijerasBthree riversBthorpe-le-sokenB
thornleighBthompsons stationBthe bight settlementsBthackervilleB	tezozomocBtetouanB	terlinguaBtepoztlan centroBtemplepatrickBtemple hills parkB
temperanceBtelese termeBteesdaleB
teddingtonBtecateBtecamachalcoBtaylorvilleBtarcettaBtamesideBtaliesin westBtakakaBtahoe vistaBswitzerlandB	swan lakeBsvedalaBsuwanneeBsurfers paradiseBsurabayaBsunsetBsungai petaniBsundanceBsumpterBsucreBsuceavaB	stutenseeB
sturbridgeBsträngnäsBstrumicaB
streamwoodBstow mariesB	stoutlandBstourport-on-severnBstoney creekB
stoneleighB
stonehavenBstoneham-et-tewkesburyBstone mountainBstone harborBstockton springsBstetsonvilleBsteinhatcheeBstegerBste.-anne-des-montsBstarB
stanthorpeB	stansstadBstandishB	stallingsBst.-titeBst.-raymondBst.-maloBst.-lievens-houtemBst.-bruno-de-montarvilleBst.-apollinaireBst.-affriqueBst. tammanyB
st. landryBst. inigoes shoresBst. croix fallsBspoonerB
spiritwoodBspiddalBspencervilleBspaniard's bayB	southsideBsoutheasternBsoutheast omahaBsouthallBsouth williamsburgBsouth thomastonBsouth tamworthBsouth salt lakeBsouth queensferryBsouth oceansideBsouth oamaruBsouth havenBsouth denmarkBsouth beachBsouth baton rougeBsortlandBsorel-tracyB	sopchoppyBsmiths fallsB
sliedrechtBsladeB
skibbereenBskaneatelesBsittard-geleenB
sister bayBsinaloaBsilverthorneBsilver creek valleyB	sikamineaBsiauliaiBshepherdsvilleB	shapleighBsewaneeBseo de urgelBsenoiaBsellwoodBselkirkBsela pri kamnikuBseguinBseewalchen am atterseeBsedleyB	searsportB
searchmontB	seahousesBseagrove beachBscoresbysundBsch﻿œlcherBschwedenBschwanewedeB	schoharieB
schermbeckBscheboBsaylorvilleBsaxonBsautronB	saukvilleBsapriB	santpedorBsanto stefano quisquinaBsant'agata de' gotiB	sandvikenBsandholmBsandersBsandakanBsan vicenteBsan michele salentinoBsan clemente del tuyúBsan angel zurumucapioBsaltoBsaltillo centroBsalentoBsaguntoBs. jose del caboBrökBryanBrutgersBrussiaBrushdenBrunduBrugby gdBrudaBruckersvilleBruboniaBrubanoBroweBrowanBrostov-na-donuBroslynBroskildeB	rosemèreBrosedaleB
ronceverteBrodeoBrocky riverBrockaway parkBrochelleB	robesoniaBrobertsvilleBroanneB	roachdaleB
river oaksBrising fawnB
rio grandeBrintelnBringebuBrimouskiB	rickreallBrickmansworthB	riccartonB	rhoscolynBreynoldsburgBrepublica mexicanaBremsenBremire-montjolyBreinbekBregentB	redondelaBrecifeB	rearcrossB
rawalpindiB
ravenswoodBrathboneBrangeleyBrainfordB
radolfzellBradlettBqueenstown centralBquapawBqingdaoB	punchbowlBpukalaniBpuerto lopezBpuerto colombiaBprovidence villageBprinceton by the seaBpriceBpresovBpremanaBpoza rica de hidalgoBpowderlyBpotreroBpostbauer-hengBportrushBportreeBporto d'ascoliBporto azzurroBporterBport-daniel-centreBport salernoBport huenemeBport hadlockB	porsgrunnBpoplarvilleBpomeziaBpocomoke cityB
pocahontasBplayhouse squareBpine plainsB	pine bushBpike place marketB
piccadillyBpiadenaB	phoeniciaBphinney ridgeB
phan thietBpfrontenBpewaukeeBpetrozavodskBpershoreBperranporthB
pequannockBpenicuikBpelzerBpeckham ryeB
pecatonicaB
pearisburgBpearblossomBpawlingBpawleys islandBpauB	patagoniaBpaseo artists districtBparma heightsBparktonBpark rapidsBpark forestB	paragouldB	paragonahB	parachuteBpalmar norteBpalma del ríoBpaju-siBpacific cityBpacific beachB	owls headBoutlookBourayB
otorohangaBotleyBotegoBoswaldtwistleBosmanceaBosborne parkBoronocoBoron-la-villeBormeau hillsBorchard lake villageB	orbassanoBoppdalBonancockBomskBolginateB
old tucsonBold colorado cityBokmulgeeBokanoganBokaBohope beachB	offenburgBoddeBoceanoB
ocean viewBoberthalhamBoakhamBnürburgBnutter fortB	nutbourneBnuffieldB
nueva lojaBnouaillé-maupertuisBnottwilBnotting hill gateB	northwoodBnortheast los angelesBnorth white plainsBnorth warwickshire boroughBnorth tulsaBnorth st. paulBnorth smithfieldBnorth saint cloudBnorth phoenixBnorth newport newsBnorth mercedBnorth manchesterBnorth ipswichBnorth ferrisburgBnorth east lincolnshireB
north eastBnorth devon districtBnorth charlotteBnorth brookfieldBnorth benningtonBnorth baltimoreBnorridgeBnorcoB	noordwijkBnokomisBnohnBnoatakBnitraBniskuBnimrodBnimbinBnieuwerkerkBniameyBnewmanBnewhavenB
new tucsonB	new parisBnew harmonyBnew franklinBnew englandBnew cross gateBnew braintreeB
new bostonBneuendettelsauBneuboisB	nescopeckB	nerstrandB	nea makriBnavelgasBnavasotaBnaturitaBnathanBnarrowsBnantwichB
nagoya-shiB	n'djamenaBmölndalBmyrtle pointBmuscodaBmurehwaBmunkedalBmulheim-on-ruhrBmulgoaBmuch wenlockBmouth of wilsonBmount gileadB
mount edenBmount carrollBmount carmelBmount bakerBmotrilB
motherwellBmosulB	mossvilleBmorganBmorangBmoptiBmonticello d'albaBmontecatini termeB	montbazonBmontaukB
montagnolaBmont-de-marsanBmonschauB	monpazierBmonmouthshireB
monetvilleBmondelloBmonclova centroBmonacaBmoldBmohegan lakeBmogoBmoffat beachBmoersBmoapa valleyBmission beachBmioB	minnehahaBmineral de la reformaBmilton-freewaterBmidland parkBmiddlesboroBmethilBmeteghanB	mertztownBmercoglianoBmelvilleBmelrose parkBmeherrinBmegalongBmedomakBmedford lakesBmcnealBmcleodBmckeeBmazara del valloBmatinoB	matiguásBmassenaBmaryportB
marylhurstBmaryboroughBmarlBmarket rasenBmaribyrnongBmarcos juárezB	marcelineBmarburgBmarano di napoliBmantuaB
manitowishBmalverneBmaltaBmalikaBmaleBmajahualBmaizeBmaincyBmainburgBmain street of battle groundBmaggiaBmadrasBmadonna di puianelloB
maasbrachtBmaarssenbroekB
m'chigeengBlünenBlázaro cárdenasBlytton springsBlymanBluzerneBluxorBlutryBluhans'kBlugoB
luchsingenBloyalBlower sydenhamBlower hollowayBlourdesB	louisburgBlorrainvilleBlorcaB	long lakeBlong buckbyBlondon borough of lambethBlondon borough of enfieldBlometaBlohn-ammannseggBlocust groveBlobnyaBllanelliBlittle valleyBlinwoodBlinthicum heightsBlinsteadB	lindwedelB	lindsborgBlinasBlimonestBlimassolBlignano sabbiadoroBliederbach am taunusBleyburnB	lewisboroBleonardoBleobenBlennoxvilleBlenakelBlemvigBleinfelden-echterdingenBleganesB	leesvilleBlecantoBleadwoodBleadville northBle mesnil-garnierBle barcarèsBlaxeyB
laugarvatnBlarsnesB	langhorneB	land parkB
lanckoronaBlancianoBlake ronkonkomaBlake los angelesBlake cowichanBlake arrowheadBlagrangeBlago de guadalupeBlabasaBla vistaB	la verkinBla selva de marBla roche-sur-yonBla plumeBla chapelle-réanvilleB	la centerBl'ange-gardienBkökarBkyzylBkynetonBkungsholmenBkudahuvadhooB	krumvilleBkreuzlingenB	kosciuskoB
kortenakenBkornwestheimBkoperBkoloniaBknapperBklintisBklettgauBkittrellBkitakyushu-shiBkismaayoBkirkintillochBkirkenesBkinloughB$king's lynn and west norfolk boroughB	kincheloeBkewaskumBkewadinBkesennuma-shiBkermitBkerichoBkentish townBkennettB
kealakekuaB
kazakhstanBkawaihaeBkartungBkarrtorpB	karlshamnB	karlsborgBkariongBkapundaBkaolackBkanunguBkanazawa-shiBkalbarriB	kalaupapaBkalaheoBkakumaB
junosuandoBjulianB
jourdantonBjoppaBjolietteBjesiBjelgavaBjayBjapanBjackmanBixtapa zihuatanejoB	ixhuatánBito-shiBisleBishinomaki-shiBiseBirkutskBiraklionBipohBinvercargill northBinver grove heightsB	instituteB	inhassoroBindian orchardBindialanticBilukaBidsteinBidanha-a-novaBichikawaBibarraBhřibinyBhyannis portBhuttonsvilleBhuntingdon valleyB
huntingdonBhugoBhuescaBhueB
hudiksvallBhradec královéB
housatonicBhortenseBhooleB	hoogezandBhonefossB
homer glenBhomburgBholteBholmsundBhollyB	hohenzellBhofsósBhof van twenteBhodgesB
hobe soundBhobbsBhiltonBhillbrowBhighwayB
hightstownBhigh springsBhigganumBhigdonBhesstonBherzogenaurachBherstalBherseltBherrnhutBherring coveBherricksBherbolzheimBhenagarBhellevoetsluisBhelena-west helenaBheidenheim an der brenzB
heidenheimB
heathfieldBheart of lubbockBhazenpotB
hayesvilleBhaxtunBhawkinsBhawiBhawaiian beachesBhavreBhato-builikoB
haslingdenBharrowsmithBharrietB	harpendenBharcourtBharbor cityBharbinBhappyBhansbekeB
hanksvilleB
hammerfestBhammBhamlinBhamamatsu-shiBham lakeBhalton hillsBhainesBhaifaBhaddon heightsB
güglingenBgöhlBgypsumBgwinnB
gwangju-siBguyBguraboBguntersvilleBguingampBguilinBgubbioBguaynaboB	guastallaBguamoteB	guadalupeBguadalajaritaB	grästorpBgrullaBgrinders switchBgrimethorpeBgridleyBgressoney-st.-jeanB	gremsdorfB
grebbestadBgranitiBgrandview heightsB
grand turkBgrand terraceBgrand moundB
grand isleB
gramolazzoBgraffignanoBgosfordBgoreyBgordonBgoorBgoodmanB	goodfieldB
gold riverBgoheung-eupB	glenmuickBglencoeBglen gardnerB	glasloughBgladwinBglade springB
glade parkBgiugliano in campaniaBgilsumB
gillinghamBgilbertsBgiglioBgiffoni valle pianaBgersauBgeringBgentryBgeneral santos cityBgemeinde peineBgeißlingenBgautierBgateshead metropolitan boroughBgassawayBgarza garcíaBgaronsBgarnettBgardnerville ranchosBgangotriBgaillacBgahannaB	fussa-shiBfriedensB
frenchmansBfreilassingB	freevilleBfredericton areaBfraserburghBfranktonBfranconvilleBfrancaBfox lakeBfourasB	four oaksBfoumbanB
fort whiteBfort wainwrightBfort ticonderogaBfort thomasBfort sam houstonBfort nelsonB	fort cobbBformiaBfordsBfordlandB
foldingbroBfoglizzoB	flatwoodsB	flat bushB
fjerdingbyBfishtownBfirgasB	firestoneBfircrestBfiorano modeneseBfieldaleBfiastraBfezBfes al baliB	farr westBfarmerBfalconerBfairview heightsBfairfordBfagerstaBeygalièresB	eye greenBetoyB	esslingenBessendonB	escheburgBerskineB	enkhuizenB
empire bayB
emmitsburgBemerald beachBelzBeloraBellwood cityB
ellisvilleBelliot lakeB	ellenboroBelbertBel dorado springsB	edgewaterBechtBechizen-choBebisuB
eastingtonB
east tawasBeast quogueB
east pointBeast new yorkBeast memphisBeast grand forksBeast brisbaneBeast bostonBearlysvilleB	earlvilleB	dyersburgBduryeaBdunwoodyBdullesBdubai world centralBduarteBdrydenB	drummoyneBdrainBdowntown santa barbaraBdowntown renoBdowntown red wingBdoroteaBdonoraBdoncaster metropolitan boroughBdonauwörthBdomžaleBdolbeauB
doetinchemBdochampsBdobsonBdmitrovBdilsen-stokkemBdieburgB
dharmshalaB	dharmsalaBdewsburyBdewey beachBdevils lakeBdesign districtBdeshlerBdendronBdelphosBdelmontBdelhiBdelanoBdel marBdeeringBdawson creekBdavidsonBdattelnB	dansvilleB	danielsonBdania beachBdandenong northBdahlgrenBdahabBdaculaB	cárdenasBcwmbranBcullodenBcryslerBcrowleyBcrowboroughBcroton hudsonBcroswellBcrosbyBcranburyBcranberry islesBcoyoacan centroBcovent gardenB
courcellesB
costa ricaBcorshamBcorbeil-essonnesBcopper mountainBcopper harborB	cookstownBcookB
constantiaBconnellys springsBconkalBcomstock parkBcompong baiBcomerioBcolonia romaB
colmesneilBcollesalvettiBcolborneBcoinjockBcohassetB
cochrantonBcobáB	coalvilleBcoacalcoBclunBcliveB	clitheroeB	clintwoodBclifton springsB	clendeninBclearwater beachB	clarendonBclacton-on-seaBcividale del friuliBcitrus ridgeBcirencesterBcidraBchurchB
chungju-siBchugiakBchipman parishBchioggiaBchilmarkBchichigalpaBchetwyndB	chermsideBchef-boutonneBchavanayBchaumont-sur-loireB	chauchinaBcharltonBchappaquiddickBchalmitaB	chaguanasBcessnockB	cervinaraB	cernobbioB	cerignolaBcentro tlaxcalaBcentral manitoulinBcentral harlemB
centerviewB
cedarvilleBcauayanB	catawissaBcataractBcastelnuovo don boscoBcastanheira de pêraBcasaresBcarverB
carrsvilleBcarrollwoodB
caravaggioBcanyonvilleBcaneadeaB	canalportB
campobelloBcameronBcalzada de calatravaBcalvertBcalico rockBcalabriaBcahorsBcaguasBcagliBcacheBcabotBbösteBbyramBbyersBbuzzards bayBbusto garolfoBbussigny-près-lausanneBburwashBburton upon trentBburntislandBburnetBbulfordBbukit batokBbuena vistaBbrüggenBbrutonBbrush creekBbrunswick headsBbrunerB
brownfieldBbroomfield gardensB	brookstonB	brooklawnB
bromsgroveBbrockwayBbrockleyB
broadbeachB
broadalbinBbroad ripple villageBbrisighellaB
brightmoorB	bridgetonBbrewerB	bressuireBbreeBbrechinBbrandeB
branchlandBbrackenridgeBboxmeerBboweryBbournemouth boroughB	bourgogneBboskoopBboscombeBbornaBboltañaBbohemiaBbogue chittoBbodenseeBbodegaBboca del ríoB
blue riverBblountvilleBbloomington ferryBbloisBblairsvilleBbishopBbirchrunvilleB
billericayBbilgorajB	biklabitoBbiggersvilleBbig pine keyBbig pineBbig bear cityBbielB	bickletonB	bialystokBbhutanBbhowaliBbethnal greenBbessemer cityBbessemerBbesozzoB
berriedaleB	bernvilleBbernardstonBberkel en rodenrysBbentleigh eastBbensheimBbensenvilleBbennekomBbenasqueBbenallaBbelpreBbelmont shoreB	bellvilleBbellariaBbella coolaBbelfortBbelfeldBbeldingB	beershebaB	beenleighBbeebeBbeclersBbechtelsvilleBbecclesBbeaverBbeauvaisBbeatriceB
beardstownB	bayswaterBbayardB
baumholderB
battlefordB
battenbergB
basseterreB	bass lakeBbasking ridgeBbasingstoke and deane boroughBbartowBbartonvilleB	barrytownBbarranquillaBbarlettaB	barilocheBbargaintownBbanjulB
bangangtéB	bandhagenBbancroftBban rangsitB
ballymoneyBballwinB
balestrinoBbailly-romainvilliersBbaileyvilleBbaie-st.-paulB	bahir darB
bad vilbelBbad pyrmontBbac haBbaarle-nassauBañover de tajoBaztlanBayutlaBaxtonBawendawBavondale estatesBaversaB
australindBaustinvilleBausiaitB
aurangabadBaullaBaukraBaubagneBatotonilco de tula centroBatmoreBatlantic highlandsBatcoBasoloBasmalı mescitBaskBascotBaschaffenburgBarvikaBarnedoBarnaudvilleBarmadaleBarkhangel'skBarizonaB
arctic bayBarbroathBapricenaBapolloBantelopeBannotto bayBanjarBangmassalikBangletBangelBandiceBanahuacBameliaBamawalkBamandaB	altavistaBalsipBalmstorfBalmonteBallerødB
allenstownBalhaurín el grandeB	algonquinBalexander cityB
aldergroveBalciraBalbert parkB
alba iuliaBahlenBagurainB
agua dulceBadmastonBadairBaccordBabercrombieB97707B97478B96761B95407B95340B93561B93536B93041B92660B91746B91730B91356B91205B90731B86409B85304B84103B84010B82001B80918B80911B79603B78526B77550B77318B77005B76048B76039B75402B75087B72765B72764B70809B70433B68601B64117B53188B53144B50613B46953B46228B45250B45223B43611B43202B39705B39440B37303B37056B32837B32746B32643B32541B30161B30096B29501B28655B28144B23831B22901B22152B20772B20132B19422B15212B13850B12534B11101B10303B10022B07006B05301B04469B02860B's-heerenbergBzumbrotaBzonhovenByishun new townB	yamaguchiByaleB
xochimilcoB
wyomissingBwynnumB	wynnewoodB	wymondhamB	wye millsBwrenthamB
wolf creekBwittenbergenBwisconsin dellsBwilhelmshavenBwien 15BwiehlBwhighamBwestmeadBwest valley cityB
west tampaB
west salemBwest hurleyBwest berlinB	wellsburgBwautomaBwashington twpBwalsrodeBwallsendB
waite parkBwailuaBwadenaBwaddellBvétrozBvissenbjergBvilletaBvillanova mondovìBvillafranca di veronaBvilla de reyesBvignola-falesinaBvietnamB
vestfossenBvesoulBvardeBvalkenswaardBvaldagnoB	val-davidButilaBurb. fuerteventura golf-clubBupper manhattanBungerB
unalakleetBukmergeBtultepecB
tulancingoBtrierBtreasure islandBtraben-trarbachB
tower hillBtour-en-sologneB
toongabbieBtigraBthree forksB	thornburyBthompsontownBthemarBthameBteslin riverBtengenBtejnBtehamaBtaysideB	targu jiuBtaoyuan cityBtamaquaBtaltyBtaihapeBtaft heightsBtacubayaBtabananBswartz creekBsuzhouBsuttons bayBsunyaniB
sun valleyBsulzBsulphur springsBstoumontBstorringtonB	stonyfordB
stoneyburnBstoney houseBsteep fallsBstarzachBst. veit an der glanBst. stephens churchBst. ingbertB	st petersBst lucia parkBst johnsB	st arnaudB	squaw gapBsouth yunderupBsouth streetBsouth ridingBsouth pointBsouth perthBsouth mission beachBsouth invercargillBsouth hartwickBsouth gloucestershireB	smithmillBslottsskogenB	slaughterBsittardBsipbachzellB	silveradoBsiatistaBshirazB	shinnstonBshinnecock hillsB
shelly bayBsetauketB	senteradaBsendaiBsemmesBseaforthB
scottsburgBscott depotB	schwabachBschellinkhoutB	santurtziBsandy ridgeBsandbachBsan cristóbal verapazB
samothrakiBsaint cloud manorB	saarlouisB
rural hallB'royal borough of windsor and maidenheadBrovigoB
roslindaleBrosemontBrockville centreBrock streamBroberts creekBroaring riverBroaming shoresB
rivesvilleBriver northB
rineyvilleBriddleBrichardson heightsBrecklinghausenBraymond terraceBranikhetBranders north eastBquintonBquesnelBqueen charlotteB	pélussinBputnam valleyBpuerto morelosBprestonsburgB	prague 10B	portvilleBporticiBportage lakesB
port blairBporlockBpointe-claireBpinonBpilar de la horadadaBpierrefondsBpianello val tidoneBpeterborough cityBpeppangeB	pennsboroBpenneBpelican rapidsBpeillacB
peacehavenB	pawcatuckB
pasco westB
oudenaardeBortingBorléansB
orem northBopoleB
oosterhoutBoliviaBolgiate comascoB	oldcastleBold oakvilleBold hoplandB	ohio cityBodense northBodense mBnoshiro-shiB	northwichBnorth veniceBnorth lophamBnopalucan de la granjaBneyagawa-shiBnewkirkB
new marketBnew jersey oaksBnew hollandBneckargemündBnanterreBnakuspBmülheimBmusashimurayama-shiBmurrysvilleBmurphysBmuranoBmulwalaB
mowrystownBmoroccoBmorleyB	moose jawBmontoneBmontmerle-sur-saôneB	monte rioBmollet del vallèsBmjölbyB	mira lomaB	millemontB	mill hallBmilford havenBmilduraBmiekojärviBmiddle villageBmid floridaBmerléacB	merelbekeBmerateB	mcveytownBmcmurrayBmccammonB	mazarrónBmatag-obBmartosBmartha lakeBmarsdenBmarktredwitzB
marin cityBmaple fallsBmanamaBmabouBlylesBlykensB	lourmarinB	lopatcongBlongvicBlong grove valleyBloletaBllicoBlidcombeB	libramontB
les landesBles coteauxBlemon groveBleganésBle havreBlangloisBlampasasB	lakefieldB	lake elmoBlake dunmoreB	lahnsteinB	laguépieBlac qui parleBla selva beachBkuwait cityBkulluBkosiceBknivstaBkisarazu-shiBkioskB	kingstreeBkingaroyB	king cityBkilnBkielceBkeymarBkewaneeB
kensingtonBkeego harborBkatwijkBkalonaBjundiaiBjoyceBjoseph cityB	jonestownBjoignyBjohnson valleyBjessheimBjelsBjastrzębie-zdrójB	james bayB	itta benaBitalyBissumBisle of collBisle la motteBisland fallsBisfjord på svalbardBimstBilkleyBijlstB	hultsfredBhowaldB
hortobágyBhongoBhokianga northBhighland fallsBhesperusBherneBhemsbachBhelvetiaBhead of jeddoreBhaßlochBhawthorn woodsBharrodsburgBhardthausen am kocherBhammondsportB	hallsbergB	hagåtñaBhagueB	gönnheimB
gyöngyösBguwahatiB
guttenbergBguspiniBguisboroughBgrängesbergBgrimstadB	griesheimB	greentownB
gray courtBgrand mont blancBgrand mananBgoreBgomez palacio centroB
gold beachB	goffstownB	glen headBgirdwoodBgemeinde bischofsheimB
gelnhausenBgeboltskirchenBgas cityBgambierBgalliateBfürstenfeldB
fürstenauBfuldaB	fruitlandBfronteraBfreudenstadtBfrenchs forestBfreedomBfoxtonB	fox pointBfowlerBfort st. jamesBforemanBflyingeBflorianopolisBflagyBflagler beachB	fern parkBfelthamBfeldkirchenBfarrellBfallsBfaleroneBepsilonBemporiumBelmoreBel puerto de santa maríaB	el portalBel morroB	el cuervoBel campelloBejuraBegmond aan zeeB	edgartownBeasternBeast rockfordBeast mayportBeast kilbrideBeast herkimerBearlhamB
eagle-vailB
eagle rockBdwyranBdulceBduevilleBdrymenBdowntown schenectadyBdoornBdjuraBdisentis/mustérBdehradunBdatelandBdarwin centralBdamariscottaB	daly cityB	currituckBcuritibaBcupelloB	cubnezaisBcryer creekBcrothersvilleBcrevoladossolaBcreilBcrandonB
craftsburyBcoventry walsgrave triangleBcorydonB
corgémontBcordes-sur-cielBcooks pointBcolomaBcolneBcoimbraBcogollo del cengioB
codringtonBcoatsBclementiBclarionBchilpancingoB
chestertonBchelyabinskBchaumontBchapmanBchapinBcedar brookBcastiglione della pescaiaBcastaicBcasanovaBcarougeBcardiff bayBcaptivaBcanzoB
caneyvilleBcamargoBcalarcáBcalamusBbyron centerB	butterleyBbuis-les-baronniesBbudaBbuckheadBbrynmawrBbrunswick eastBbronzevilleBbrittBbristowBbrierBbridge cityBbowenBbonney lakeB	bondvilleB	bondurantBbompasBboleroB
bluff parkBblue dome districtBblowing rockB
blaubeurenBbispgårdenBbischofsheimBbibbienaBbettws newyddBberthoudB
berryvilleBberkleyBberkhamstedB	bergenhusBbenestadBbel air northBbeggsB
beckenriedBbeauharnoisBbaños y mendigoBbay center junctionBbastogneBbalsall commonBballyvaghanBbaliBbaguio cityBazzano decimoBaztecBayasolukBavaBascherslebenBaronaBarmonaBardeaBamboyBalmendralejoBalmaden valleyBalmaB	albertsonBakkarBainringBaieaBaddorBaberdareB99352B98225B92407B92345B91762B91744B89496B82601B80995B78752B78363B75662B75010B73160B63114B60483B59602B56560B48302B43055B37814B33021B32512B30518B22911B21842B19092B11226B08757B04901BüberlingenBårstaBzapotlanejoByeaddissBwrightsvilleBwoodendBwittenbergeBwitrogoszczBwintersB
williamsonBwillets pointBwilhermsdorfBwiesmoorBwetzikonBwarrimooBwarrenvilleBwan chaiB
wallingtonBwaikatoBvoorhoutBvieux bouchervilleBviersenBvergasBvarazzeBvallesaccardaBuzwilBuribiaB	uddevallaBubriqueBtyendinaga mohawk territoryBtujungaBtoppingBtiranaB	tidewaterBteziutlan centroB
tepatitlanBtel binyaminBtarlandBtannersvilleBtall timbersBtai po old marketBsławkiBsão filipeB
sunnyslopeBsunneBsucé-sur-erdreBsteubenB	stamsriedBstadskanaalBst.-quentinBst.-paul-de-la-croixBspringervilleBsouth nanaimoBsnoqualmie passBskiathosB
shrivenhamBshodoshima-choBshimaneBshelburnBseydisfjoerdurB
seybaplayaB	serangoonBselby districtBscotts valleyB	scappooseBsawstonBsassuoloBsan po kongBsan benedetto del trontoBsamsunB	saltcoatsBsaleB	rushworthBroveretoBrouensB	rose hillBroscreaBronseBroissy-en-brieBrobertsdaleBrietiBribeBreitanoBreggio di calabriaBredaBreanoBrastokeBrainierBquartu sant'elenaBpowell riverBplantsvilleBpiney creekBpiandimeletoBpetareBpaxtonBparrishBoro-medonteB
oracabessaBoleggioBolaya herreraB
oak bluffsBnærumB
nove zamkyBnorwellB	northlandBnorth readingBnorridgewockBnomeBnevisBnemeaB
nelson bayBmödlingB	muscatineBmount molloyBmormon lakeBmorganfieldB
monterealeBmolinoBmodicaBmiami gardensB
meyersdaleBmcdowellB	mcclellanBmccarthyBmarkleevilleB	maracaiboB	manzanitaBmanningtreeBmanlleuBmamouBmadangBmacerataBlörrachBlysekilBlyckseleBlutherville timoniumBluckenwaldeB
longniddryB
lone butteBlockeBlloret de marBlibbyBlelandBlegaspiBlasalleB	lanzaroteBlambertvilleBlagunaBla réunionBkungsängenB	krong kepB	kostenetsBkomotiniBkloofBkirkcudbrightBkelowna southBjordanB
jingdezhenBiveyB
huehuetocaBhoosick fallsBhirtzfeldenBhippachBhighland lakesBhemBhellerupB	hazelwoodB
hazelbrookBhatboroBhaguenauBhaachtBguarujaB	grünwaldBgräfelfingBgroßaitingenBgrosbliederstroffBgolfitoBglenrockBglenmontBgibsonvilleBgibslandBgarstangBgarnervilleBgambaisBgaggenauBfröndenbergBfrederiksværkBfrancofonteBfléville-devant-nancyBfinglasBfidenzaB	felixdorfBfara in sabinaBfairburnBeudloBenglishtownBelmsdaleBelk run heightsBelbeB	eilenburgB
eggelsbergBdunmoreBdunhamBdoubsB	dire dawaB	dinwiddieBdiesdorfB	desbaratsBcrystal palaceB
crouch endBcrevediaBcraigBcopperopolisB
columbianaBcolrainB
coal groveB
clarksboroBclarkesvilleBcharlotte amalieBchandlers fordBchamonix-mont-blancBcencenighe agordinoBceloBceljeBcayeyBcasaranoBcarcassonneB
californiaBbutnerBbutereBbrossardBbrobyBbraye-sur-maulneBbradleyBboxfordBbovinaBbordonBboolarooBbondi junctionBbishopvilleBbiolB	besançonBbenito juarezB	beckenhamBbear valley springsBbaywood-los ososBbayovarBbaulkham hillsB	barandudaBbandar puchong utamaBbaesrodeBback of the yardsB	australiaBaubenasBaschauB	arringtonB	ardrossanBaragonBansonBankaraBamsterdam zuidoostB	albuixechB	agrigentoB	acharacleB80279B76097B75209B75002B60605B53142B48047B45298B43302B36830B32506
??
Const_21Const*
_output_shapes	
:?]*
dtype0	*??
value??B??	?]"??                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      
?
Const_22Const*
_output_shapes	
:?*
dtype0*?
value?B??BwebBcomedyBgraphic novelsB
photobooksBsoftwareBdrinksBpopBgadgetsBapparelBrestaurantsBgraphic designBdramaBhardwareBplaysBplaying cardsBsmall batchB	art booksBclassical musicBelectronic musicBmixed mediaB	webseriesBmobile gamesBpaintingBnarrative filmBhip-hopB
public artBappsBworld musicBperformance artBdigital artBfood trucksBjazzBperformancesB	animationB	sculptureBjewelryBhorrorBpoetryBwoodworkingBanthologiesBdiyB	wearablesBfarmsBpeopleB	webcomicsBmusicalBfootwearBprintBfaithBperiodicalsBspacesBdiy electronicsBexperimentalB	festivalsBfine artB
live gamesBsoundBradio and podcastsB
televisionBacademicBready-to-wearBeventsBaudioByoung adultBscience fictionB	thrillersB	cookbooksBmetalBconceptual artBveganBplacesBactionB
journalismB3d printingBmusic videosBarchitectureBnatureBrandbBrobotsBvideoBzinesBchildrenswearBcandlesBinstallationsBcamera equipmentB	immersiveBceramicsBgaming hardwareB	calendarsBpunkBinteractive designB
stationeryBfantasyBtextilesBliterary journalsBfamilyBpuzzlesBflightBspace explorationBfarmers marketsBcommunity gardensBmovie theatersBanimalsBprintingBbluesBcivic designBkidsBphotoBcoutureBfabrication toolsBknittingBmakerspacesB	video artB	workshopsBromanceBbaconBcrochetBpotteryB
embroideryBglassBlatinBtranslationsBliterary spacesBpet fashionBtoysB
typographyBresidenciesBweavingBletterpressBquiltsBsocial practiceBchiptuneB	taxidermy
?
Const_23Const*
_output_shapes	
:?*
dtype0	*?
value?B?	?"?                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       
?
Const_24Const*
_output_shapes
:*
dtype0*^
valueUBSBUSDBGBPBEURBCADBAUDBMXNBSEKBHKDBDKKBNZDBCHFBSGDBJPYBNOKBPLN
?
Const_25Const*
_output_shapes
:*
dtype0	*?
value?B?	"x                                                        	       
                                          
?
Const_26Const*
_output_shapes
:*
dtype0	*u
valuelBj	"`              
                            	                                          
?
Const_27Const*
_output_shapes
:*
dtype0	*u
valuelBj	"`                                                        	       
                     
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_18Const_19*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_5170184
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_5170189
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_20Const_21*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_5170197
?
PartitionedCall_1PartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_5170202
?
StatefulPartitionedCall_2StatefulPartitionedCallhash_table_2Const_22Const_23*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_5170210
?
PartitionedCall_2PartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_5170215
?
StatefulPartitionedCall_3StatefulPartitionedCallhash_table_3Const_24Const_25*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_5170223
?
PartitionedCall_3PartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_5170228
?
StatefulPartitionedCall_4StatefulPartitionedCallhash_table_4Const_26Const_27*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_5170236
?
PartitionedCall_4PartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_5170241
?
NoOpNoOp^PartitionedCall^PartitionedCall_1^PartitionedCall_2^PartitionedCall_3^PartitionedCall_4^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2^StatefulPartitionedCall_3^StatefulPartitionedCall_4
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?
AMutableHashTable_1_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable_1*
Tkeys0*
Tvalues0	*%
_class
loc:@MutableHashTable_1*
_output_shapes

::
?
AMutableHashTable_2_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable_2*
Tkeys0*
Tvalues0	*%
_class
loc:@MutableHashTable_2*
_output_shapes

::
?
AMutableHashTable_3_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable_3*
Tkeys0*
Tvalues0	*%
_class
loc:@MutableHashTable_3*
_output_shapes

::
?
AMutableHashTable_4_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable_4*
Tkeys0	*
Tvalues0	*%
_class
loc:@MutableHashTable_4*
_output_shapes

::
?M
Const_28Const"/device:CPU:0*
_output_shapes
: *
dtype0*?L
value?LB?L B?L
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-0

layer-9
layer_with_weights-1
layer-10
layer_with_weights-2
layer-11
layer_with_weights-3
layer-12
layer_with_weights-4
layer-13
layer_with_weights-5
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
* 
* 
* 
* 
* 
* 
* 
* 
L
 lookup_table
!token_counts
"	keras_api
#_adapt_function*
L
$lookup_table
%token_counts
&	keras_api
'_adapt_function*
L
(lookup_table
)token_counts
*	keras_api
+_adapt_function*
L
,lookup_table
-token_counts
.	keras_api
/_adapt_function*
L
0lookup_table
1token_counts
2	keras_api
3_adapt_function*
?
4
_keep_axis
5_reduce_axis
6_reduce_axis_mask
7_broadcast_shape
8mean
8
adapt_mean
9variance
9adapt_variance
	:count
;	keras_api
<_adapt_function*
?
=
_keep_axis
>_reduce_axis
?_reduce_axis_mask
@_broadcast_shape
Amean
A
adapt_mean
Bvariance
Badapt_variance
	Ccount
D	keras_api
E_adapt_function*
?
F
_keep_axis
G_reduce_axis
H_reduce_axis_mask
I_broadcast_shape
Jmean
J
adapt_mean
Kvariance
Kadapt_variance
	Lcount
M	keras_api
N_adapt_function*
?
O
_keep_axis
P_reduce_axis
Q_reduce_axis_mask
R_broadcast_shape
Smean
S
adapt_mean
Tvariance
Tadapt_variance
	Ucount
V	keras_api
W_adapt_function*
?
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses* 
?

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses*
?
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j_random_generator
k__call__
*l&call_and_return_all_conditional_losses* 
?

mkernel
nbias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses*
?
uiter

vbeta_1

wbeta_2
	xdecay
ylearning_rate^m?_m?mm?nm?^v?_v?mv?nv?*

85
96
:7
A8
B9
C10
J11
K12
L13
S14
T15
U16
^17
_18
m19
n20*
 
^0
_1
m2
n3*
* 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

serving_default* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resource<
table3layer_with_weights-0/token_counts/.ATTRIBUTES/table*
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resource<
table3layer_with_weights-1/token_counts/.ATTRIBUTES/table*
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resource<
table3layer_with_weights-2/token_counts/.ATTRIBUTES/table*
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resource<
table3layer_with_weights-3/token_counts/.ATTRIBUTES/table*
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resource<
table3layer_with_weights-4/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 
RL
VARIABLE_VALUEmean4layer_with_weights-5/mean/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEvariance8layer_with_weights-5/variance/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEcount5layer_with_weights-5/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
TN
VARIABLE_VALUEmean_14layer_with_weights-6/mean/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE
variance_18layer_with_weights-6/variance/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEcount_15layer_with_weights-6/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
TN
VARIABLE_VALUEmean_24layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE
variance_28layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEcount_25layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
TN
VARIABLE_VALUEmean_34layer_with_weights-8/mean/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE
variance_38layer_with_weights-8/variance/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEcount_35layer_with_weights-8/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

^0
_1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
f	variables
gtrainable_variables
hregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_3/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_3/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

m0
n1*

m0
n1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
_
85
96
:7
A8
B9
C10
J11
K12
L13
S14
T15
U16*
?
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
17
18
19
20
21*

?0
?1*
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

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_54keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
?{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_3/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_3/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_3/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_3/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
serving_default_categoryPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
|
serving_default_city_namePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
z
serving_default_countryPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
{
serving_default_currencyPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
 serving_default_days_of_campaignPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
~
serving_default_descriptionPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
w
serving_default_goalPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????

serving_default_launch_monthPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????

serving_default_project_namePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_5StatefulPartitionedCallserving_default_categoryserving_default_city_nameserving_default_countryserving_default_currency serving_default_days_of_campaignserving_default_descriptionserving_default_goalserving_default_launch_monthserving_default_project_name
hash_tableConsthash_table_1Const_1hash_table_2Const_2hash_table_3Const_3hash_table_4Const_4Const_5Const_6Const_7Const_8Const_9Const_10Const_11Const_12dense_2/kerneldense_2/biasdense_3/kerneldense_3/bias**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_5169524
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_6StatefulPartitionedCallsaver_filename?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1AMutableHashTable_1_lookup_table_export_values/LookupTableExportV2CMutableHashTable_1_lookup_table_export_values/LookupTableExportV2:1AMutableHashTable_2_lookup_table_export_values/LookupTableExportV2CMutableHashTable_2_lookup_table_export_values/LookupTableExportV2:1AMutableHashTable_3_lookup_table_export_values/LookupTableExportV2CMutableHashTable_3_lookup_table_export_values/LookupTableExportV2:1AMutableHashTable_4_lookup_table_export_values/LookupTableExportV2CMutableHashTable_4_lookup_table_export_values/LookupTableExportV2:1mean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOpmean_1/Read/ReadVariableOpvariance_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpmean_2/Read/ReadVariableOpvariance_2/Read/ReadVariableOpcount_2/Read/ReadVariableOpmean_3/Read/ReadVariableOpvariance_3/Read/ReadVariableOpcount_3/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_5/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst_28*8
Tin1
/2-											*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_5170439
?
StatefulPartitionedCall_7StatefulPartitionedCallsaver_filenameMutableHashTableMutableHashTable_1MutableHashTable_2MutableHashTable_3MutableHashTable_4meanvariancecountmean_1
variance_1count_1mean_2
variance_2count_2mean_3
variance_3count_3dense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount_4total_1count_5Adam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_5170563??
?
H
__inference__creator_5169899
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_896632*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
.
__inference__destroyer_5170026
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
.
__inference__destroyer_5169909
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_5169844

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
í
?
D__inference_model_1_layer_call_and_return_conditional_losses_5169004
country
	city_name
category
currency
launch_month	
goal
days_of_campaign
description
project_name>
:string_lookup_4_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_4_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_6_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_6_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_7_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_7_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_1_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_1_none_lookup_lookuptablefindv2_default_value	
normalization_4_sub_y
normalization_4_sqrt_x
normalization_5_sub_y
normalization_5_sqrt_x
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x"
dense_2_5168992:	?_2
dense_2_5168994:2!
dense_3_5168998:2
dense_3_5169000:
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?.integer_lookup_1/None_Lookup/LookupTableFindV2?-string_lookup_4/None_Lookup/LookupTableFindV2?-string_lookup_5/None_Lookup/LookupTableFindV2?-string_lookup_6/None_Lookup/LookupTableFindV2?-string_lookup_7/None_Lookup/LookupTableFindV2?
-string_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_4_none_lookup_lookuptablefindv2_table_handlecountry;string_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_4/IdentityIdentity6string_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_4/bincount/ShapeShape!string_lookup_4/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_4/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_4/bincount/ProdProd'string_lookup_4/bincount/Shape:output:0'string_lookup_4/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_4/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_4/bincount/GreaterGreater&string_lookup_4/bincount/Prod:output:0+string_lookup_4/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_4/bincount/CastCast$string_lookup_4/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_4/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_4/bincount/MaxMax!string_lookup_4/Identity:output:0)string_lookup_4/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_4/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_4/bincount/addAddV2%string_lookup_4/bincount/Max:output:0'string_lookup_4/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_4/bincount/mulMul!string_lookup_4/bincount/Cast:y:0 string_lookup_4/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MaximumMaximum+string_lookup_4/bincount/minlength:output:0 string_lookup_4/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MinimumMinimum+string_lookup_4/bincount/maxlength:output:0$string_lookup_4/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_4/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_4/bincount/DenseBincountDenseBincount!string_lookup_4/Identity:output:0$string_lookup_4/bincount/Minimum:z:0)string_lookup_4/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handle	city_name;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_5/bincount/ShapeShape!string_lookup_5/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_5/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_5/bincount/ProdProd'string_lookup_5/bincount/Shape:output:0'string_lookup_5/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_5/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_5/bincount/GreaterGreater&string_lookup_5/bincount/Prod:output:0+string_lookup_5/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_5/bincount/CastCast$string_lookup_5/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_5/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_5/bincount/MaxMax!string_lookup_5/Identity:output:0)string_lookup_5/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_5/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_5/bincount/addAddV2%string_lookup_5/bincount/Max:output:0'string_lookup_5/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_5/bincount/mulMul!string_lookup_5/bincount/Cast:y:0 string_lookup_5/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MaximumMaximum+string_lookup_5/bincount/minlength:output:0 string_lookup_5/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MinimumMinimum+string_lookup_5/bincount/maxlength:output:0$string_lookup_5/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_5/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_5/bincount/DenseBincountDenseBincount!string_lookup_5/Identity:output:0$string_lookup_5/bincount/Minimum:z:0)string_lookup_5/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????]*
binary_output(?
-string_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_6_none_lookup_lookuptablefindv2_table_handlecategory;string_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_6/IdentityIdentity6string_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_6/bincount/ShapeShape!string_lookup_6/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_6/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_6/bincount/ProdProd'string_lookup_6/bincount/Shape:output:0'string_lookup_6/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_6/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_6/bincount/GreaterGreater&string_lookup_6/bincount/Prod:output:0+string_lookup_6/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_6/bincount/CastCast$string_lookup_6/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_6/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_6/bincount/MaxMax!string_lookup_6/Identity:output:0)string_lookup_6/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_6/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_6/bincount/addAddV2%string_lookup_6/bincount/Max:output:0'string_lookup_6/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_6/bincount/mulMul!string_lookup_6/bincount/Cast:y:0 string_lookup_6/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MaximumMaximum+string_lookup_6/bincount/minlength:output:0 string_lookup_6/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MinimumMinimum+string_lookup_6/bincount/maxlength:output:0$string_lookup_6/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_6/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_6/bincount/DenseBincountDenseBincount!string_lookup_6/Identity:output:0$string_lookup_6/bincount/Minimum:z:0)string_lookup_6/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
-string_lookup_7/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_7_none_lookup_lookuptablefindv2_table_handlecurrency;string_lookup_7_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_7/IdentityIdentity6string_lookup_7/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_7/bincount/ShapeShape!string_lookup_7/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_7/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_7/bincount/ProdProd'string_lookup_7/bincount/Shape:output:0'string_lookup_7/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_7/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_7/bincount/GreaterGreater&string_lookup_7/bincount/Prod:output:0+string_lookup_7/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_7/bincount/CastCast$string_lookup_7/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_7/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_7/bincount/MaxMax!string_lookup_7/Identity:output:0)string_lookup_7/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_7/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_7/bincount/addAddV2%string_lookup_7/bincount/Max:output:0'string_lookup_7/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_7/bincount/mulMul!string_lookup_7/bincount/Cast:y:0 string_lookup_7/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MaximumMaximum+string_lookup_7/bincount/minlength:output:0 string_lookup_7/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MinimumMinimum+string_lookup_7/bincount/maxlength:output:0$string_lookup_7/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_7/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_7/bincount/DenseBincountDenseBincount!string_lookup_7/Identity:output:0$string_lookup_7/bincount/Minimum:z:0)string_lookup_7/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
.integer_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_1_none_lookup_lookuptablefindv2_table_handlelaunch_month<integer_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_1/IdentityIdentity7integer_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_1/bincount/ShapeShape"integer_lookup_1/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_1/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_1/bincount/ProdProd(integer_lookup_1/bincount/Shape:output:0(integer_lookup_1/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_1/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_1/bincount/GreaterGreater'integer_lookup_1/bincount/Prod:output:0,integer_lookup_1/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_1/bincount/CastCast%integer_lookup_1/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_1/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_1/bincount/MaxMax"integer_lookup_1/Identity:output:0*integer_lookup_1/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_1/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_1/bincount/addAddV2&integer_lookup_1/bincount/Max:output:0(integer_lookup_1/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_1/bincount/mulMul"integer_lookup_1/bincount/Cast:y:0!integer_lookup_1/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MaximumMaximum,integer_lookup_1/bincount/minlength:output:0!integer_lookup_1/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MinimumMinimum,integer_lookup_1/bincount/maxlength:output:0%integer_lookup_1/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_1/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_1/bincount/DenseBincountDenseBincount"integer_lookup_1/Identity:output:0%integer_lookup_1/bincount/Minimum:z:0*integer_lookup_1/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(i
normalization_4/subSubgoalnormalization_4_sub_y*
T0*'
_output_shapes
:?????????]
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*
_output_shapes

:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????u
normalization_5/subSubdays_of_campaignnormalization_5_sub_y*
T0*'
_output_shapes
:?????????]
normalization_5/SqrtSqrtnormalization_5_sqrt_x*
T0*
_output_shapes

:^
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:?????????p
normalization_6/subSubdescriptionnormalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????q
normalization_7/subSubproject_namenormalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:??????????
concatenate_1/PartitionedCallPartitionedCall/string_lookup_4/bincount/DenseBincount:output:0/string_lookup_5/bincount/DenseBincount:output:0/string_lookup_6/bincount/DenseBincount:output:0/string_lookup_7/bincount/DenseBincount:output:00integer_lookup_1/bincount/DenseBincount:output:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????_* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_5168199?
dense_2/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_2_5168992dense_2_5168994*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_5168212?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_5168320?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_3_5168998dense_3_5169000*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_5168236w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall/^integer_lookup_1/None_Lookup/LookupTableFindV2.^string_lookup_4/None_Lookup/LookupTableFindV2.^string_lookup_5/None_Lookup/LookupTableFindV2.^string_lookup_6/None_Lookup/LookupTableFindV2.^string_lookup_7/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2`
.integer_lookup_1/None_Lookup/LookupTableFindV2.integer_lookup_1/None_Lookup/LookupTableFindV22^
-string_lookup_4/None_Lookup/LookupTableFindV2-string_lookup_4/None_Lookup/LookupTableFindV22^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV22^
-string_lookup_6/None_Lookup/LookupTableFindV2-string_lookup_6/None_Lookup/LookupTableFindV22^
-string_lookup_7/None_Lookup/LookupTableFindV2-string_lookup_7/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	country:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:QM
'
_output_shapes
:?????????
"
_user_specified_name
category:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:MI
'
_output_shapes
:?????????

_user_specified_namegoal:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
?
__inference_restore_fn_5170095
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
<
__inference__creator_5169914
identity??
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name975125*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?

?
D__inference_dense_2_layer_call_and_return_conditional_losses_5168212

inputs1
matmul_readvariableop_resource:	?_2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?_2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????_: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????_
 
_user_specified_nameinputs
?
?
__inference_save_fn_5170141
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
J__inference_concatenate_1_layer_call_and_return_conditional_losses_5168199

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8concat/axis:output:0*
N	*
T0*(
_output_shapes
:??????????_X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:??????????_"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:??????????]:??????????:?????????:?????????:?????????:?????????:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????]
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
__inference__creator_5169965
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_975158*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
.
__inference__destroyer_5169942
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
.
__inference__destroyer_5170041
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_51701849
5key_value_init935861_lookuptableimportv2_table_handle1
-key_value_init935861_lookuptableimportv2_keys3
/key_value_init935861_lookuptableimportv2_values	
identity??(key_value_init935861/LookupTableImportV2?
(key_value_init935861/LookupTableImportV2LookupTableImportV25key_value_init935861_lookuptableimportv2_table_handle-key_value_init935861_lookuptableimportv2_keys/key_value_init935861_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init935861/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2T
(key_value_init935861/LookupTableImportV2(key_value_init935861/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?'
?
__inference_adapt_step_5169782
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?IteratorGetNext?ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?add/ReadVariableOp?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2	k
CastCastIteratorGetNext:components:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????h
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeanCast:y:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:?
moments/SquaredDifferenceSquaredDifferenceCast:y:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 M
ShapeShapeCast:y:0*
T0*
_output_shapes
:*
out_type0	Z
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: M
Cast_1CastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_2Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: K
truedivRealDiv
Cast_1:y:0
Cast_2:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0?
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0?
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
?
?
__inference_<lambda>_5170223:
6key_value_init1053650_lookuptableimportv2_table_handle2
.key_value_init1053650_lookuptableimportv2_keys4
0key_value_init1053650_lookuptableimportv2_values	
identity??)key_value_init1053650/LookupTableImportV2?
)key_value_init1053650/LookupTableImportV2LookupTableImportV26key_value_init1053650_lookuptableimportv2_table_handle.key_value_init1053650_lookuptableimportv2_keys0key_value_init1053650_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: r
NoOpNoOp*^key_value_init1053650/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2V
)key_value_init1053650/LookupTableImportV2)key_value_init1053650/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
__inference_save_fn_5170168
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2	

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0	*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0	*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
,
__inference_<lambda>_5170202
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_restore_fn_5170149
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
__inference_restore_fn_5170068
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
.
__inference__destroyer_5169960
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
0
 __inference__initializer_5169970
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_adapt_step_5169566
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
ReshapeReshapeIteratorGetNext:components:0Reshape/shape:output:0*
T0*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
?
__inference_adapt_step_5169580
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
ReshapeReshapeIteratorGetNext:components:0Reshape/shape:output:0*
T0*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
?
J__inference_concatenate_1_layer_call_and_return_conditional_losses_5169809
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8concat/axis:output:0*
N	*
T0*(
_output_shapes
:??????????_X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:??????????_"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:??????????]:??????????:?????????:?????????:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????]
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8
?
?
)__inference_dense_2_layer_call_fn_5169818

inputs
unknown:	?_2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_5168212o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????_: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????_
 
_user_specified_nameinputs
?
?
)__inference_model_1_layer_call_fn_5169124
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17:	?_2

unknown_18:2

unknown_19:2

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_5168576o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
G
+__inference_dropout_1_layer_call_fn_5169834

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_5168223`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
 __inference__initializer_51699229
5key_value_init975124_lookuptableimportv2_table_handle1
-key_value_init975124_lookuptableimportv2_keys3
/key_value_init975124_lookuptableimportv2_values	
identity??(key_value_init975124/LookupTableImportV2?
(key_value_init975124/LookupTableImportV2LookupTableImportV25key_value_init975124_lookuptableimportv2_table_handle-key_value_init975124_lookuptableimportv2_keys/key_value_init975124_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init975124/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?]:?]2T
(key_value_init975124/LookupTableImportV2(key_value_init975124/LookupTableImportV2:!

_output_shapes	
:?]:!

_output_shapes	
:?]
?
?
__inference_save_fn_5170060
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
__inference_<lambda>_5170210:
6key_value_init1014387_lookuptableimportv2_table_handle2
.key_value_init1014387_lookuptableimportv2_keys4
0key_value_init1014387_lookuptableimportv2_values	
identity??)key_value_init1014387/LookupTableImportV2?
)key_value_init1014387/LookupTableImportV2LookupTableImportV26key_value_init1014387_lookuptableimportv2_table_handle.key_value_init1014387_lookuptableimportv2_keys0key_value_init1014387_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: r
NoOpNoOp*^key_value_init1014387/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2V
)key_value_init1014387/LookupTableImportV2)key_value_init1014387/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?	
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_5168320

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
H
__inference__creator_5169932
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_935895*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?

?
D__inference_dense_2_layer_call_and_return_conditional_losses_5169829

inputs1
matmul_readvariableop_resource:	?_2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?_2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????_: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????_
 
_user_specified_nameinputs
?
?
__inference_save_fn_5170114
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
.
__inference__destroyer_5170008
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
<
__inference__creator_5169947
identity??
hash_tableo

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	1014388*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
0
 __inference__initializer_5170036
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
<
__inference__creator_5170013
identity??
hash_tableo

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name	1092914*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
ß
?
#__inference__traced_restore_5170563
file_prefixM
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: Q
Gmutablehashtable_table_restore_1_lookuptableimportv2_mutablehashtable_1: Q
Gmutablehashtable_table_restore_2_lookuptableimportv2_mutablehashtable_2: Q
Gmutablehashtable_table_restore_3_lookuptableimportv2_mutablehashtable_3: Q
Gmutablehashtable_table_restore_4_lookuptableimportv2_mutablehashtable_4:	 #
assignvariableop_mean:)
assignvariableop_1_variance:"
assignvariableop_2_count:	 '
assignvariableop_3_mean_1:+
assignvariableop_4_variance_1:$
assignvariableop_5_count_1:	 '
assignvariableop_6_mean_2:+
assignvariableop_7_variance_2:$
assignvariableop_8_count_2:	 '
assignvariableop_9_mean_3:,
assignvariableop_10_variance_3:%
assignvariableop_11_count_3:	 5
"assignvariableop_12_dense_2_kernel:	?_2.
 assignvariableop_13_dense_2_bias:24
"assignvariableop_14_dense_3_kernel:2.
 assignvariableop_15_dense_3_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: %
assignvariableop_22_count_4: %
assignvariableop_23_total_1: %
assignvariableop_24_count_5: <
)assignvariableop_25_adam_dense_2_kernel_m:	?_25
'assignvariableop_26_adam_dense_2_bias_m:2;
)assignvariableop_27_adam_dense_3_kernel_m:25
'assignvariableop_28_adam_dense_3_bias_m:<
)assignvariableop_29_adam_dense_2_kernel_v:	?_25
'assignvariableop_30_adam_dense_2_bias_v:2;
)assignvariableop_31_adam_dense_3_kernel_v:25
'assignvariableop_32_adam_dense_3_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?4MutableHashTable_table_restore_1/LookupTableImportV2?4MutableHashTable_table_restore_2/LookupTableImportV2?4MutableHashTable_table_restore_3/LookupTableImportV2?4MutableHashTable_table_restore_4/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B8layer_with_weights-0/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-0/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-1/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-1/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-2/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-2/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-3/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-3/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-4/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-4/token_counts/.ATTRIBUTES/table-valuesB4layer_with_weights-5/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-5/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-6/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-8/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,											?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:0RestoreV2:tensors:1*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 ?
4MutableHashTable_table_restore_1/LookupTableImportV2LookupTableImportV2Gmutablehashtable_table_restore_1_lookuptableimportv2_mutablehashtable_1RestoreV2:tensors:2RestoreV2:tensors:3*	
Tin0*

Tout0	*%
_class
loc:@MutableHashTable_1*
_output_shapes
 ?
4MutableHashTable_table_restore_2/LookupTableImportV2LookupTableImportV2Gmutablehashtable_table_restore_2_lookuptableimportv2_mutablehashtable_2RestoreV2:tensors:4RestoreV2:tensors:5*	
Tin0*

Tout0	*%
_class
loc:@MutableHashTable_2*
_output_shapes
 ?
4MutableHashTable_table_restore_3/LookupTableImportV2LookupTableImportV2Gmutablehashtable_table_restore_3_lookuptableimportv2_mutablehashtable_3RestoreV2:tensors:6RestoreV2:tensors:7*	
Tin0*

Tout0	*%
_class
loc:@MutableHashTable_3*
_output_shapes
 ?
4MutableHashTable_table_restore_4/LookupTableImportV2LookupTableImportV2Gmutablehashtable_table_restore_4_lookuptableimportv2_mutablehashtable_4RestoreV2:tensors:8RestoreV2:tensors:9*	
Tin0	*

Tout0	*%
_class
loc:@MutableHashTable_4*
_output_shapes
 \
IdentityIdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_1IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_2IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	^

Identity_3IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_mean_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_4IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_variance_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_5IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_count_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	^

Identity_6IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_mean_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_7IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_variance_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_8IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_count_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	^

Identity_9IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_mean_3Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_variance_3Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_3Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_3_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_3_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_4Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_5Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_3_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_3_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_3_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_3_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV25^MutableHashTable_table_restore_1/LookupTableImportV25^MutableHashTable_table_restore_2/LookupTableImportV25^MutableHashTable_table_restore_3/LookupTableImportV25^MutableHashTable_table_restore_4/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV25^MutableHashTable_table_restore_1/LookupTableImportV25^MutableHashTable_table_restore_2/LookupTableImportV25^MutableHashTable_table_restore_3/LookupTableImportV25^MutableHashTable_table_restore_4/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV22l
4MutableHashTable_table_restore_1/LookupTableImportV24MutableHashTable_table_restore_1/LookupTableImportV22l
4MutableHashTable_table_restore_2/LookupTableImportV24MutableHashTable_table_restore_2/LookupTableImportV22l
4MutableHashTable_table_restore_3/LookupTableImportV24MutableHashTable_table_restore_3/LookupTableImportV22l
4MutableHashTable_table_restore_4/LookupTableImportV24MutableHashTable_table_restore_4/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable:+'
%
_class
loc:@MutableHashTable_1:+'
%
_class
loc:@MutableHashTable_2:+'
%
_class
loc:@MutableHashTable_3:+'
%
_class
loc:@MutableHashTable_4
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_5168223

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
__inference_<lambda>_5170236:
6key_value_init1092913_lookuptableimportv2_table_handle2
.key_value_init1092913_lookuptableimportv2_keys	4
0key_value_init1092913_lookuptableimportv2_values	
identity??)key_value_init1092913/LookupTableImportV2?
)key_value_init1092913/LookupTableImportV2LookupTableImportV26key_value_init1092913_lookuptableimportv2_table_handle.key_value_init1092913_lookuptableimportv2_keys0key_value_init1092913_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: r
NoOpNoOp*^key_value_init1092913/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2V
)key_value_init1092913/LookupTableImportV2)key_value_init1092913/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
<
__inference__creator_5169980
identity??
hash_tableo

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	1053651*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
__inference_<lambda>_51701979
5key_value_init975124_lookuptableimportv2_table_handle1
-key_value_init975124_lookuptableimportv2_keys3
/key_value_init975124_lookuptableimportv2_values	
identity??(key_value_init975124/LookupTableImportV2?
(key_value_init975124/LookupTableImportV2LookupTableImportV25key_value_init975124_lookuptableimportv2_table_handle-key_value_init975124_lookuptableimportv2_keys/key_value_init975124_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init975124/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?]:?]2T
(key_value_init975124/LookupTableImportV2(key_value_init975124/LookupTableImportV2:!

_output_shapes	
:?]:!

_output_shapes	
:?]
??
?
D__inference_model_1_layer_call_and_return_conditional_losses_5168576

inputs
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8>
:string_lookup_4_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_4_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_6_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_6_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_7_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_7_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_1_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_1_none_lookup_lookuptablefindv2_default_value	
normalization_4_sub_y
normalization_4_sqrt_x
normalization_5_sub_y
normalization_5_sqrt_x
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x"
dense_2_5168564:	?_2
dense_2_5168566:2!
dense_3_5168570:2
dense_3_5168572:
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?.integer_lookup_1/None_Lookup/LookupTableFindV2?-string_lookup_4/None_Lookup/LookupTableFindV2?-string_lookup_5/None_Lookup/LookupTableFindV2?-string_lookup_6/None_Lookup/LookupTableFindV2?-string_lookup_7/None_Lookup/LookupTableFindV2?
-string_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_4/IdentityIdentity6string_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_4/bincount/ShapeShape!string_lookup_4/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_4/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_4/bincount/ProdProd'string_lookup_4/bincount/Shape:output:0'string_lookup_4/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_4/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_4/bincount/GreaterGreater&string_lookup_4/bincount/Prod:output:0+string_lookup_4/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_4/bincount/CastCast$string_lookup_4/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_4/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_4/bincount/MaxMax!string_lookup_4/Identity:output:0)string_lookup_4/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_4/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_4/bincount/addAddV2%string_lookup_4/bincount/Max:output:0'string_lookup_4/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_4/bincount/mulMul!string_lookup_4/bincount/Cast:y:0 string_lookup_4/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MaximumMaximum+string_lookup_4/bincount/minlength:output:0 string_lookup_4/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MinimumMinimum+string_lookup_4/bincount/maxlength:output:0$string_lookup_4/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_4/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_4/bincount/DenseBincountDenseBincount!string_lookup_4/Identity:output:0$string_lookup_4/bincount/Minimum:z:0)string_lookup_4/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs_1;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_5/bincount/ShapeShape!string_lookup_5/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_5/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_5/bincount/ProdProd'string_lookup_5/bincount/Shape:output:0'string_lookup_5/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_5/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_5/bincount/GreaterGreater&string_lookup_5/bincount/Prod:output:0+string_lookup_5/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_5/bincount/CastCast$string_lookup_5/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_5/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_5/bincount/MaxMax!string_lookup_5/Identity:output:0)string_lookup_5/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_5/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_5/bincount/addAddV2%string_lookup_5/bincount/Max:output:0'string_lookup_5/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_5/bincount/mulMul!string_lookup_5/bincount/Cast:y:0 string_lookup_5/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MaximumMaximum+string_lookup_5/bincount/minlength:output:0 string_lookup_5/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MinimumMinimum+string_lookup_5/bincount/maxlength:output:0$string_lookup_5/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_5/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_5/bincount/DenseBincountDenseBincount!string_lookup_5/Identity:output:0$string_lookup_5/bincount/Minimum:z:0)string_lookup_5/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????]*
binary_output(?
-string_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs_2;string_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_6/IdentityIdentity6string_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_6/bincount/ShapeShape!string_lookup_6/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_6/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_6/bincount/ProdProd'string_lookup_6/bincount/Shape:output:0'string_lookup_6/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_6/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_6/bincount/GreaterGreater&string_lookup_6/bincount/Prod:output:0+string_lookup_6/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_6/bincount/CastCast$string_lookup_6/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_6/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_6/bincount/MaxMax!string_lookup_6/Identity:output:0)string_lookup_6/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_6/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_6/bincount/addAddV2%string_lookup_6/bincount/Max:output:0'string_lookup_6/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_6/bincount/mulMul!string_lookup_6/bincount/Cast:y:0 string_lookup_6/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MaximumMaximum+string_lookup_6/bincount/minlength:output:0 string_lookup_6/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MinimumMinimum+string_lookup_6/bincount/maxlength:output:0$string_lookup_6/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_6/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_6/bincount/DenseBincountDenseBincount!string_lookup_6/Identity:output:0$string_lookup_6/bincount/Minimum:z:0)string_lookup_6/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
-string_lookup_7/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_7_none_lookup_lookuptablefindv2_table_handleinputs_3;string_lookup_7_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_7/IdentityIdentity6string_lookup_7/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_7/bincount/ShapeShape!string_lookup_7/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_7/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_7/bincount/ProdProd'string_lookup_7/bincount/Shape:output:0'string_lookup_7/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_7/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_7/bincount/GreaterGreater&string_lookup_7/bincount/Prod:output:0+string_lookup_7/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_7/bincount/CastCast$string_lookup_7/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_7/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_7/bincount/MaxMax!string_lookup_7/Identity:output:0)string_lookup_7/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_7/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_7/bincount/addAddV2%string_lookup_7/bincount/Max:output:0'string_lookup_7/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_7/bincount/mulMul!string_lookup_7/bincount/Cast:y:0 string_lookup_7/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MaximumMaximum+string_lookup_7/bincount/minlength:output:0 string_lookup_7/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MinimumMinimum+string_lookup_7/bincount/maxlength:output:0$string_lookup_7/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_7/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_7/bincount/DenseBincountDenseBincount!string_lookup_7/Identity:output:0$string_lookup_7/bincount/Minimum:z:0)string_lookup_7/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
.integer_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs_4<integer_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_1/IdentityIdentity7integer_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_1/bincount/ShapeShape"integer_lookup_1/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_1/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_1/bincount/ProdProd(integer_lookup_1/bincount/Shape:output:0(integer_lookup_1/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_1/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_1/bincount/GreaterGreater'integer_lookup_1/bincount/Prod:output:0,integer_lookup_1/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_1/bincount/CastCast%integer_lookup_1/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_1/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_1/bincount/MaxMax"integer_lookup_1/Identity:output:0*integer_lookup_1/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_1/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_1/bincount/addAddV2&integer_lookup_1/bincount/Max:output:0(integer_lookup_1/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_1/bincount/mulMul"integer_lookup_1/bincount/Cast:y:0!integer_lookup_1/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MaximumMaximum,integer_lookup_1/bincount/minlength:output:0!integer_lookup_1/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MinimumMinimum,integer_lookup_1/bincount/maxlength:output:0%integer_lookup_1/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_1/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_1/bincount/DenseBincountDenseBincount"integer_lookup_1/Identity:output:0%integer_lookup_1/bincount/Minimum:z:0*integer_lookup_1/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(m
normalization_4/subSubinputs_5normalization_4_sub_y*
T0*'
_output_shapes
:?????????]
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*
_output_shapes

:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_5/subSubinputs_6normalization_5_sub_y*
T0*'
_output_shapes
:?????????]
normalization_5/SqrtSqrtnormalization_5_sqrt_x*
T0*
_output_shapes

:^
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_6/subSubinputs_7normalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_7/subSubinputs_8normalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:??????????
concatenate_1/PartitionedCallPartitionedCall/string_lookup_4/bincount/DenseBincount:output:0/string_lookup_5/bincount/DenseBincount:output:0/string_lookup_6/bincount/DenseBincount:output:0/string_lookup_7/bincount/DenseBincount:output:00integer_lookup_1/bincount/DenseBincount:output:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????_* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_5168199?
dense_2/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_2_5168564dense_2_5168566*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_5168212?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_5168320?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_3_5168570dense_3_5168572*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_5168236w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall/^integer_lookup_1/None_Lookup/LookupTableFindV2.^string_lookup_4/None_Lookup/LookupTableFindV2.^string_lookup_5/None_Lookup/LookupTableFindV2.^string_lookup_6/None_Lookup/LookupTableFindV2.^string_lookup_7/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2`
.integer_lookup_1/None_Lookup/LookupTableFindV2.integer_lookup_1/None_Lookup/LookupTableFindV22^
-string_lookup_4/None_Lookup/LookupTableFindV2-string_lookup_4/None_Lookup/LookupTableFindV22^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV22^
-string_lookup_6/None_Lookup/LookupTableFindV2-string_lookup_6/None_Lookup/LookupTableFindV22^
-string_lookup_7/None_Lookup/LookupTableFindV2-string_lookup_7/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
,
__inference_<lambda>_5170228
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
"__inference__wrapped_model_5168024
country
	city_name
category
currency
launch_month	
goal
days_of_campaign
description
project_nameF
Bmodel_1_string_lookup_4_none_lookup_lookuptablefindv2_table_handleG
Cmodel_1_string_lookup_4_none_lookup_lookuptablefindv2_default_value	F
Bmodel_1_string_lookup_5_none_lookup_lookuptablefindv2_table_handleG
Cmodel_1_string_lookup_5_none_lookup_lookuptablefindv2_default_value	F
Bmodel_1_string_lookup_6_none_lookup_lookuptablefindv2_table_handleG
Cmodel_1_string_lookup_6_none_lookup_lookuptablefindv2_default_value	F
Bmodel_1_string_lookup_7_none_lookup_lookuptablefindv2_table_handleG
Cmodel_1_string_lookup_7_none_lookup_lookuptablefindv2_default_value	G
Cmodel_1_integer_lookup_1_none_lookup_lookuptablefindv2_table_handleH
Dmodel_1_integer_lookup_1_none_lookup_lookuptablefindv2_default_value	!
model_1_normalization_4_sub_y"
model_1_normalization_4_sqrt_x!
model_1_normalization_5_sub_y"
model_1_normalization_5_sqrt_x!
model_1_normalization_6_sub_y"
model_1_normalization_6_sqrt_x!
model_1_normalization_7_sub_y"
model_1_normalization_7_sqrt_xA
.model_1_dense_2_matmul_readvariableop_resource:	?_2=
/model_1_dense_2_biasadd_readvariableop_resource:2@
.model_1_dense_3_matmul_readvariableop_resource:2=
/model_1_dense_3_biasadd_readvariableop_resource:
identity??&model_1/dense_2/BiasAdd/ReadVariableOp?%model_1/dense_2/MatMul/ReadVariableOp?&model_1/dense_3/BiasAdd/ReadVariableOp?%model_1/dense_3/MatMul/ReadVariableOp?6model_1/integer_lookup_1/None_Lookup/LookupTableFindV2?5model_1/string_lookup_4/None_Lookup/LookupTableFindV2?5model_1/string_lookup_5/None_Lookup/LookupTableFindV2?5model_1/string_lookup_6/None_Lookup/LookupTableFindV2?5model_1/string_lookup_7/None_Lookup/LookupTableFindV2?
5model_1/string_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2Bmodel_1_string_lookup_4_none_lookup_lookuptablefindv2_table_handlecountryCmodel_1_string_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
 model_1/string_lookup_4/IdentityIdentity>model_1/string_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????
&model_1/string_lookup_4/bincount/ShapeShape)model_1/string_lookup_4/Identity:output:0*
T0	*
_output_shapes
:p
&model_1/string_lookup_4/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
%model_1/string_lookup_4/bincount/ProdProd/model_1/string_lookup_4/bincount/Shape:output:0/model_1/string_lookup_4/bincount/Const:output:0*
T0*
_output_shapes
: l
*model_1/string_lookup_4/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
(model_1/string_lookup_4/bincount/GreaterGreater.model_1/string_lookup_4/bincount/Prod:output:03model_1/string_lookup_4/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
%model_1/string_lookup_4/bincount/CastCast,model_1/string_lookup_4/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: y
(model_1/string_lookup_4/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
$model_1/string_lookup_4/bincount/MaxMax)model_1/string_lookup_4/Identity:output:01model_1/string_lookup_4/bincount/Const_1:output:0*
T0	*
_output_shapes
: h
&model_1/string_lookup_4/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
$model_1/string_lookup_4/bincount/addAddV2-model_1/string_lookup_4/bincount/Max:output:0/model_1/string_lookup_4/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
$model_1/string_lookup_4/bincount/mulMul)model_1/string_lookup_4/bincount/Cast:y:0(model_1/string_lookup_4/bincount/add:z:0*
T0	*
_output_shapes
: l
*model_1/string_lookup_4/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
(model_1/string_lookup_4/bincount/MaximumMaximum3model_1/string_lookup_4/bincount/minlength:output:0(model_1/string_lookup_4/bincount/mul:z:0*
T0	*
_output_shapes
: l
*model_1/string_lookup_4/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
(model_1/string_lookup_4/bincount/MinimumMinimum3model_1/string_lookup_4/bincount/maxlength:output:0,model_1/string_lookup_4/bincount/Maximum:z:0*
T0	*
_output_shapes
: k
(model_1/string_lookup_4/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
.model_1/string_lookup_4/bincount/DenseBincountDenseBincount)model_1/string_lookup_4/Identity:output:0,model_1/string_lookup_4/bincount/Minimum:z:01model_1/string_lookup_4/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
5model_1/string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2Bmodel_1_string_lookup_5_none_lookup_lookuptablefindv2_table_handle	city_nameCmodel_1_string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
 model_1/string_lookup_5/IdentityIdentity>model_1/string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????
&model_1/string_lookup_5/bincount/ShapeShape)model_1/string_lookup_5/Identity:output:0*
T0	*
_output_shapes
:p
&model_1/string_lookup_5/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
%model_1/string_lookup_5/bincount/ProdProd/model_1/string_lookup_5/bincount/Shape:output:0/model_1/string_lookup_5/bincount/Const:output:0*
T0*
_output_shapes
: l
*model_1/string_lookup_5/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
(model_1/string_lookup_5/bincount/GreaterGreater.model_1/string_lookup_5/bincount/Prod:output:03model_1/string_lookup_5/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
%model_1/string_lookup_5/bincount/CastCast,model_1/string_lookup_5/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: y
(model_1/string_lookup_5/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
$model_1/string_lookup_5/bincount/MaxMax)model_1/string_lookup_5/Identity:output:01model_1/string_lookup_5/bincount/Const_1:output:0*
T0	*
_output_shapes
: h
&model_1/string_lookup_5/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
$model_1/string_lookup_5/bincount/addAddV2-model_1/string_lookup_5/bincount/Max:output:0/model_1/string_lookup_5/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
$model_1/string_lookup_5/bincount/mulMul)model_1/string_lookup_5/bincount/Cast:y:0(model_1/string_lookup_5/bincount/add:z:0*
T0	*
_output_shapes
: m
*model_1/string_lookup_5/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
(model_1/string_lookup_5/bincount/MaximumMaximum3model_1/string_lookup_5/bincount/minlength:output:0(model_1/string_lookup_5/bincount/mul:z:0*
T0	*
_output_shapes
: m
*model_1/string_lookup_5/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
(model_1/string_lookup_5/bincount/MinimumMinimum3model_1/string_lookup_5/bincount/maxlength:output:0,model_1/string_lookup_5/bincount/Maximum:z:0*
T0	*
_output_shapes
: k
(model_1/string_lookup_5/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
.model_1/string_lookup_5/bincount/DenseBincountDenseBincount)model_1/string_lookup_5/Identity:output:0,model_1/string_lookup_5/bincount/Minimum:z:01model_1/string_lookup_5/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????]*
binary_output(?
5model_1/string_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2Bmodel_1_string_lookup_6_none_lookup_lookuptablefindv2_table_handlecategoryCmodel_1_string_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
 model_1/string_lookup_6/IdentityIdentity>model_1/string_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????
&model_1/string_lookup_6/bincount/ShapeShape)model_1/string_lookup_6/Identity:output:0*
T0	*
_output_shapes
:p
&model_1/string_lookup_6/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
%model_1/string_lookup_6/bincount/ProdProd/model_1/string_lookup_6/bincount/Shape:output:0/model_1/string_lookup_6/bincount/Const:output:0*
T0*
_output_shapes
: l
*model_1/string_lookup_6/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
(model_1/string_lookup_6/bincount/GreaterGreater.model_1/string_lookup_6/bincount/Prod:output:03model_1/string_lookup_6/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
%model_1/string_lookup_6/bincount/CastCast,model_1/string_lookup_6/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: y
(model_1/string_lookup_6/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
$model_1/string_lookup_6/bincount/MaxMax)model_1/string_lookup_6/Identity:output:01model_1/string_lookup_6/bincount/Const_1:output:0*
T0	*
_output_shapes
: h
&model_1/string_lookup_6/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
$model_1/string_lookup_6/bincount/addAddV2-model_1/string_lookup_6/bincount/Max:output:0/model_1/string_lookup_6/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
$model_1/string_lookup_6/bincount/mulMul)model_1/string_lookup_6/bincount/Cast:y:0(model_1/string_lookup_6/bincount/add:z:0*
T0	*
_output_shapes
: m
*model_1/string_lookup_6/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
(model_1/string_lookup_6/bincount/MaximumMaximum3model_1/string_lookup_6/bincount/minlength:output:0(model_1/string_lookup_6/bincount/mul:z:0*
T0	*
_output_shapes
: m
*model_1/string_lookup_6/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
(model_1/string_lookup_6/bincount/MinimumMinimum3model_1/string_lookup_6/bincount/maxlength:output:0,model_1/string_lookup_6/bincount/Maximum:z:0*
T0	*
_output_shapes
: k
(model_1/string_lookup_6/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
.model_1/string_lookup_6/bincount/DenseBincountDenseBincount)model_1/string_lookup_6/Identity:output:0,model_1/string_lookup_6/bincount/Minimum:z:01model_1/string_lookup_6/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
5model_1/string_lookup_7/None_Lookup/LookupTableFindV2LookupTableFindV2Bmodel_1_string_lookup_7_none_lookup_lookuptablefindv2_table_handlecurrencyCmodel_1_string_lookup_7_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
 model_1/string_lookup_7/IdentityIdentity>model_1/string_lookup_7/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????
&model_1/string_lookup_7/bincount/ShapeShape)model_1/string_lookup_7/Identity:output:0*
T0	*
_output_shapes
:p
&model_1/string_lookup_7/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
%model_1/string_lookup_7/bincount/ProdProd/model_1/string_lookup_7/bincount/Shape:output:0/model_1/string_lookup_7/bincount/Const:output:0*
T0*
_output_shapes
: l
*model_1/string_lookup_7/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
(model_1/string_lookup_7/bincount/GreaterGreater.model_1/string_lookup_7/bincount/Prod:output:03model_1/string_lookup_7/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
%model_1/string_lookup_7/bincount/CastCast,model_1/string_lookup_7/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: y
(model_1/string_lookup_7/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
$model_1/string_lookup_7/bincount/MaxMax)model_1/string_lookup_7/Identity:output:01model_1/string_lookup_7/bincount/Const_1:output:0*
T0	*
_output_shapes
: h
&model_1/string_lookup_7/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
$model_1/string_lookup_7/bincount/addAddV2-model_1/string_lookup_7/bincount/Max:output:0/model_1/string_lookup_7/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
$model_1/string_lookup_7/bincount/mulMul)model_1/string_lookup_7/bincount/Cast:y:0(model_1/string_lookup_7/bincount/add:z:0*
T0	*
_output_shapes
: l
*model_1/string_lookup_7/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
(model_1/string_lookup_7/bincount/MaximumMaximum3model_1/string_lookup_7/bincount/minlength:output:0(model_1/string_lookup_7/bincount/mul:z:0*
T0	*
_output_shapes
: l
*model_1/string_lookup_7/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
(model_1/string_lookup_7/bincount/MinimumMinimum3model_1/string_lookup_7/bincount/maxlength:output:0,model_1/string_lookup_7/bincount/Maximum:z:0*
T0	*
_output_shapes
: k
(model_1/string_lookup_7/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
.model_1/string_lookup_7/bincount/DenseBincountDenseBincount)model_1/string_lookup_7/Identity:output:0,model_1/string_lookup_7/bincount/Minimum:z:01model_1/string_lookup_7/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
6model_1/integer_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2Cmodel_1_integer_lookup_1_none_lookup_lookuptablefindv2_table_handlelaunch_monthDmodel_1_integer_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
!model_1/integer_lookup_1/IdentityIdentity?model_1/integer_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:??????????
'model_1/integer_lookup_1/bincount/ShapeShape*model_1/integer_lookup_1/Identity:output:0*
T0	*
_output_shapes
:q
'model_1/integer_lookup_1/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
&model_1/integer_lookup_1/bincount/ProdProd0model_1/integer_lookup_1/bincount/Shape:output:00model_1/integer_lookup_1/bincount/Const:output:0*
T0*
_output_shapes
: m
+model_1/integer_lookup_1/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
)model_1/integer_lookup_1/bincount/GreaterGreater/model_1/integer_lookup_1/bincount/Prod:output:04model_1/integer_lookup_1/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
&model_1/integer_lookup_1/bincount/CastCast-model_1/integer_lookup_1/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: z
)model_1/integer_lookup_1/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
%model_1/integer_lookup_1/bincount/MaxMax*model_1/integer_lookup_1/Identity:output:02model_1/integer_lookup_1/bincount/Const_1:output:0*
T0	*
_output_shapes
: i
'model_1/integer_lookup_1/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
%model_1/integer_lookup_1/bincount/addAddV2.model_1/integer_lookup_1/bincount/Max:output:00model_1/integer_lookup_1/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
%model_1/integer_lookup_1/bincount/mulMul*model_1/integer_lookup_1/bincount/Cast:y:0)model_1/integer_lookup_1/bincount/add:z:0*
T0	*
_output_shapes
: m
+model_1/integer_lookup_1/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
)model_1/integer_lookup_1/bincount/MaximumMaximum4model_1/integer_lookup_1/bincount/minlength:output:0)model_1/integer_lookup_1/bincount/mul:z:0*
T0	*
_output_shapes
: m
+model_1/integer_lookup_1/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
)model_1/integer_lookup_1/bincount/MinimumMinimum4model_1/integer_lookup_1/bincount/maxlength:output:0-model_1/integer_lookup_1/bincount/Maximum:z:0*
T0	*
_output_shapes
: l
)model_1/integer_lookup_1/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
/model_1/integer_lookup_1/bincount/DenseBincountDenseBincount*model_1/integer_lookup_1/Identity:output:0-model_1/integer_lookup_1/bincount/Minimum:z:02model_1/integer_lookup_1/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(y
model_1/normalization_4/subSubgoalmodel_1_normalization_4_sub_y*
T0*'
_output_shapes
:?????????m
model_1/normalization_4/SqrtSqrtmodel_1_normalization_4_sqrt_x*
T0*
_output_shapes

:f
!model_1/normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
model_1/normalization_4/MaximumMaximum model_1/normalization_4/Sqrt:y:0*model_1/normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:?
model_1/normalization_4/truedivRealDivmodel_1/normalization_4/sub:z:0#model_1/normalization_4/Maximum:z:0*
T0*'
_output_shapes
:??????????
model_1/normalization_5/subSubdays_of_campaignmodel_1_normalization_5_sub_y*
T0*'
_output_shapes
:?????????m
model_1/normalization_5/SqrtSqrtmodel_1_normalization_5_sqrt_x*
T0*
_output_shapes

:f
!model_1/normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
model_1/normalization_5/MaximumMaximum model_1/normalization_5/Sqrt:y:0*model_1/normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:?
model_1/normalization_5/truedivRealDivmodel_1/normalization_5/sub:z:0#model_1/normalization_5/Maximum:z:0*
T0*'
_output_shapes
:??????????
model_1/normalization_6/subSubdescriptionmodel_1_normalization_6_sub_y*
T0*'
_output_shapes
:?????????m
model_1/normalization_6/SqrtSqrtmodel_1_normalization_6_sqrt_x*
T0*
_output_shapes

:f
!model_1/normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
model_1/normalization_6/MaximumMaximum model_1/normalization_6/Sqrt:y:0*model_1/normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
model_1/normalization_6/truedivRealDivmodel_1/normalization_6/sub:z:0#model_1/normalization_6/Maximum:z:0*
T0*'
_output_shapes
:??????????
model_1/normalization_7/subSubproject_namemodel_1_normalization_7_sub_y*
T0*'
_output_shapes
:?????????m
model_1/normalization_7/SqrtSqrtmodel_1_normalization_7_sqrt_x*
T0*
_output_shapes

:f
!model_1/normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
model_1/normalization_7/MaximumMaximum model_1/normalization_7/Sqrt:y:0*model_1/normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
model_1/normalization_7/truedivRealDivmodel_1/normalization_7/sub:z:0#model_1/normalization_7/Maximum:z:0*
T0*'
_output_shapes
:?????????c
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_1/concatenate_1/concatConcatV27model_1/string_lookup_4/bincount/DenseBincount:output:07model_1/string_lookup_5/bincount/DenseBincount:output:07model_1/string_lookup_6/bincount/DenseBincount:output:07model_1/string_lookup_7/bincount/DenseBincount:output:08model_1/integer_lookup_1/bincount/DenseBincount:output:0#model_1/normalization_4/truediv:z:0#model_1/normalization_5/truediv:z:0#model_1/normalization_6/truediv:z:0#model_1/normalization_7/truediv:z:0*model_1/concatenate_1/concat/axis:output:0*
N	*
T0*(
_output_shapes
:??????????_?
%model_1/dense_2/MatMul/ReadVariableOpReadVariableOp.model_1_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?_2*
dtype0?
model_1/dense_2/MatMulMatMul%model_1/concatenate_1/concat:output:0-model_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
&model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
model_1/dense_2/BiasAddBiasAdd model_1/dense_2/MatMul:product:0.model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2p
model_1/dense_2/ReluRelu model_1/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2|
model_1/dropout_1/IdentityIdentity"model_1/dense_2/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
%model_1/dense_3/MatMul/ReadVariableOpReadVariableOp.model_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
model_1/dense_3/MatMulMatMul#model_1/dropout_1/Identity:output:0-model_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_1/dense_3/BiasAddBiasAdd model_1/dense_3/MatMul:product:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
model_1/dense_3/SigmoidSigmoid model_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitymodel_1/dense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp'^model_1/dense_2/BiasAdd/ReadVariableOp&^model_1/dense_2/MatMul/ReadVariableOp'^model_1/dense_3/BiasAdd/ReadVariableOp&^model_1/dense_3/MatMul/ReadVariableOp7^model_1/integer_lookup_1/None_Lookup/LookupTableFindV26^model_1/string_lookup_4/None_Lookup/LookupTableFindV26^model_1/string_lookup_5/None_Lookup/LookupTableFindV26^model_1/string_lookup_6/None_Lookup/LookupTableFindV26^model_1/string_lookup_7/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2P
&model_1/dense_2/BiasAdd/ReadVariableOp&model_1/dense_2/BiasAdd/ReadVariableOp2N
%model_1/dense_2/MatMul/ReadVariableOp%model_1/dense_2/MatMul/ReadVariableOp2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2N
%model_1/dense_3/MatMul/ReadVariableOp%model_1/dense_3/MatMul/ReadVariableOp2p
6model_1/integer_lookup_1/None_Lookup/LookupTableFindV26model_1/integer_lookup_1/None_Lookup/LookupTableFindV22n
5model_1/string_lookup_4/None_Lookup/LookupTableFindV25model_1/string_lookup_4/None_Lookup/LookupTableFindV22n
5model_1/string_lookup_5/None_Lookup/LookupTableFindV25model_1/string_lookup_5/None_Lookup/LookupTableFindV22n
5model_1/string_lookup_6/None_Lookup/LookupTableFindV25model_1/string_lookup_6/None_Lookup/LookupTableFindV22n
5model_1/string_lookup_7/None_Lookup/LookupTableFindV25model_1/string_lookup_7/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	country:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:QM
'
_output_shapes
:?????????
"
_user_specified_name
category:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:MI
'
_output_shapes
:?????????

_user_specified_namegoal:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
?
 __inference__initializer_5169955:
6key_value_init1014387_lookuptableimportv2_table_handle2
.key_value_init1014387_lookuptableimportv2_keys4
0key_value_init1014387_lookuptableimportv2_values	
identity??)key_value_init1014387/LookupTableImportV2?
)key_value_init1014387/LookupTableImportV2LookupTableImportV26key_value_init1014387_lookuptableimportv2_table_handle.key_value_init1014387_lookuptableimportv2_keys0key_value_init1014387_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: r
NoOpNoOp*^key_value_init1014387/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2V
)key_value_init1014387/LookupTableImportV2)key_value_init1014387/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
H
__inference__creator_5169998
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_1014421*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
.
__inference__destroyer_5169927
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
D__inference_model_1_layer_call_and_return_conditional_losses_5168842
country
	city_name
category
currency
launch_month	
goal
days_of_campaign
description
project_name>
:string_lookup_4_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_4_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_6_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_6_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_7_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_7_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_1_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_1_none_lookup_lookuptablefindv2_default_value	
normalization_4_sub_y
normalization_4_sqrt_x
normalization_5_sub_y
normalization_5_sqrt_x
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x"
dense_2_5168830:	?_2
dense_2_5168832:2!
dense_3_5168836:2
dense_3_5168838:
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?.integer_lookup_1/None_Lookup/LookupTableFindV2?-string_lookup_4/None_Lookup/LookupTableFindV2?-string_lookup_5/None_Lookup/LookupTableFindV2?-string_lookup_6/None_Lookup/LookupTableFindV2?-string_lookup_7/None_Lookup/LookupTableFindV2?
-string_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_4_none_lookup_lookuptablefindv2_table_handlecountry;string_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_4/IdentityIdentity6string_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_4/bincount/ShapeShape!string_lookup_4/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_4/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_4/bincount/ProdProd'string_lookup_4/bincount/Shape:output:0'string_lookup_4/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_4/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_4/bincount/GreaterGreater&string_lookup_4/bincount/Prod:output:0+string_lookup_4/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_4/bincount/CastCast$string_lookup_4/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_4/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_4/bincount/MaxMax!string_lookup_4/Identity:output:0)string_lookup_4/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_4/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_4/bincount/addAddV2%string_lookup_4/bincount/Max:output:0'string_lookup_4/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_4/bincount/mulMul!string_lookup_4/bincount/Cast:y:0 string_lookup_4/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MaximumMaximum+string_lookup_4/bincount/minlength:output:0 string_lookup_4/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MinimumMinimum+string_lookup_4/bincount/maxlength:output:0$string_lookup_4/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_4/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_4/bincount/DenseBincountDenseBincount!string_lookup_4/Identity:output:0$string_lookup_4/bincount/Minimum:z:0)string_lookup_4/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handle	city_name;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_5/bincount/ShapeShape!string_lookup_5/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_5/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_5/bincount/ProdProd'string_lookup_5/bincount/Shape:output:0'string_lookup_5/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_5/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_5/bincount/GreaterGreater&string_lookup_5/bincount/Prod:output:0+string_lookup_5/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_5/bincount/CastCast$string_lookup_5/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_5/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_5/bincount/MaxMax!string_lookup_5/Identity:output:0)string_lookup_5/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_5/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_5/bincount/addAddV2%string_lookup_5/bincount/Max:output:0'string_lookup_5/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_5/bincount/mulMul!string_lookup_5/bincount/Cast:y:0 string_lookup_5/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MaximumMaximum+string_lookup_5/bincount/minlength:output:0 string_lookup_5/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MinimumMinimum+string_lookup_5/bincount/maxlength:output:0$string_lookup_5/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_5/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_5/bincount/DenseBincountDenseBincount!string_lookup_5/Identity:output:0$string_lookup_5/bincount/Minimum:z:0)string_lookup_5/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????]*
binary_output(?
-string_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_6_none_lookup_lookuptablefindv2_table_handlecategory;string_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_6/IdentityIdentity6string_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_6/bincount/ShapeShape!string_lookup_6/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_6/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_6/bincount/ProdProd'string_lookup_6/bincount/Shape:output:0'string_lookup_6/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_6/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_6/bincount/GreaterGreater&string_lookup_6/bincount/Prod:output:0+string_lookup_6/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_6/bincount/CastCast$string_lookup_6/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_6/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_6/bincount/MaxMax!string_lookup_6/Identity:output:0)string_lookup_6/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_6/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_6/bincount/addAddV2%string_lookup_6/bincount/Max:output:0'string_lookup_6/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_6/bincount/mulMul!string_lookup_6/bincount/Cast:y:0 string_lookup_6/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MaximumMaximum+string_lookup_6/bincount/minlength:output:0 string_lookup_6/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MinimumMinimum+string_lookup_6/bincount/maxlength:output:0$string_lookup_6/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_6/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_6/bincount/DenseBincountDenseBincount!string_lookup_6/Identity:output:0$string_lookup_6/bincount/Minimum:z:0)string_lookup_6/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
-string_lookup_7/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_7_none_lookup_lookuptablefindv2_table_handlecurrency;string_lookup_7_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_7/IdentityIdentity6string_lookup_7/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_7/bincount/ShapeShape!string_lookup_7/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_7/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_7/bincount/ProdProd'string_lookup_7/bincount/Shape:output:0'string_lookup_7/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_7/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_7/bincount/GreaterGreater&string_lookup_7/bincount/Prod:output:0+string_lookup_7/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_7/bincount/CastCast$string_lookup_7/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_7/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_7/bincount/MaxMax!string_lookup_7/Identity:output:0)string_lookup_7/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_7/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_7/bincount/addAddV2%string_lookup_7/bincount/Max:output:0'string_lookup_7/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_7/bincount/mulMul!string_lookup_7/bincount/Cast:y:0 string_lookup_7/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MaximumMaximum+string_lookup_7/bincount/minlength:output:0 string_lookup_7/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MinimumMinimum+string_lookup_7/bincount/maxlength:output:0$string_lookup_7/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_7/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_7/bincount/DenseBincountDenseBincount!string_lookup_7/Identity:output:0$string_lookup_7/bincount/Minimum:z:0)string_lookup_7/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
.integer_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_1_none_lookup_lookuptablefindv2_table_handlelaunch_month<integer_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_1/IdentityIdentity7integer_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_1/bincount/ShapeShape"integer_lookup_1/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_1/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_1/bincount/ProdProd(integer_lookup_1/bincount/Shape:output:0(integer_lookup_1/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_1/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_1/bincount/GreaterGreater'integer_lookup_1/bincount/Prod:output:0,integer_lookup_1/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_1/bincount/CastCast%integer_lookup_1/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_1/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_1/bincount/MaxMax"integer_lookup_1/Identity:output:0*integer_lookup_1/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_1/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_1/bincount/addAddV2&integer_lookup_1/bincount/Max:output:0(integer_lookup_1/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_1/bincount/mulMul"integer_lookup_1/bincount/Cast:y:0!integer_lookup_1/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MaximumMaximum,integer_lookup_1/bincount/minlength:output:0!integer_lookup_1/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MinimumMinimum,integer_lookup_1/bincount/maxlength:output:0%integer_lookup_1/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_1/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_1/bincount/DenseBincountDenseBincount"integer_lookup_1/Identity:output:0%integer_lookup_1/bincount/Minimum:z:0*integer_lookup_1/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(i
normalization_4/subSubgoalnormalization_4_sub_y*
T0*'
_output_shapes
:?????????]
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*
_output_shapes

:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????u
normalization_5/subSubdays_of_campaignnormalization_5_sub_y*
T0*'
_output_shapes
:?????????]
normalization_5/SqrtSqrtnormalization_5_sqrt_x*
T0*
_output_shapes

:^
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:?????????p
normalization_6/subSubdescriptionnormalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????q
normalization_7/subSubproject_namenormalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:??????????
concatenate_1/PartitionedCallPartitionedCall/string_lookup_4/bincount/DenseBincount:output:0/string_lookup_5/bincount/DenseBincount:output:0/string_lookup_6/bincount/DenseBincount:output:0/string_lookup_7/bincount/DenseBincount:output:00integer_lookup_1/bincount/DenseBincount:output:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????_* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_5168199?
dense_2/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_2_5168830dense_2_5168832*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_5168212?
dropout_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_5168223?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_3_5168836dense_3_5168838*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_5168236w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall/^integer_lookup_1/None_Lookup/LookupTableFindV2.^string_lookup_4/None_Lookup/LookupTableFindV2.^string_lookup_5/None_Lookup/LookupTableFindV2.^string_lookup_6/None_Lookup/LookupTableFindV2.^string_lookup_7/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2`
.integer_lookup_1/None_Lookup/LookupTableFindV2.integer_lookup_1/None_Lookup/LookupTableFindV22^
-string_lookup_4/None_Lookup/LookupTableFindV2-string_lookup_4/None_Lookup/LookupTableFindV22^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV22^
-string_lookup_6/None_Lookup/LookupTableFindV2-string_lookup_6/None_Lookup/LookupTableFindV22^
-string_lookup_7/None_Lookup/LookupTableFindV2-string_lookup_7/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	country:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:QM
'
_output_shapes
:?????????
"
_user_specified_name
category:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:MI
'
_output_shapes
:?????????

_user_specified_namegoal:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
,
__inference_<lambda>_5170189
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
0
 __inference__initializer_5169937
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_restore_fn_5170176
restored_tensors_0	
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
 __inference__initializer_51698899
5key_value_init935861_lookuptableimportv2_table_handle1
-key_value_init935861_lookuptableimportv2_keys3
/key_value_init935861_lookuptableimportv2_values	
identity??(key_value_init935861/LookupTableImportV2?
(key_value_init935861/LookupTableImportV2LookupTableImportV25key_value_init935861_lookuptableimportv2_table_handle-key_value_init935861_lookuptableimportv2_keys/key_value_init935861_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init935861/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2T
(key_value_init935861/LookupTableImportV2(key_value_init935861/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
)__inference_model_1_layer_call_fn_5168680
country
	city_name
category
currency
launch_month	
goal
days_of_campaign
description
project_name
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17:	?_2

unknown_18:2

unknown_19:2

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcountry	city_namecategorycurrencylaunch_monthgoaldays_of_campaigndescriptionproject_nameunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_5168576o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	country:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:QM
'
_output_shapes
:?????????
"
_user_specified_name
category:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:MI
'
_output_shapes
:?????????

_user_specified_namegoal:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
d
+__inference_dropout_1_layer_call_fn_5169839

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_5168320o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
<
__inference__creator_5169881
identity??
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name935862*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
)__inference_model_1_layer_call_fn_5168290
country
	city_name
category
currency
launch_month	
goal
days_of_campaign
description
project_name
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17:	?_2

unknown_18:2

unknown_19:2

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcountry	city_namecategorycurrencylaunch_monthgoaldays_of_campaigndescriptionproject_nameunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_5168243o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	country:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:QM
'
_output_shapes
:?????????
"
_user_specified_name
category:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:MI
'
_output_shapes
:?????????

_user_specified_namegoal:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
?
%__inference_signature_wrapper_5169524
category
	city_name
country
currency
days_of_campaign
description
goal
launch_month	
project_name
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17:	?_2

unknown_18:2

unknown_19:2

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcountry	city_namecategorycurrencylaunch_monthgoaldays_of_campaigndescriptionproject_nameunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_5168024o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
category:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:PL
'
_output_shapes
:?????????
!
_user_specified_name	country:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:MI
'
_output_shapes
:?????????

_user_specified_namegoal:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
?
__inference_adapt_step_5169538
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
ReshapeReshapeIteratorGetNext:components:0Reshape/shape:output:0*
T0*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
??
?
D__inference_model_1_layer_call_and_return_conditional_losses_5169465
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8>
:string_lookup_4_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_4_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_6_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_6_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_7_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_7_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_1_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_1_none_lookup_lookuptablefindv2_default_value	
normalization_4_sub_y
normalization_4_sqrt_x
normalization_5_sub_y
normalization_5_sqrt_x
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x9
&dense_2_matmul_readvariableop_resource:	?_25
'dense_2_biasadd_readvariableop_resource:28
&dense_3_matmul_readvariableop_resource:25
'dense_3_biasadd_readvariableop_resource:
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?.integer_lookup_1/None_Lookup/LookupTableFindV2?-string_lookup_4/None_Lookup/LookupTableFindV2?-string_lookup_5/None_Lookup/LookupTableFindV2?-string_lookup_6/None_Lookup/LookupTableFindV2?-string_lookup_7/None_Lookup/LookupTableFindV2?
-string_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs_0;string_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_4/IdentityIdentity6string_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_4/bincount/ShapeShape!string_lookup_4/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_4/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_4/bincount/ProdProd'string_lookup_4/bincount/Shape:output:0'string_lookup_4/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_4/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_4/bincount/GreaterGreater&string_lookup_4/bincount/Prod:output:0+string_lookup_4/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_4/bincount/CastCast$string_lookup_4/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_4/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_4/bincount/MaxMax!string_lookup_4/Identity:output:0)string_lookup_4/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_4/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_4/bincount/addAddV2%string_lookup_4/bincount/Max:output:0'string_lookup_4/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_4/bincount/mulMul!string_lookup_4/bincount/Cast:y:0 string_lookup_4/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MaximumMaximum+string_lookup_4/bincount/minlength:output:0 string_lookup_4/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MinimumMinimum+string_lookup_4/bincount/maxlength:output:0$string_lookup_4/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_4/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_4/bincount/DenseBincountDenseBincount!string_lookup_4/Identity:output:0$string_lookup_4/bincount/Minimum:z:0)string_lookup_4/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs_1;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_5/bincount/ShapeShape!string_lookup_5/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_5/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_5/bincount/ProdProd'string_lookup_5/bincount/Shape:output:0'string_lookup_5/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_5/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_5/bincount/GreaterGreater&string_lookup_5/bincount/Prod:output:0+string_lookup_5/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_5/bincount/CastCast$string_lookup_5/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_5/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_5/bincount/MaxMax!string_lookup_5/Identity:output:0)string_lookup_5/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_5/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_5/bincount/addAddV2%string_lookup_5/bincount/Max:output:0'string_lookup_5/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_5/bincount/mulMul!string_lookup_5/bincount/Cast:y:0 string_lookup_5/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MaximumMaximum+string_lookup_5/bincount/minlength:output:0 string_lookup_5/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MinimumMinimum+string_lookup_5/bincount/maxlength:output:0$string_lookup_5/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_5/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_5/bincount/DenseBincountDenseBincount!string_lookup_5/Identity:output:0$string_lookup_5/bincount/Minimum:z:0)string_lookup_5/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????]*
binary_output(?
-string_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs_2;string_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_6/IdentityIdentity6string_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_6/bincount/ShapeShape!string_lookup_6/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_6/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_6/bincount/ProdProd'string_lookup_6/bincount/Shape:output:0'string_lookup_6/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_6/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_6/bincount/GreaterGreater&string_lookup_6/bincount/Prod:output:0+string_lookup_6/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_6/bincount/CastCast$string_lookup_6/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_6/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_6/bincount/MaxMax!string_lookup_6/Identity:output:0)string_lookup_6/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_6/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_6/bincount/addAddV2%string_lookup_6/bincount/Max:output:0'string_lookup_6/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_6/bincount/mulMul!string_lookup_6/bincount/Cast:y:0 string_lookup_6/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MaximumMaximum+string_lookup_6/bincount/minlength:output:0 string_lookup_6/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MinimumMinimum+string_lookup_6/bincount/maxlength:output:0$string_lookup_6/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_6/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_6/bincount/DenseBincountDenseBincount!string_lookup_6/Identity:output:0$string_lookup_6/bincount/Minimum:z:0)string_lookup_6/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
-string_lookup_7/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_7_none_lookup_lookuptablefindv2_table_handleinputs_3;string_lookup_7_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_7/IdentityIdentity6string_lookup_7/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_7/bincount/ShapeShape!string_lookup_7/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_7/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_7/bincount/ProdProd'string_lookup_7/bincount/Shape:output:0'string_lookup_7/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_7/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_7/bincount/GreaterGreater&string_lookup_7/bincount/Prod:output:0+string_lookup_7/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_7/bincount/CastCast$string_lookup_7/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_7/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_7/bincount/MaxMax!string_lookup_7/Identity:output:0)string_lookup_7/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_7/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_7/bincount/addAddV2%string_lookup_7/bincount/Max:output:0'string_lookup_7/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_7/bincount/mulMul!string_lookup_7/bincount/Cast:y:0 string_lookup_7/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MaximumMaximum+string_lookup_7/bincount/minlength:output:0 string_lookup_7/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MinimumMinimum+string_lookup_7/bincount/maxlength:output:0$string_lookup_7/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_7/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_7/bincount/DenseBincountDenseBincount!string_lookup_7/Identity:output:0$string_lookup_7/bincount/Minimum:z:0)string_lookup_7/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
.integer_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs_4<integer_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_1/IdentityIdentity7integer_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_1/bincount/ShapeShape"integer_lookup_1/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_1/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_1/bincount/ProdProd(integer_lookup_1/bincount/Shape:output:0(integer_lookup_1/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_1/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_1/bincount/GreaterGreater'integer_lookup_1/bincount/Prod:output:0,integer_lookup_1/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_1/bincount/CastCast%integer_lookup_1/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_1/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_1/bincount/MaxMax"integer_lookup_1/Identity:output:0*integer_lookup_1/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_1/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_1/bincount/addAddV2&integer_lookup_1/bincount/Max:output:0(integer_lookup_1/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_1/bincount/mulMul"integer_lookup_1/bincount/Cast:y:0!integer_lookup_1/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MaximumMaximum,integer_lookup_1/bincount/minlength:output:0!integer_lookup_1/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MinimumMinimum,integer_lookup_1/bincount/maxlength:output:0%integer_lookup_1/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_1/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_1/bincount/DenseBincountDenseBincount"integer_lookup_1/Identity:output:0%integer_lookup_1/bincount/Minimum:z:0*integer_lookup_1/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(m
normalization_4/subSubinputs_5normalization_4_sub_y*
T0*'
_output_shapes
:?????????]
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*
_output_shapes

:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_5/subSubinputs_6normalization_5_sub_y*
T0*'
_output_shapes
:?????????]
normalization_5/SqrtSqrtnormalization_5_sqrt_x*
T0*
_output_shapes

:^
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_6/subSubinputs_7normalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_7/subSubinputs_8normalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:?????????[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_1/concatConcatV2/string_lookup_4/bincount/DenseBincount:output:0/string_lookup_5/bincount/DenseBincount:output:0/string_lookup_6/bincount/DenseBincount:output:0/string_lookup_7/bincount/DenseBincount:output:00integer_lookup_1/bincount/DenseBincount:output:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0"concatenate_1/concat/axis:output:0*
N	*
T0*(
_output_shapes
:??????????_?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?_2*
dtype0?
dense_2/MatMulMatMulconcatenate_1/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_1/dropout/MulMuldense_2/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2a
dropout_1/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
dense_3/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp/^integer_lookup_1/None_Lookup/LookupTableFindV2.^string_lookup_4/None_Lookup/LookupTableFindV2.^string_lookup_5/None_Lookup/LookupTableFindV2.^string_lookup_6/None_Lookup/LookupTableFindV2.^string_lookup_7/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2`
.integer_lookup_1/None_Lookup/LookupTableFindV2.integer_lookup_1/None_Lookup/LookupTableFindV22^
-string_lookup_4/None_Lookup/LookupTableFindV2-string_lookup_4/None_Lookup/LookupTableFindV22^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV22^
-string_lookup_6/None_Lookup/LookupTableFindV2-string_lookup_6/None_Lookup/LookupTableFindV22^
-string_lookup_7/None_Lookup/LookupTableFindV2-string_lookup_7/None_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?U
?
 __inference__traced_save_5170439
file_prefixJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	L
Hsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2N
Jsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2_1	L
Hsavev2_mutablehashtable_2_lookup_table_export_values_lookuptableexportv2N
Jsavev2_mutablehashtable_2_lookup_table_export_values_lookuptableexportv2_1	L
Hsavev2_mutablehashtable_3_lookup_table_export_values_lookuptableexportv2N
Jsavev2_mutablehashtable_3_lookup_table_export_values_lookuptableexportv2_1	L
Hsavev2_mutablehashtable_4_lookup_table_export_values_lookuptableexportv2	N
Jsavev2_mutablehashtable_4_lookup_table_export_values_lookuptableexportv2_1	#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	%
!savev2_mean_1_read_readvariableop)
%savev2_variance_1_read_readvariableop&
"savev2_count_1_read_readvariableop	%
!savev2_mean_2_read_readvariableop)
%savev2_variance_2_read_readvariableop&
"savev2_count_2_read_readvariableop	%
!savev2_mean_3_read_readvariableop)
%savev2_variance_3_read_readvariableop&
"savev2_count_3_read_readvariableop	-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_5_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
savev2_const_28

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B8layer_with_weights-0/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-0/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-1/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-1/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-2/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-2/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-3/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-3/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-4/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-4/token_counts/.ATTRIBUTES/table-valuesB4layer_with_weights-5/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-5/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-6/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-8/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1Hsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2Jsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2_1Hsavev2_mutablehashtable_2_lookup_table_export_values_lookuptableexportv2Jsavev2_mutablehashtable_2_lookup_table_export_values_lookuptableexportv2_1Hsavev2_mutablehashtable_3_lookup_table_export_values_lookuptableexportv2Jsavev2_mutablehashtable_3_lookup_table_export_values_lookuptableexportv2_1Hsavev2_mutablehashtable_4_lookup_table_export_values_lookuptableexportv2Jsavev2_mutablehashtable_4_lookup_table_export_values_lookuptableexportv2_1savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop!savev2_mean_1_read_readvariableop%savev2_variance_1_read_readvariableop"savev2_count_1_read_readvariableop!savev2_mean_2_read_readvariableop%savev2_variance_2_read_readvariableop"savev2_count_2_read_readvariableop!savev2_mean_3_read_readvariableop%savev2_variance_3_read_readvariableop"savev2_count_3_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_5_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const_28"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,											?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::::::::::: ::: ::: ::: :	?_2:2:2:: : : : : : : : : :	?_2:2:2::	?_2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :%!

_output_shapes
:	?_2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :%$!

_output_shapes
:	?_2: %

_output_shapes
:2:$& 

_output_shapes

:2: '

_output_shapes
::%(!

_output_shapes
:	?_2: )

_output_shapes
:2:$* 

_output_shapes

:2: +

_output_shapes
::,

_output_shapes
: 
?'
?
__inference_adapt_step_5169688
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?IteratorGetNext?ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?add/ReadVariableOp?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2	k
CastCastIteratorGetNext:components:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????h
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeanCast:y:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:?
moments/SquaredDifferenceSquaredDifferenceCast:y:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 M
ShapeShapeCast:y:0*
T0*
_output_shapes
:*
out_type0	Z
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: M
Cast_1CastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_2Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: K
truedivRealDiv
Cast_1:y:0
Cast_2:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0?
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0?
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
?
0
 __inference__initializer_5170003
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
ث
?
D__inference_model_1_layer_call_and_return_conditional_losses_5168243

inputs
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8>
:string_lookup_4_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_4_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_6_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_6_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_7_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_7_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_1_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_1_none_lookup_lookuptablefindv2_default_value	
normalization_4_sub_y
normalization_4_sqrt_x
normalization_5_sub_y
normalization_5_sqrt_x
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x"
dense_2_5168213:	?_2
dense_2_5168215:2!
dense_3_5168237:2
dense_3_5168239:
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?.integer_lookup_1/None_Lookup/LookupTableFindV2?-string_lookup_4/None_Lookup/LookupTableFindV2?-string_lookup_5/None_Lookup/LookupTableFindV2?-string_lookup_6/None_Lookup/LookupTableFindV2?-string_lookup_7/None_Lookup/LookupTableFindV2?
-string_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_4/IdentityIdentity6string_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_4/bincount/ShapeShape!string_lookup_4/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_4/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_4/bincount/ProdProd'string_lookup_4/bincount/Shape:output:0'string_lookup_4/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_4/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_4/bincount/GreaterGreater&string_lookup_4/bincount/Prod:output:0+string_lookup_4/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_4/bincount/CastCast$string_lookup_4/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_4/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_4/bincount/MaxMax!string_lookup_4/Identity:output:0)string_lookup_4/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_4/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_4/bincount/addAddV2%string_lookup_4/bincount/Max:output:0'string_lookup_4/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_4/bincount/mulMul!string_lookup_4/bincount/Cast:y:0 string_lookup_4/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MaximumMaximum+string_lookup_4/bincount/minlength:output:0 string_lookup_4/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MinimumMinimum+string_lookup_4/bincount/maxlength:output:0$string_lookup_4/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_4/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_4/bincount/DenseBincountDenseBincount!string_lookup_4/Identity:output:0$string_lookup_4/bincount/Minimum:z:0)string_lookup_4/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs_1;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_5/bincount/ShapeShape!string_lookup_5/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_5/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_5/bincount/ProdProd'string_lookup_5/bincount/Shape:output:0'string_lookup_5/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_5/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_5/bincount/GreaterGreater&string_lookup_5/bincount/Prod:output:0+string_lookup_5/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_5/bincount/CastCast$string_lookup_5/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_5/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_5/bincount/MaxMax!string_lookup_5/Identity:output:0)string_lookup_5/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_5/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_5/bincount/addAddV2%string_lookup_5/bincount/Max:output:0'string_lookup_5/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_5/bincount/mulMul!string_lookup_5/bincount/Cast:y:0 string_lookup_5/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MaximumMaximum+string_lookup_5/bincount/minlength:output:0 string_lookup_5/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MinimumMinimum+string_lookup_5/bincount/maxlength:output:0$string_lookup_5/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_5/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_5/bincount/DenseBincountDenseBincount!string_lookup_5/Identity:output:0$string_lookup_5/bincount/Minimum:z:0)string_lookup_5/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????]*
binary_output(?
-string_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs_2;string_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_6/IdentityIdentity6string_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_6/bincount/ShapeShape!string_lookup_6/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_6/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_6/bincount/ProdProd'string_lookup_6/bincount/Shape:output:0'string_lookup_6/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_6/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_6/bincount/GreaterGreater&string_lookup_6/bincount/Prod:output:0+string_lookup_6/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_6/bincount/CastCast$string_lookup_6/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_6/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_6/bincount/MaxMax!string_lookup_6/Identity:output:0)string_lookup_6/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_6/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_6/bincount/addAddV2%string_lookup_6/bincount/Max:output:0'string_lookup_6/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_6/bincount/mulMul!string_lookup_6/bincount/Cast:y:0 string_lookup_6/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MaximumMaximum+string_lookup_6/bincount/minlength:output:0 string_lookup_6/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MinimumMinimum+string_lookup_6/bincount/maxlength:output:0$string_lookup_6/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_6/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_6/bincount/DenseBincountDenseBincount!string_lookup_6/Identity:output:0$string_lookup_6/bincount/Minimum:z:0)string_lookup_6/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
-string_lookup_7/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_7_none_lookup_lookuptablefindv2_table_handleinputs_3;string_lookup_7_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_7/IdentityIdentity6string_lookup_7/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_7/bincount/ShapeShape!string_lookup_7/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_7/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_7/bincount/ProdProd'string_lookup_7/bincount/Shape:output:0'string_lookup_7/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_7/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_7/bincount/GreaterGreater&string_lookup_7/bincount/Prod:output:0+string_lookup_7/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_7/bincount/CastCast$string_lookup_7/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_7/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_7/bincount/MaxMax!string_lookup_7/Identity:output:0)string_lookup_7/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_7/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_7/bincount/addAddV2%string_lookup_7/bincount/Max:output:0'string_lookup_7/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_7/bincount/mulMul!string_lookup_7/bincount/Cast:y:0 string_lookup_7/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MaximumMaximum+string_lookup_7/bincount/minlength:output:0 string_lookup_7/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MinimumMinimum+string_lookup_7/bincount/maxlength:output:0$string_lookup_7/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_7/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_7/bincount/DenseBincountDenseBincount!string_lookup_7/Identity:output:0$string_lookup_7/bincount/Minimum:z:0)string_lookup_7/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
.integer_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs_4<integer_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_1/IdentityIdentity7integer_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_1/bincount/ShapeShape"integer_lookup_1/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_1/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_1/bincount/ProdProd(integer_lookup_1/bincount/Shape:output:0(integer_lookup_1/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_1/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_1/bincount/GreaterGreater'integer_lookup_1/bincount/Prod:output:0,integer_lookup_1/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_1/bincount/CastCast%integer_lookup_1/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_1/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_1/bincount/MaxMax"integer_lookup_1/Identity:output:0*integer_lookup_1/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_1/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_1/bincount/addAddV2&integer_lookup_1/bincount/Max:output:0(integer_lookup_1/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_1/bincount/mulMul"integer_lookup_1/bincount/Cast:y:0!integer_lookup_1/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MaximumMaximum,integer_lookup_1/bincount/minlength:output:0!integer_lookup_1/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MinimumMinimum,integer_lookup_1/bincount/maxlength:output:0%integer_lookup_1/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_1/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_1/bincount/DenseBincountDenseBincount"integer_lookup_1/Identity:output:0%integer_lookup_1/bincount/Minimum:z:0*integer_lookup_1/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(m
normalization_4/subSubinputs_5normalization_4_sub_y*
T0*'
_output_shapes
:?????????]
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*
_output_shapes

:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_5/subSubinputs_6normalization_5_sub_y*
T0*'
_output_shapes
:?????????]
normalization_5/SqrtSqrtnormalization_5_sqrt_x*
T0*
_output_shapes

:^
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_6/subSubinputs_7normalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_7/subSubinputs_8normalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:??????????
concatenate_1/PartitionedCallPartitionedCall/string_lookup_4/bincount/DenseBincount:output:0/string_lookup_5/bincount/DenseBincount:output:0/string_lookup_6/bincount/DenseBincount:output:0/string_lookup_7/bincount/DenseBincount:output:00integer_lookup_1/bincount/DenseBincount:output:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????_* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_5168199?
dense_2/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_2_5168213dense_2_5168215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_5168212?
dropout_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_5168223?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_3_5168237dense_3_5168239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_5168236w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall/^integer_lookup_1/None_Lookup/LookupTableFindV2.^string_lookup_4/None_Lookup/LookupTableFindV2.^string_lookup_5/None_Lookup/LookupTableFindV2.^string_lookup_6/None_Lookup/LookupTableFindV2.^string_lookup_7/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2`
.integer_lookup_1/None_Lookup/LookupTableFindV2.integer_lookup_1/None_Lookup/LookupTableFindV22^
-string_lookup_4/None_Lookup/LookupTableFindV2-string_lookup_4/None_Lookup/LookupTableFindV22^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV22^
-string_lookup_6/None_Lookup/LookupTableFindV2-string_lookup_6/None_Lookup/LookupTableFindV22^
-string_lookup_7/None_Lookup/LookupTableFindV2-string_lookup_7/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
?
__inference_adapt_step_5169552
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
ReshapeReshapeIteratorGetNext:components:0Reshape/shape:output:0*
T0*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
.
__inference__destroyer_5169975
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?	
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_5169856

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
D__inference_dense_3_layer_call_and_return_conditional_losses_5169876

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
0
 __inference__initializer_5169904
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
D__inference_dense_3_layer_call_and_return_conditional_losses_5168236

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
)__inference_model_1_layer_call_fn_5169067
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17:	?_2

unknown_18:2

unknown_19:2

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_5168243o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
?
)__inference_dense_3_layer_call_fn_5169865

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_5168236o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
߯
?
D__inference_model_1_layer_call_and_return_conditional_losses_5169291
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8>
:string_lookup_4_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_4_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_6_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_6_none_lookup_lookuptablefindv2_default_value	>
:string_lookup_7_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_7_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_1_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_1_none_lookup_lookuptablefindv2_default_value	
normalization_4_sub_y
normalization_4_sqrt_x
normalization_5_sub_y
normalization_5_sqrt_x
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x9
&dense_2_matmul_readvariableop_resource:	?_25
'dense_2_biasadd_readvariableop_resource:28
&dense_3_matmul_readvariableop_resource:25
'dense_3_biasadd_readvariableop_resource:
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?.integer_lookup_1/None_Lookup/LookupTableFindV2?-string_lookup_4/None_Lookup/LookupTableFindV2?-string_lookup_5/None_Lookup/LookupTableFindV2?-string_lookup_6/None_Lookup/LookupTableFindV2?-string_lookup_7/None_Lookup/LookupTableFindV2?
-string_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs_0;string_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_4/IdentityIdentity6string_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_4/bincount/ShapeShape!string_lookup_4/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_4/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_4/bincount/ProdProd'string_lookup_4/bincount/Shape:output:0'string_lookup_4/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_4/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_4/bincount/GreaterGreater&string_lookup_4/bincount/Prod:output:0+string_lookup_4/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_4/bincount/CastCast$string_lookup_4/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_4/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_4/bincount/MaxMax!string_lookup_4/Identity:output:0)string_lookup_4/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_4/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_4/bincount/addAddV2%string_lookup_4/bincount/Max:output:0'string_lookup_4/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_4/bincount/mulMul!string_lookup_4/bincount/Cast:y:0 string_lookup_4/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MaximumMaximum+string_lookup_4/bincount/minlength:output:0 string_lookup_4/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_4/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_4/bincount/MinimumMinimum+string_lookup_4/bincount/maxlength:output:0$string_lookup_4/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_4/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_4/bincount/DenseBincountDenseBincount!string_lookup_4/Identity:output:0$string_lookup_4/bincount/Minimum:z:0)string_lookup_4/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs_1;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_5/bincount/ShapeShape!string_lookup_5/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_5/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_5/bincount/ProdProd'string_lookup_5/bincount/Shape:output:0'string_lookup_5/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_5/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_5/bincount/GreaterGreater&string_lookup_5/bincount/Prod:output:0+string_lookup_5/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_5/bincount/CastCast$string_lookup_5/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_5/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_5/bincount/MaxMax!string_lookup_5/Identity:output:0)string_lookup_5/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_5/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_5/bincount/addAddV2%string_lookup_5/bincount/Max:output:0'string_lookup_5/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_5/bincount/mulMul!string_lookup_5/bincount/Cast:y:0 string_lookup_5/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MaximumMaximum+string_lookup_5/bincount/minlength:output:0 string_lookup_5/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_5/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?]?
 string_lookup_5/bincount/MinimumMinimum+string_lookup_5/bincount/maxlength:output:0$string_lookup_5/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_5/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_5/bincount/DenseBincountDenseBincount!string_lookup_5/Identity:output:0$string_lookup_5/bincount/Minimum:z:0)string_lookup_5/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????]*
binary_output(?
-string_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs_2;string_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_6/IdentityIdentity6string_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_6/bincount/ShapeShape!string_lookup_6/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_6/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_6/bincount/ProdProd'string_lookup_6/bincount/Shape:output:0'string_lookup_6/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_6/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_6/bincount/GreaterGreater&string_lookup_6/bincount/Prod:output:0+string_lookup_6/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_6/bincount/CastCast$string_lookup_6/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_6/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_6/bincount/MaxMax!string_lookup_6/Identity:output:0)string_lookup_6/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_6/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_6/bincount/addAddV2%string_lookup_6/bincount/Max:output:0'string_lookup_6/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_6/bincount/mulMul!string_lookup_6/bincount/Cast:y:0 string_lookup_6/bincount/add:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MaximumMaximum+string_lookup_6/bincount/minlength:output:0 string_lookup_6/bincount/mul:z:0*
T0	*
_output_shapes
: e
"string_lookup_6/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
 string_lookup_6/bincount/MinimumMinimum+string_lookup_6/bincount/maxlength:output:0$string_lookup_6/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_6/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_6/bincount/DenseBincountDenseBincount!string_lookup_6/Identity:output:0$string_lookup_6/bincount/Minimum:z:0)string_lookup_6/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
-string_lookup_7/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_7_none_lookup_lookuptablefindv2_table_handleinputs_3;string_lookup_7_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_7/IdentityIdentity6string_lookup_7/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????o
string_lookup_7/bincount/ShapeShape!string_lookup_7/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_7/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_7/bincount/ProdProd'string_lookup_7/bincount/Shape:output:0'string_lookup_7/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_7/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
 string_lookup_7/bincount/GreaterGreater&string_lookup_7/bincount/Prod:output:0+string_lookup_7/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_7/bincount/CastCast$string_lookup_7/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_7/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_7/bincount/MaxMax!string_lookup_7/Identity:output:0)string_lookup_7/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_7/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_7/bincount/addAddV2%string_lookup_7/bincount/Max:output:0'string_lookup_7/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_7/bincount/mulMul!string_lookup_7/bincount/Cast:y:0 string_lookup_7/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MaximumMaximum+string_lookup_7/bincount/minlength:output:0 string_lookup_7/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_7/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
 string_lookup_7/bincount/MinimumMinimum+string_lookup_7/bincount/maxlength:output:0$string_lookup_7/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_7/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
&string_lookup_7/bincount/DenseBincountDenseBincount!string_lookup_7/Identity:output:0$string_lookup_7/bincount/Minimum:z:0)string_lookup_7/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
.integer_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs_4<integer_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_1/IdentityIdentity7integer_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_1/bincount/ShapeShape"integer_lookup_1/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_1/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_1/bincount/ProdProd(integer_lookup_1/bincount/Shape:output:0(integer_lookup_1/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_1/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_1/bincount/GreaterGreater'integer_lookup_1/bincount/Prod:output:0,integer_lookup_1/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_1/bincount/CastCast%integer_lookup_1/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_1/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_1/bincount/MaxMax"integer_lookup_1/Identity:output:0*integer_lookup_1/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_1/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_1/bincount/addAddV2&integer_lookup_1/bincount/Max:output:0(integer_lookup_1/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_1/bincount/mulMul"integer_lookup_1/bincount/Cast:y:0!integer_lookup_1/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MaximumMaximum,integer_lookup_1/bincount/minlength:output:0!integer_lookup_1/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_1/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_1/bincount/MinimumMinimum,integer_lookup_1/bincount/maxlength:output:0%integer_lookup_1/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_1/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_1/bincount/DenseBincountDenseBincount"integer_lookup_1/Identity:output:0%integer_lookup_1/bincount/Minimum:z:0*integer_lookup_1/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(m
normalization_4/subSubinputs_5normalization_4_sub_y*
T0*'
_output_shapes
:?????????]
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*
_output_shapes

:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_5/subSubinputs_6normalization_5_sub_y*
T0*'
_output_shapes
:?????????]
normalization_5/SqrtSqrtnormalization_5_sqrt_x*
T0*
_output_shapes

:^
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_6/subSubinputs_7normalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_7/subSubinputs_8normalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:?????????[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_1/concatConcatV2/string_lookup_4/bincount/DenseBincount:output:0/string_lookup_5/bincount/DenseBincount:output:0/string_lookup_6/bincount/DenseBincount:output:0/string_lookup_7/bincount/DenseBincount:output:00integer_lookup_1/bincount/DenseBincount:output:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0"concatenate_1/concat/axis:output:0*
N	*
T0*(
_output_shapes
:??????????_?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?_2*
dtype0?
dense_2/MatMulMatMulconcatenate_1/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2l
dropout_1/IdentityIdentitydense_2/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
dense_3/MatMulMatMuldropout_1/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp/^integer_lookup_1/None_Lookup/LookupTableFindV2.^string_lookup_4/None_Lookup/LookupTableFindV2.^string_lookup_5/None_Lookup/LookupTableFindV2.^string_lookup_6/None_Lookup/LookupTableFindV2.^string_lookup_7/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2`
.integer_lookup_1/None_Lookup/LookupTableFindV2.integer_lookup_1/None_Lookup/LookupTableFindV22^
-string_lookup_4/None_Lookup/LookupTableFindV2-string_lookup_4/None_Lookup/LookupTableFindV22^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV22^
-string_lookup_6/None_Lookup/LookupTableFindV2-string_lookup_6/None_Lookup/LookupTableFindV22^
-string_lookup_7/None_Lookup/LookupTableFindV2-string_lookup_7/None_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
H
__inference__creator_5170031
identity:	 ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_nametable_1053684*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
?
 __inference__initializer_5170021:
6key_value_init1092913_lookuptableimportv2_table_handle2
.key_value_init1092913_lookuptableimportv2_keys	4
0key_value_init1092913_lookuptableimportv2_values	
identity??)key_value_init1092913/LookupTableImportV2?
)key_value_init1092913/LookupTableImportV2LookupTableImportV26key_value_init1092913_lookuptableimportv2_table_handle.key_value_init1092913_lookuptableimportv2_keys0key_value_init1092913_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: r
NoOpNoOp*^key_value_init1092913/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2V
)key_value_init1092913/LookupTableImportV2)key_value_init1092913/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
,
__inference_<lambda>_5170241
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_save_fn_5170087
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
/__inference_concatenate_1_layer_call_fn_5169795
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????_* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_5168199a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????_"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:??????????]:??????????:?????????:?????????:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????]
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8
?
?
__inference_restore_fn_5170122
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?'
?
__inference_adapt_step_5169641
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?IteratorGetNext?ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?add/ReadVariableOp?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2k
CastCastIteratorGetNext:components:0*

DstT0*

SrcT0*'
_output_shapes
:?????????h
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeanCast:y:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:?
moments/SquaredDifferenceSquaredDifferenceCast:y:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 M
ShapeShapeCast:y:0*
T0*
_output_shapes
:*
out_type0	Z
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: M
Cast_1CastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_2Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: K
truedivRealDiv
Cast_1:y:0
Cast_2:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0?
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0?
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
?'
?
__inference_adapt_step_5169735
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?IteratorGetNext?ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?add/ReadVariableOp?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2	k
CastCastIteratorGetNext:components:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????h
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeanCast:y:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:?
moments/SquaredDifferenceSquaredDifferenceCast:y:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 M
ShapeShapeCast:y:0*
T0*
_output_shapes
:*
out_type0	Z
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: M
Cast_1CastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_2Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: K
truedivRealDiv
Cast_1:y:0
Cast_2:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0?
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0?
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
?
?
__inference_adapt_step_5169594
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2	`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
ReshapeReshapeIteratorGetNext:components:0Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0	*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0	*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0	*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
.
__inference__destroyer_5169894
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
.
__inference__destroyer_5169993
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
,
__inference_<lambda>_5170215
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
 __inference__initializer_5169988:
6key_value_init1053650_lookuptableimportv2_table_handle2
.key_value_init1053650_lookuptableimportv2_keys4
0key_value_init1053650_lookuptableimportv2_values	
identity??)key_value_init1053650/LookupTableImportV2?
)key_value_init1053650/LookupTableImportV2LookupTableImportV26key_value_init1053650_lookuptableimportv2_table_handle.key_value_init1053650_lookuptableimportv2_keys0key_value_init1053650_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: r
NoOpNoOp*^key_value_init1053650/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2V
)key_value_init1053650/LookupTableImportV2)key_value_init1053650/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_6:0StatefulPartitionedCall_78"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
category1
serving_default_category:0?????????
?
	city_name2
serving_default_city_name:0?????????
;
country0
serving_default_country:0?????????
=
currency1
serving_default_currency:0?????????
M
days_of_campaign9
"serving_default_days_of_campaign:0?????????
C
description4
serving_default_description:0?????????
5
goal-
serving_default_goal:0?????????
E
launch_month5
serving_default_launch_month:0	?????????
E
project_name5
serving_default_project_name:0?????????=
dense_32
StatefulPartitionedCall_5:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-0

layer-9
layer_with_weights-1
layer-10
layer_with_weights-2
layer-11
layer_with_weights-3
layer-12
layer_with_weights-4
layer-13
layer_with_weights-5
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
a
 lookup_table
!token_counts
"	keras_api
#_adapt_function"
_tf_keras_layer
a
$lookup_table
%token_counts
&	keras_api
'_adapt_function"
_tf_keras_layer
a
(lookup_table
)token_counts
*	keras_api
+_adapt_function"
_tf_keras_layer
a
,lookup_table
-token_counts
.	keras_api
/_adapt_function"
_tf_keras_layer
a
0lookup_table
1token_counts
2	keras_api
3_adapt_function"
_tf_keras_layer
?
4
_keep_axis
5_reduce_axis
6_reduce_axis_mask
7_broadcast_shape
8mean
8
adapt_mean
9variance
9adapt_variance
	:count
;	keras_api
<_adapt_function"
_tf_keras_layer
?
=
_keep_axis
>_reduce_axis
?_reduce_axis_mask
@_broadcast_shape
Amean
A
adapt_mean
Bvariance
Badapt_variance
	Ccount
D	keras_api
E_adapt_function"
_tf_keras_layer
?
F
_keep_axis
G_reduce_axis
H_reduce_axis_mask
I_broadcast_shape
Jmean
J
adapt_mean
Kvariance
Kadapt_variance
	Lcount
M	keras_api
N_adapt_function"
_tf_keras_layer
?
O
_keep_axis
P_reduce_axis
Q_reduce_axis_mask
R_broadcast_shape
Smean
S
adapt_mean
Tvariance
Tadapt_variance
	Ucount
V	keras_api
W_adapt_function"
_tf_keras_layer
?
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
?

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
?
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j_random_generator
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
?

mkernel
nbias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
?
uiter

vbeta_1

wbeta_2
	xdecay
ylearning_rate^m?_m?mm?nm?^v?_v?mv?nv?"
	optimizer
?
85
96
:7
A8
B9
C10
J11
K12
L13
S14
T15
U16
^17
_18
m19
n20"
trackable_list_wrapper
<
^0
_1
m2
n3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_model_1_layer_call_fn_5168290
)__inference_model_1_layer_call_fn_5169067
)__inference_model_1_layer_call_fn_5169124
)__inference_model_1_layer_call_fn_5168680?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_model_1_layer_call_and_return_conditional_losses_5169291
D__inference_model_1_layer_call_and_return_conditional_losses_5169465
D__inference_model_1_layer_call_and_return_conditional_losses_5168842
D__inference_model_1_layer_call_and_return_conditional_losses_5169004?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_5168024country	city_namecategorycurrencylaunch_monthgoaldays_of_campaigndescriptionproject_name	"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
serving_default"
signature_map
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
?2?
__inference_adapt_step_5169538?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
?2?
__inference_adapt_step_5169552?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
?2?
__inference_adapt_step_5169566?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
?2?
__inference_adapt_step_5169580?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
?2?
__inference_adapt_step_5169594?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
?2?
__inference_adapt_step_5169641?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
?2?
__inference_adapt_step_5169688?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
?2?
__inference_adapt_step_5169735?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
?2?
__inference_adapt_step_5169782?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_concatenate_1_layer_call_fn_5169795?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_concatenate_1_layer_call_and_return_conditional_losses_5169809?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:	?_22dense_2/kernel
:22dense_2/bias
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_2_layer_call_fn_5169818?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_2_layer_call_and_return_conditional_losses_5169829?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
f	variables
gtrainable_variables
hregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_1_layer_call_fn_5169834
+__inference_dropout_1_layer_call_fn_5169839?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_1_layer_call_and_return_conditional_losses_5169844
F__inference_dropout_1_layer_call_and_return_conditional_losses_5169856?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 :22dense_3/kernel
:2dense_3/bias
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_3_layer_call_fn_5169865?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_3_layer_call_and_return_conditional_losses_5169876?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
{
85
96
:7
A8
B9
C10
J11
K12
L13
S14
T15
U16"
trackable_list_wrapper
?
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
17
18
19
20
21"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_signature_wrapper_5169524category	city_namecountrycurrencydays_of_campaigndescriptiongoallaunch_monthproject_name"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
?2?
__inference__creator_5169881?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5169889?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5169894?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_5169899?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5169904?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5169909?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_5169914?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5169922?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5169927?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_5169932?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5169937?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5169942?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_5169947?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5169955?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5169960?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_5169965?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5169970?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5169975?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_5169980?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5169988?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5169993?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_5169998?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5170003?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5170008?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_5170013?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5170021?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5170026?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_5170031?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5170036?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5170041?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
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

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
&:$	?_22Adam/dense_2/kernel/m
:22Adam/dense_2/bias/m
%:#22Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
&:$	?_22Adam/dense_2/kernel/v
:22Adam/dense_2/bias/v
%:#22Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
?B?
__inference_save_fn_5170060checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_5170068restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?B?
__inference_save_fn_5170087checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_5170095restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?B?
__inference_save_fn_5170114checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_5170122restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?B?
__inference_save_fn_5170141checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_5170149restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?B?
__inference_save_fn_5170168checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_5170176restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?	
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9
J

Const_10
J

Const_11
J

Const_12
J

Const_13
J

Const_14
J

Const_15
J

Const_16
J

Const_17
J

Const_18
J

Const_19
J

Const_20
J

Const_21
J

Const_22
J

Const_23
J

Const_24
J

Const_25
J

Const_26
J

Const_278
__inference__creator_5169881?

? 
? "? 8
__inference__creator_5169899?

? 
? "? 8
__inference__creator_5169914?

? 
? "? 8
__inference__creator_5169932?

? 
? "? 8
__inference__creator_5169947?

? 
? "? 8
__inference__creator_5169965?

? 
? "? 8
__inference__creator_5169980?

? 
? "? 8
__inference__creator_5169998?

? 
? "? 8
__inference__creator_5170013?

? 
? "? 8
__inference__creator_5170031?

? 
? "? :
__inference__destroyer_5169894?

? 
? "? :
__inference__destroyer_5169909?

? 
? "? :
__inference__destroyer_5169927?

? 
? "? :
__inference__destroyer_5169942?

? 
? "? :
__inference__destroyer_5169960?

? 
? "? :
__inference__destroyer_5169975?

? 
? "? :
__inference__destroyer_5169993?

? 
? "? :
__inference__destroyer_5170008?

? 
? "? :
__inference__destroyer_5170026?

? 
? "? :
__inference__destroyer_5170041?

? 
? "? C
 __inference__initializer_5169889 ???

? 
? "? <
 __inference__initializer_5169904?

? 
? "? C
 __inference__initializer_5169922$???

? 
? "? <
 __inference__initializer_5169937?

? 
? "? C
 __inference__initializer_5169955(???

? 
? "? <
 __inference__initializer_5169970?

? 
? "? C
 __inference__initializer_5169988,???

? 
? "? <
 __inference__initializer_5170003?

? 
? "? C
 __inference__initializer_51700210???

? 
? "? <
 __inference__initializer_5170036?

? 
? "? ?
"__inference__wrapped_model_5168024?# ?$?(?,?0?????????^_mn???
???
???
!?
country?????????
#? 
	city_name?????????
"?
category?????????
"?
currency?????????
&?#
launch_month?????????	
?
goal?????????
*?'
days_of_campaign?????????
%?"
description?????????
&?#
project_name?????????
? "1?.
,
dense_3!?
dense_3?????????p
__inference_adapt_step_5169538N!?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 p
__inference_adapt_step_5169552N%?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 p
__inference_adapt_step_5169566N)?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 p
__inference_adapt_step_5169580N-?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 p
__inference_adapt_step_5169594N1?C?@
9?6
4?1?
??????????	IteratorSpec 
? "
 p
__inference_adapt_step_5169641N:89C?@
9?6
4?1?
??????????IteratorSpec 
? "
 p
__inference_adapt_step_5169688NCABC?@
9?6
4?1?
??????????	IteratorSpec 
? "
 p
__inference_adapt_step_5169735NLJKC?@
9?6
4?1?
??????????	IteratorSpec 
? "
 p
__inference_adapt_step_5169782NUSTC?@
9?6
4?1?
??????????	IteratorSpec 
? "
 ?
J__inference_concatenate_1_layer_call_and_return_conditional_losses_5169809????
???
???
"?
inputs/0?????????
#? 
inputs/1??????????]
#? 
inputs/2??????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
? "&?#
?
0??????????_
? ?
/__inference_concatenate_1_layer_call_fn_5169795????
???
???
"?
inputs/0?????????
#? 
inputs/1??????????]
#? 
inputs/2??????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
? "???????????_?
D__inference_dense_2_layer_call_and_return_conditional_losses_5169829]^_0?-
&?#
!?
inputs??????????_
? "%?"
?
0?????????2
? }
)__inference_dense_2_layer_call_fn_5169818P^_0?-
&?#
!?
inputs??????????_
? "??????????2?
D__inference_dense_3_layer_call_and_return_conditional_losses_5169876\mn/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? |
)__inference_dense_3_layer_call_fn_5169865Omn/?,
%?"
 ?
inputs?????????2
? "???????????
F__inference_dropout_1_layer_call_and_return_conditional_losses_5169844\3?0
)?&
 ?
inputs?????????2
p 
? "%?"
?
0?????????2
? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_5169856\3?0
)?&
 ?
inputs?????????2
p
? "%?"
?
0?????????2
? ~
+__inference_dropout_1_layer_call_fn_5169834O3?0
)?&
 ?
inputs?????????2
p 
? "??????????2~
+__inference_dropout_1_layer_call_fn_5169839O3?0
)?&
 ?
inputs?????????2
p
? "??????????2?
D__inference_model_1_layer_call_and_return_conditional_losses_5168842?# ?$?(?,?0?????????^_mn???
???
???
!?
country?????????
#? 
	city_name?????????
"?
category?????????
"?
currency?????????
&?#
launch_month?????????	
?
goal?????????
*?'
days_of_campaign?????????
%?"
description?????????
&?#
project_name?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_1_layer_call_and_return_conditional_losses_5169004?# ?$?(?,?0?????????^_mn???
???
???
!?
country?????????
#? 
	city_name?????????
"?
category?????????
"?
currency?????????
&?#
launch_month?????????	
?
goal?????????
*?'
days_of_campaign?????????
%?"
description?????????
&?#
project_name?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_model_1_layer_call_and_return_conditional_losses_5169291?# ?$?(?,?0?????????^_mn???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????	
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_1_layer_call_and_return_conditional_losses_5169465?# ?$?(?,?0?????????^_mn???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????	
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
p

 
? "%?"
?
0?????????
? ?
)__inference_model_1_layer_call_fn_5168290?# ?$?(?,?0?????????^_mn???
???
???
!?
country?????????
#? 
	city_name?????????
"?
category?????????
"?
currency?????????
&?#
launch_month?????????	
?
goal?????????
*?'
days_of_campaign?????????
%?"
description?????????
&?#
project_name?????????
p 

 
? "???????????
)__inference_model_1_layer_call_fn_5168680?# ?$?(?,?0?????????^_mn???
???
???
!?
country?????????
#? 
	city_name?????????
"?
category?????????
"?
currency?????????
&?#
launch_month?????????	
?
goal?????????
*?'
days_of_campaign?????????
%?"
description?????????
&?#
project_name?????????
p

 
? "???????????
)__inference_model_1_layer_call_fn_5169067?# ?$?(?,?0?????????^_mn???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????	
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
p 

 
? "???????????
)__inference_model_1_layer_call_fn_5169124?# ?$?(?,?0?????????^_mn???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????	
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
p

 
? "??????????{
__inference_restore_fn_5170068Y!K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? {
__inference_restore_fn_5170095Y%K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? {
__inference_restore_fn_5170122Y)K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? {
__inference_restore_fn_5170149Y-K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? {
__inference_restore_fn_5170176Y1K?H
A?>
?
restored_tensors_0	
?
restored_tensors_1	
? "? ?
__inference_save_fn_5170060?!&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
__inference_save_fn_5170087?%&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
__inference_save_fn_5170114?)&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
__inference_save_fn_5170141?-&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
__inference_save_fn_5170168?1&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor	
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
%__inference_signature_wrapper_5169524?# ?$?(?,?0?????????^_mn???
? 
???
.
category"?
category?????????
0
	city_name#? 
	city_name?????????
,
country!?
country?????????
.
currency"?
currency?????????
>
days_of_campaign*?'
days_of_campaign?????????
4
description%?"
description?????????
&
goal?
goal?????????
6
launch_month&?#
launch_month?????????	
6
project_name&?#
project_name?????????"1?.
,
dense_3!?
dense_3?????????