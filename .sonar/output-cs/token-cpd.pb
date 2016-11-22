Ë
cC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\App_Start\BundleConfig.cs
	namespace 	
PRUEBITASGO
 
{ 
public 

class 
BundleConfig 
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
,. /
$str ,
), -
)- .
;. /
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} ë
cC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\App_Start\FilterConfig.cs
	namespace 	
PRUEBITASGO
 
{ 
public 

class 
FilterConfig 
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{		 	
filters

 
.

 
Add

 
(

 
new

  
HandleErrorAttribute

 0
(

0 1
)

1 2
)

2 3
;

3 4
} 	
} 
} —:
eC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\App_Start\IdentityConfig.cs
	namespace 	
PRUEBITASGO
 
{ 
public 

class 
EmailService 
: #
IIdentityMessageService  7
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
} 	
} 
public 

class 

SmsService 
: #
IIdentityMessageService 5
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
}   	
}!! 
public$$ 

class$$ "
ApplicationUserManager$$ '
:$$( )
UserManager$$* 5
<$$5 6
ApplicationUser$$6 E
>$$E F
{%% 
public&& "
ApplicationUserManager&& %
(&&% &

IUserStore&&& 0
<&&0 1
ApplicationUser&&1 @
>&&@ A
store&&B G
)&&G H
:'' 
base'' 
('' 
store'' 
)'' 
{(( 	
})) 	
public++ 
static++ "
ApplicationUserManager++ ,
Create++- 3
(++3 4"
IdentityFactoryOptions++4 J
<++J K"
ApplicationUserManager++K a
>++a b
options++c j
,++j k
IOwinContext++l x
context	++y Ä
)
++Ä Å
{,, 	
var-- 
manager-- 
=-- 
new-- "
ApplicationUserManager-- 4
(--4 5
new--5 8
	UserStore--9 B
<--B C
ApplicationUser--C R
>--R S
(--S T
context--T [
.--[ \
Get--\ _
<--_ ` 
ApplicationDbContext--` t
>--t u
(--u v
)--v w
)--w x
)--x y
;--y z
manager// 
.// 
UserValidator// !
=//" #
new//$ '
UserValidator//( 5
<//5 6
ApplicationUser//6 E
>//E F
(//F G
manager//G N
)//N O
{00 *
AllowOnlyAlphanumericUserNames11 .
=11/ 0
false111 6
,116 7
RequireUniqueEmail22 "
=22# $
true22% )
}33 
;33 
manager66 
.66 
PasswordValidator66 %
=66& '
new66( +
PasswordValidator66, =
{77 
RequiredLength88 
=88  
$num88! "
,88" ##
RequireNonLetterOrDigit99 '
=99( )
true99* .
,99. /
RequireDigit:: 
=:: 
true:: #
,::# $
RequireLowercase;;  
=;;! "
true;;# '
,;;' (
RequireUppercase<<  
=<<! "
true<<# '
,<<' (
}== 
;== 
manager@@ 
.@@ '
UserLockoutEnabledByDefault@@ /
=@@0 1
true@@2 6
;@@6 7
managerAA 
.AA )
DefaultAccountLockoutTimeSpanAA 1
=AA2 3
TimeSpanAA4 <
.AA< =
FromMinutesAA= H
(AAH I
$numAAI J
)AAJ K
;AAK L
managerBB 
.BB 0
$MaxFailedAccessAttemptsBeforeLockoutBB 8
=BB9 :
$numBB; <
;BB< =
managerFF 
.FF %
RegisterTwoFactorProviderFF -
(FF- .
$strFF. A
,FFA B
newFFC F$
PhoneNumberTokenProviderFFG _
<FF_ `
ApplicationUserFF` o
>FFo p
{GG 
MessageFormatHH 
=HH 
$strHH  ?
}II 
)II 
;II 
managerJJ 
.JJ %
RegisterTwoFactorProviderJJ -
(JJ- .
$strJJ. L
,JJL M
newJJN Q
EmailTokenProviderJJR d
<JJd e
ApplicationUserJJe t
>JJt u
{KK 
SubjectLL 
=LL 
$strLL /
,LL/ 0

BodyFormatMM 
=MM 
$strMM <
}NN 
)NN 
;NN 
managerOO 
.OO 
EmailServiceOO  
=OO! "
newOO# &
EmailServiceOO' 3
(OO3 4
)OO4 5
;OO5 6
managerPP 
.PP 

SmsServicePP 
=PP  
newPP! $

SmsServicePP% /
(PP/ 0
)PP0 1
;PP1 2
varQQ "
dataProtectionProviderQQ &
=QQ' (
optionsQQ) 0
.QQ0 1"
DataProtectionProviderQQ1 G
;QQG H
ifRR 
(RR "
dataProtectionProviderRR &
!=RR' )
nullRR* .
)RR. /
{SS 
managerTT 
.TT 
UserTokenProviderTT )
=TT* +
newUU &
DataProtectorTokenProviderUU 2
<UU2 3
ApplicationUserUU3 B
>UUB C
(UUC D"
dataProtectionProviderUUD Z
.UUZ [
CreateUU[ a
(UUa b
$strUUb t
)UUt u
)UUu v
;UUv w
}VV 
returnWW 
managerWW 
;WW 
}XX 	
}YY 
public\\ 

class\\ $
ApplicationSignInManager\\ )
:\\* +
SignInManager\\, 9
<\\9 :
ApplicationUser\\: I
,\\I J
string\\K Q
>\\Q R
{]] 
public^^ $
ApplicationSignInManager^^ '
(^^' ("
ApplicationUserManager^^( >
userManager^^? J
,^^J K"
IAuthenticationManager^^L b!
authenticationManager^^c x
)^^x y
:__ 
base__ 
(__ 
userManager__ 
,__ !
authenticationManager__  5
)__5 6
{`` 	
}aa 	
publiccc 
overridecc 
Taskcc 
<cc 
ClaimsIdentitycc +
>cc+ ,#
CreateUserIdentityAsynccc- D
(ccD E
ApplicationUserccE T
userccU Y
)ccY Z
{dd 	
returnee 
useree 
.ee %
GenerateUserIdentityAsyncee 1
(ee1 2
(ee2 3"
ApplicationUserManageree3 I
)eeI J
UserManagereeJ U
)eeU V
;eeV W
}ff 	
publichh 
statichh $
ApplicationSignInManagerhh .
Createhh/ 5
(hh5 6"
IdentityFactoryOptionshh6 L
<hhL M$
ApplicationSignInManagerhhM e
>hhe f
optionshhg n
,hhn o
IOwinContexthhp |
context	hh} Ñ
)
hhÑ Ö
{ii 	
returnjj 
newjj $
ApplicationSignInManagerjj /
(jj/ 0
contextjj0 7
.jj7 8
GetUserManagerjj8 F
<jjF G"
ApplicationUserManagerjjG ]
>jj] ^
(jj^ _
)jj_ `
,jj` a
contextjjb i
.jji j
Authenticationjjj x
)jjx y
;jjy z
}kk 	
}ll 
}mm Ô
bC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\App_Start\RouteConfig.cs
	namespace 	
PRUEBITASGO
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 6
,6 7
action8 >
=? @
$strA H
,H I
idJ L
=M N
UrlParameterO [
.[ \
Optional\ d
}e f
) 
; 
} 	
} 
} É
cC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\App_Start\Startup.Auth.cs
	namespace

 	
PRUEBITASGO


 
{ 
public 

partial 
class 
Startup  
{ 
public 
void 
ConfigureAuth !
(! "
IAppBuilder" -
app. 1
)1 2
{ 	
app 
.  
CreatePerOwinContext $
($ % 
ApplicationDbContext% 9
.9 :
Create: @
)@ A
;A B
app 
.  
CreatePerOwinContext $
<$ %"
ApplicationUserManager% ;
>; <
(< ="
ApplicationUserManager= S
.S T
CreateT Z
)Z [
;[ \
app 
.  
CreatePerOwinContext $
<$ %$
ApplicationSignInManager% =
>= >
(> ?$
ApplicationSignInManager? W
.W X
CreateX ^
)^ _
;_ `
app 
. #
UseCookieAuthentication '
(' (
new( +'
CookieAuthenticationOptions, G
{ 
AuthenticationType "
=# $&
DefaultAuthenticationTypes% ?
.? @
ApplicationCookie@ Q
,Q R
	LoginPath 
= 
new 

PathString  *
(* +
$str+ ;
); <
,< =
Provider 
= 
new (
CookieAuthenticationProvider ;
{ 
OnValidateIdentity!! &
=!!' ("
SecurityStampValidator!!) ?
.!!? @
OnValidateIdentity!!@ R
<!!R S"
ApplicationUserManager!!S i
,!!i j
ApplicationUser!!k z
>!!z {
(!!{ |
validateInterval"" (
:""( )
TimeSpan""* 2
.""2 3
FromMinutes""3 >
(""> ?
$num""? A
)""A B
,""B C
regenerateIdentity## *
:##* +
(##, -
manager##- 4
,##4 5
user##6 :
)##: ;
=>##< >
user##? C
.##C D%
GenerateUserIdentityAsync##D ]
(##] ^
manager##^ e
)##e f
)##f g
}$$ 
}%% 
)%% 
;%% 
app&& 
.&& #
UseExternalSignInCookie&& '
(&&' (&
DefaultAuthenticationTypes&&( B
.&&B C
ExternalCookie&&C Q
)&&Q R
;&&R S
app)) 
.)) $
UseTwoFactorSignInCookie)) (
())( )&
DefaultAuthenticationTypes))) C
.))C D
TwoFactorCookie))D S
,))S T
TimeSpan))U ]
.))] ^
FromMinutes))^ i
())i j
$num))j k
)))k l
)))l m
;))m n
app.. 
... -
!UseTwoFactorRememberBrowserCookie.. 1
(..1 2&
DefaultAuthenticationTypes..2 L
...L M*
TwoFactorRememberBrowserCookie..M k
)..k l
;..l m
}BB 	
}CC 
}DD è
jC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Controllers\AccountController.cs
	namespace 	
PRUEBITASGO
 
. 
Controllers !
{ 
public 

class 
AccountController "
:# $

Controller% /
{ 
[ 	
AllowAnonymous	 
] 
public 
ActionResult 
Login !
(! "
string" (
	returnUrl) 2
)2 3
{ 	
ViewBag 
. 
	ReturnUrl 
= 
	returnUrl  )
;) *
if 
( 
TempData 
[ 
$str '
]' (
!=) +
null, 0
)0 1
{ 
ViewBag 
. 
Message 
=  !
TempData" *
[* +
$str+ 9
]9 :
.: ;
ToString; C
(C D
)D E
;E F
} 
return   
View   
(   
)   
;   
}!! 	
[%% 	
HttpPost%%	 
]%% 
[&& 	
AllowAnonymous&&	 
]&& 
public(( 
async(( 
Task(( 
<(( 
ActionResult(( &
>((& '
Login((( -
(((- .
User((. 2
user((3 7
)((7 8
{)) 	
UserRepository** 
us** 
=** 
new**  #
UserRepository**$ 2
(**2 3
)**3 4
;**4 5
if,, 
(,, 
string,, 
.,, 
IsNullOrEmpty,, $
(,,$ %
user,,% )
.,,) *
UserName,,* 2
),,2 3
||,,4 6
string,,7 =
.,,= >
IsNullOrEmpty,,> K
(,,K L
user,,L P
.,,P Q
Password,,Q Y
),,Y Z
||,,[ ]
us,,^ `
.,,` a$
GetByUsernameAndPassword,,a y
(,,y z
user,,z ~
),,~ 
==
,,Ä Ç
null
,,É á
)
,,á à
{-- 
TempData.. 
[.. 
$str.. '
]..' (
=..) *
$str..+ ^
;..^ _
return00 
RedirectToAction00 '
(00' (
$str00( /
,00/ 0
$str001 :
)00: ;
;00; <
}11 
SessionPersister33 
.33 
Username33 %
=33& '
user33( ,
.33, -
UserName33- 5
;335 6
return55 
RedirectToAction55 #
(55# $
$str55$ +
,55+ ,
$str55- 3
)553 4
;554 5
}66 	
public99 
ActionResult99 
Logout99 "
(99" #
)99# $
{:: 	
SessionPersister;; 
.;; 
Username;; %
=;;& '
string;;( .
.;;. /
Empty;;/ 4
;;;4 5
return<< 
RedirectToAction<< #
(<<# $
$str<<$ +
,<<+ ,
$str<<- 3
)<<3 4
;<<4 5
}== 	
}@@ 
}AA £<
mC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Controllers\CategoriesController.cs
	namespace 	
PRUEBITASGO
 
. 
Controllers !
{ 
public 

class  
CategoriesController %
:& '

Controller( 2
{ 
private 
ShopContext 
db 
=  
new! $
ShopContext% 0
(0 1
)1 2
;2 3
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
db 
. 

Categories %
.% &
ToList& ,
(, -
)- .
). /
;/ 0
} 	
public 
ActionResult 
Details #
(# $
int$ '
?' (
id) +
)+ ,
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
new  
HttpStatusCodeResult /
(/ 0
HttpStatusCode0 >
.> ?

BadRequest? I
)I J
;J K
} 
Category 
category 
= 
db  "
." #

Categories# -
.- .
Find. 2
(2 3
id3 5
)5 6
;6 7
if   
(   
category   
==   
null    
)    !
{!! 
return"" 
HttpNotFound"" #
(""# $
)""$ %
;""% &
}## 
return$$ 
View$$ 
($$ 
category$$  
)$$  !
;$$! "
}%% 	
public(( 
ActionResult(( 
Create(( "
(((" #
)((# $
{)) 	
return** 
View** 
(** 
)** 
;** 
}++ 	
[00 	
HttpPost00	 
]00 
[11 	$
ValidateAntiForgeryToken11	 !
]11! "
public22 
ActionResult22 
Create22 "
(22" #
[22# $
Bind22$ (
(22( )
Include22) 0
=221 2
$str223 X
)22X Y
]22Y Z
Category22[ c
category22d l
)22l m
{33 	
if44 
(44 

ModelState44 
.44 
IsValid44 "
)44" #
{55 
db66 
.66 

Categories66 
.66 
Add66 !
(66! "
category66" *
)66* +
;66+ ,
db77 
.77 
SaveChanges77 
(77 
)77  
;77  !
return88 
RedirectToAction88 '
(88' (
$str88( /
)88/ 0
;880 1
}99 
return;; 
View;; 
(;; 
category;;  
);;  !
;;;! "
}<< 	
public?? 
ActionResult?? 
Edit??  
(??  !
int??! $
???$ %
id??& (
)??( )
{@@ 	
ifAA 
(AA 
idAA 
==AA 
nullAA 
)AA 
{BB 
returnCC 
newCC  
HttpStatusCodeResultCC /
(CC/ 0
HttpStatusCodeCC0 >
.CC> ?

BadRequestCC? I
)CCI J
;CCJ K
}DD 
CategoryEE 
categoryEE 
=EE 
dbEE  "
.EE" #

CategoriesEE# -
.EE- .
FindEE. 2
(EE2 3
idEE3 5
)EE5 6
;EE6 7
ifFF 
(FF 
categoryFF 
==FF 
nullFF  
)FF  !
{GG 
returnHH 
HttpNotFoundHH #
(HH# $
)HH$ %
;HH% &
}II 
returnJJ 
ViewJJ 
(JJ 
categoryJJ  
)JJ  !
;JJ! "
}KK 	
[PP 	
HttpPostPP	 
]PP 
[QQ 	$
ValidateAntiForgeryTokenQQ	 !
]QQ! "
publicRR 
ActionResultRR 
EditRR  
(RR  !
[RR! "
BindRR" &
(RR& '
IncludeRR' .
=RR/ 0
$strRR1 V
)RRV W
]RRW X
CategoryRRY a
categoryRRb j
)RRj k
{SS 	
ifTT 
(TT 

ModelStateTT 
.TT 
IsValidTT "
)TT" #
{UU 
dbVV 
.VV 
EntryVV 
(VV 
categoryVV !
)VV! "
.VV" #
StateVV# (
=VV) *
EntityStateVV+ 6
.VV6 7
ModifiedVV7 ?
;VV? @
dbWW 
.WW 
SaveChangesWW 
(WW 
)WW  
;WW  !
returnXX 
RedirectToActionXX '
(XX' (
$strXX( /
)XX/ 0
;XX0 1
}YY 
returnZZ 
ViewZZ 
(ZZ 
categoryZZ  
)ZZ  !
;ZZ! "
}[[ 	
public^^ 
ActionResult^^ 
Delete^^ "
(^^" #
int^^# &
?^^& '
id^^( *
)^^* +
{__ 	
if`` 
(`` 
id`` 
==`` 
null`` 
)`` 
{aa 
returnbb 
newbb  
HttpStatusCodeResultbb /
(bb/ 0
HttpStatusCodebb0 >
.bb> ?

BadRequestbb? I
)bbI J
;bbJ K
}cc 
Categorydd 
categorydd 
=dd 
dbdd  "
.dd" #

Categoriesdd# -
.dd- .
Finddd. 2
(dd2 3
iddd3 5
)dd5 6
;dd6 7
ifee 
(ee 
categoryee 
==ee 
nullee  
)ee  !
{ff 
returngg 
HttpNotFoundgg #
(gg# $
)gg$ %
;gg% &
}hh 
returnii 
Viewii 
(ii 
categoryii  
)ii  !
;ii! "
}jj 	
[mm 	
HttpPostmm	 
,mm 

ActionNamemm 
(mm 
$strmm &
)mm& '
]mm' (
[nn 	$
ValidateAntiForgeryTokennn	 !
]nn! "
publicoo 
ActionResultoo 
DeleteConfirmedoo +
(oo+ ,
intoo, /
idoo0 2
)oo2 3
{pp 	
Categoryqq 
categoryqq 
=qq 
dbqq  "
.qq" #

Categoriesqq# -
.qq- .
Findqq. 2
(qq2 3
idqq3 5
)qq5 6
;qq6 7
dbrr 
.rr 

Categoriesrr 
.rr 
Removerr  
(rr  !
categoryrr! )
)rr) *
;rr* +
dbss 
.ss 
SaveChangesss 
(ss 
)ss 
;ss 
returntt 
RedirectToActiontt #
(tt# $
$strtt$ +
)tt+ ,
;tt, -
}uu 	
	protectedww 
overrideww 
voidww 
Disposeww  '
(ww' (
boolww( ,
	disposingww- 6
)ww6 7
{xx 	
ifyy 
(yy 
	disposingyy 
)yy 
{zz 
db{{ 
.{{ 
Dispose{{ 
({{ 
){{ 
;{{ 
}|| 
base}} 
.}} 
Dispose}} 
(}} 
	disposing}} "
)}}" #
;}}# $
}~~ 	
} 
}ÄÄ Î	
gC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Controllers\HomeController.cs
	namespace		 	
PRUEBITASGO		
 
.		 
Controllers		 !
{

 
public 

class 
HomeController 
:  !

Controller" ,
{ 
[ 	&
CustomAuthorizateAttribute	 #
]# $
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
) 
; 
} 	
public 
ActionResult 
About !
(! "
)" #
{ 	
ViewBag 
. 
Message 
= 
$str B
;B C
return 
View 
( 
) 
; 
} 	
public 
ActionResult 
Contact #
(# $
)$ %
{ 	
ViewBag 
. 
Message 
= 
$str 2
;2 3
return 
View 
( 
) 
; 
} 	
}   
}!! ÿH
kC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Controllers\ProductsController.cs
	namespace 	
PRUEBITASGO
 
. 
Controllers !
{ 
public 

class 
ProductsController #
:$ %

Controller& 0
{ 
private 
ShopContext 
db 
=  
new! $
ShopContext% 0
(0 1
)1 2
;2 3
[ 	&
CustomAuthorizateAttribute	 #
]# $
public 
ActionResult 
Index !
(! "
)" #
{ 	
var 
products 
= 
from 
s  !
in" $
db% '
.' (
Products( 0
select !
s" #
;# $
products 
= 
products 
.  
Where  %
(% &
s& '
=>( *
s+ ,
., -
Estado- 3
==4 6
true7 ;
); <
;< =
return 
View 
( 
products  
)  !
;! "
} 	
[ 	&
CustomAuthorizateAttribute	 #
]# $
public   
ActionResult   
Details   #
(  # $
int  $ '
?  ' (
id  ) +
)  + ,
{!! 	
if"" 
("" 
id"" 
=="" 
null"" 
)"" 
{## 
return$$ 
new$$  
HttpStatusCodeResult$$ /
($$/ 0
HttpStatusCode$$0 >
.$$> ?

BadRequest$$? I
)$$I J
;$$J K
}%% 
Product&& 
product&& 
=&& 
db&&  
.&&  !
Products&&! )
.&&) *
Find&&* .
(&&. /
id&&/ 1
)&&1 2
;&&2 3
if'' 
('' 
product'' 
=='' 
null'' 
)''  
{(( 
return)) 
HttpNotFound)) #
())# $
)))$ %
;))% &
}** 
return++ 
View++ 
(++ 
product++ 
)++  
;++  !
},, 	
[00 	&
CustomAuthorizateAttribute00	 #
]00# $
public11 
ActionResult11 
Create11 "
(11" #
)11# $
{22 	
return33 
View33 
(33 
)33 
;33 
}44 	
[99 	
HttpPost99	 
]99 
[:: 	$
ValidateAntiForgeryToken::	 !
]::! "
[;; 	&
CustomAuthorizateAttribute;;	 #
];;# $
public<< 
ActionResult<< 
Create<< "
(<<" #
[<<# $
Bind<<$ (
(<<( )
Include<<) 0
=<<1 2
$str<<3 
)	<< Ä
]
<<Ä Å
Product
<<Ç â
product
<<ä ë
)
<<ë í
{== 	
if>> 
(>> 

ModelState>> 
.>> 
IsValid>> "
)>>" #
{?? 
product@@ 
.@@ 
Estado@@ 
=@@  
true@@! %
;@@% &
dbAA 
.AA 
ProductsAA 
.AA 
AddAA 
(AA  
productAA  '
)AA' (
;AA( )
dbBB 
.BB 
SaveChangesBB 
(BB 
)BB  
;BB  !
returnCC 
RedirectToActionCC '
(CC' (
$strCC( /
)CC/ 0
;CC0 1
}DD 
returnFF 
ViewFF 
(FF 
productFF 
)FF  
;FF  !
}GG 	
publicJJ 
ActionResultJJ 
EditJJ  
(JJ  !
intJJ! $
?JJ$ %
idJJ& (
)JJ( )
{KK 	
ifLL 
(LL 
idLL 
==LL 
nullLL 
)LL 
{MM 
returnNN 
newNN  
HttpStatusCodeResultNN /
(NN/ 0
HttpStatusCodeNN0 >
.NN> ?

BadRequestNN? I
)NNI J
;NNJ K
}OO 
ProductPP 
productPP 
=PP 
dbPP  
.PP  !
ProductsPP! )
.PP) *
FindPP* .
(PP. /
idPP/ 1
)PP1 2
;PP2 3
ifQQ 
(QQ 
productQQ 
==QQ 
nullQQ 
)QQ  
{RR 
returnSS 
HttpNotFoundSS #
(SS# $
)SS$ %
;SS% &
}TT 
returnUU 
ViewUU 
(UU 
productUU 
)UU  
;UU  !
}VV 	
[[[ 	
HttpPost[[	 
][[ 
[\\ 	$
ValidateAntiForgeryToken\\	 !
]\\! "
[]] 	&
CustomAuthorizateAttribute]]	 #
]]]# $
public^^ 
ActionResult^^ 
Edit^^  
(^^  !
[^^! "
Bind^^" &
(^^& '
Include^^' .
=^^/ 0
$str^^1 }
)^^} ~
]^^~ 
Product
^^Ä á
product
^^à è
)
^^è ê
{__ 	
if`` 
(`` 

ModelState`` 
.`` 
IsValid`` "
)``" #
{aa 
ifbb 
(bb 
!bb 
Stringbb 
.bb 
IsNullOrEmptybb )
(bb) *
productbb* 1
.bb1 2
DueDatebb2 9
.bb9 :
ToStringbb: B
(bbB C
)bbC D
)bbD E
)bbE F
{cc 
productdd 
.dd 
	Perecibledd %
=dd& '
truedd( ,
;dd, -
}ee 
dbff 
.ff 
Entryff 
(ff 
productff  
)ff  !
.ff! "
Stateff" '
=ff( )
EntityStateff* 5
.ff5 6
Modifiedff6 >
;ff> ?
dbgg 
.gg 
SaveChangesgg 
(gg 
)gg  
;gg  !
returnhh 
RedirectToActionhh '
(hh' (
$strhh( /
)hh/ 0
;hh0 1
}ii 
returnjj 
Viewjj 
(jj 
productjj 
)jj  
;jj  !
}kk 	
[oo 	&
CustomAuthorizateAttributeoo	 #
]oo# $
publicpp 
ActionResultpp 
Deletepp "
(pp" #
intpp# &
?pp& '
idpp( *
)pp* +
{qq 	
ifrr 
(rr 
idrr 
==rr 
nullrr 
)rr 
{ss 
returntt 
newtt  
HttpStatusCodeResulttt /
(tt/ 0
HttpStatusCodett0 >
.tt> ?

BadRequesttt? I
)ttI J
;ttJ K
}uu 
Productvv 
productvv 
=vv 
dbvv  
.vv  !
Productsvv! )
.vv) *
Findvv* .
(vv. /
idvv/ 1
)vv1 2
;vv2 3
ifww 
(ww 
productww 
==ww 
nullww 
)ww  
{xx 
returnyy 
HttpNotFoundyy #
(yy# $
)yy$ %
;yy% &
}zz 
return{{ 
View{{ 
({{ 
product{{ 
){{  
;{{  !
}|| 	
[ 	
HttpPost	 
, 

ActionName 
( 
$str &
)& '
]' (
[
ÄÄ 	&
ValidateAntiForgeryToken
ÄÄ	 !
]
ÄÄ! "
[
ÇÇ 	(
CustomAuthorizateAttribute
ÇÇ	 #
]
ÇÇ# $
public
ÉÉ 
ActionResult
ÉÉ 
DeleteConfirmed
ÉÉ +
(
ÉÉ+ ,
int
ÉÉ, /
id
ÉÉ0 2
)
ÉÉ2 3
{
ÑÑ 	
var
ÖÖ 
product
ÖÖ 
=
ÖÖ 
db
ÖÖ 
.
ÖÖ 
Products
ÖÖ %
.
ÖÖ% &
Find
ÖÖ& *
(
ÖÖ* +
id
ÖÖ+ -
)
ÖÖ- .
;
ÖÖ. /
if
ÜÜ 
(
ÜÜ 
product
ÜÜ 
!=
ÜÜ 
null
ÜÜ 
)
ÜÜ  
{
áá 
product
àà 
.
àà 
Estado
àà 
=
àà  
false
àà! &
;
àà& '
db
ââ 
.
ââ 
SaveChanges
ââ 
(
ââ 
)
ââ  
;
ââ  !
}
ää 
return
ãã 
RedirectToAction
ãã #
(
ãã# $
$str
ãã$ +
)
ãã+ ,
;
ãã, -
}
åå 	
	protected
éé 
override
éé 
void
éé 
Dispose
éé  '
(
éé' (
bool
éé( ,
	disposing
éé- 6
)
éé6 7
{
èè 	
if
êê 
(
êê 
	disposing
êê 
)
êê 
{
ëë 
db
íí 
.
íí 
Dispose
íí 
(
íí 
)
íí 
;
íí 
}
ìì 
base
îî 
.
îî 
Dispose
îî 
(
îî 
	disposing
îî "
)
îî" #
;
îî# $
}
ïï 	
}
ññ 
}óó Å
\C:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\DAL\ShopContext.cs
	namespace

 	
PRUEBITASGO


 
.

 
DAL

 
{ 
class 	
ShopContext
 
: 
	DbContext !
{ 
public 
ShopContext 
( 
) 
: 
base #
(# $
$str$ 1
)1 2
{ 	
} 	
public 
DbSet 
< 
Category 
> 

Categories )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DbSet 
< 
Product 
> 
Products &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
User 
> 
Users  
{! "
get# &
;& '
set( +
;+ ,
}- .
	protected 
override 
void 
OnModelCreating  /
(/ 0
DbModelBuilder0 >
modelBuilder? K
)K L
{ 	
modelBuilder 
. 
Conventions $
.$ %
Remove% +
<+ ,*
PluralizingTableNameConvention, J
>J K
(K L
)L M
;M N
} 	
} 
}  4
`C:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\DAL\ShopInitializer.cs
	namespace		 	
PRUEBITASGO		
 
.		 
DAL		 
{

 
class 	
ShopInitializer
 
: 
System "
." #
Data# '
.' (
Entity( .
.. /,
 DropCreateDatabaseIfModelChanges/ O
<O P
ShopContextP [
>[ \
{ 
	protected 
override 
void 
Seed  $
($ %
ShopContext% 0
context1 8
)8 9
{ 	
var 
Products 
= 
new 
List #
<# $
Product$ +
>+ ,
{ 
new 
Product 
{ 
ProductName (
=( )
$str) 7
,7 8
Description9 D
=D E
$strE S
,S T
StockU Z
=Z [
$num[ ]
,] ^
	Perecible_ h
=h i
truei m
,m n
DueDateo v
=v w
DateTimew 
.	 Ä
Parse
Ä Ö
(
Ö Ü
$str
Ü í
)
í ì
,
ì î
	UnitPrice
ï û
=
û ü
$num
ü §
,
§ •
Estado
• ´
=
´ ¨
true
¨ ∞
}
± ≤
,
≤ ≥
new 
Product 
{ 
ProductName (
=( )
$str) 5
,5 6
Description7 B
=B C
$strC W
,W X
StockY ^
=^ _
$num_ a
,a b
	Pereciblec l
=l m
truem q
,q r
DueDates z
=z {
DateTime	{ É
.
É Ñ
Parse
Ñ â
(
â ä
$str
ä ñ
)
ñ ó
,
ó ò
	UnitPrice
ô ¢
=
¢ £
$num
£ ®
,
® ©
Estado
© Ø
=
Ø ∞
true
∞ ¥
}
µ ∂
,
∂ ∑
new 
Product 
{ 
ProductName (
=( )
$str) 4
,4 5
Description6 A
=A B
$strB U
,U V
StockW \
=\ ]
$num] _
,_ `
	Pereciblea j
=j k
truek o
,o p
DueDateq x
=x y
DateTime	y Å
.
Å Ç
Parse
Ç á
(
á à
$str
à î
)
î ï
,
ï ñ
	UnitPrice
ó †
=
† °
$num
° ¶
,
¶ ß
Estado
ß ≠
=
≠ Æ
true
Æ ≤
}
≥ ¥
,
¥ µ
new 
Product 
{ 
ProductName (
=( )
$str) 3
,3 4
Description5 @
=@ A
$strA S
,S T
StockU Z
=Z [
$num[ ]
,] ^
	Perecible_ h
=h i
truei m
,m n
DueDateo v
=v w
DateTimew 
.	 Ä
Parse
Ä Ö
(
Ö Ü
$str
Ü í
)
í ì
,
ì î
	UnitPrice
ï û
=
û ü
$num
ü §
,
§ •
Estado
• ´
=
´ ¨
true
¨ ∞
}
± ≤
} 
; 
try 
{ 
Products 
. 
ForEach  
(  !
s! "
=># %
context& -
.- .
Products. 6
.6 7
Add7 :
(: ;
s; <
)< =
)= >
;> ?
context 
. 
SaveChanges #
(# $
)$ %
;% &
} 
catch 
( '
DbEntityValidationException .
e/ 0
)0 1
{   
foreach!! 
(!! 
var!! 
eve!!  
in!!! #
e!!$ %
.!!% &"
EntityValidationErrors!!& <
)!!< =
{"" 
Console## 
.## 
	WriteLine## %
(##% &
$str##& t
,##t u
eve$$ 
.$$ 
Entry$$ !
.$$! "
Entity$$" (
.$$( )
GetType$$) 0
($$0 1
)$$1 2
.$$2 3
Name$$3 7
,$$7 8
eve$$9 <
.$$< =
Entry$$= B
.$$B C
State$$C H
)$$H I
;$$I J
foreach%% 
(%% 
var%%  
ve%%! #
in%%$ &
eve%%' *
.%%* +
ValidationErrors%%+ ;
)%%; <
{&& 
Console'' 
.''  
	WriteLine''  )
('') *
$str''* O
,''O P
ve(( 
.(( 
PropertyName(( +
,((+ ,
ve((- /
.((/ 0
ErrorMessage((0 <
)((< =
;((= >
})) 
}** 
throw++ 
;++ 
},, 
var00 

Categories00 
=00 
new00  
List00! %
<00% &
Category00& .
>00. /
{11 
new22 
Category22 
{22 
CategoryName22 *
=22* +
$str22+ 4
,224 5
Description225 @
=22@ A
$str22A U
}22V W
}33 
;33 

Categories55 
.55 
ForEach55 
(55 
s55  
=>55! #
context55$ +
.55+ ,

Categories55, 6
.556 7
Add557 :
(55: ;
s55; <
)55< =
)55= >
;55> ?
context66 
.66 
SaveChanges66 
(66  
)66  !
;66! "
var88 
User88 
=88 
new88 
List88 
<88  
User88  $
>88$ %
{99 
new:: 
User:: 
{:: 
UserName:: "
=::" #
$str::# *
,::* +
Password::+ 3
=::3 4
$str::4 ?
}::@ A
};; 
;;; 
User== 
.== 
ForEach== 
(== 
s== 
=>== 
context== %
.==% &
Users==& +
.==+ ,
Add==, /
(==/ 0
s==0 1
)==1 2
)==2 3
;==3 4
context>> 
.>> 
SaveChanges>> 
(>>  
)>>  !
;>>! "
}?? 	
}@@ 
}AA ë
`C:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\DAL\UserApplication.cs
	namespace 	
PRUEBITASGO
 
. 
DAL 
{		 
public

 

class

 
UserApplication

  
{ 
UserRepository 
userRepo 
=  !
new" %
UserRepository& 4
(4 5
)5 6
;6 7
public 
User $
GetByUsernameAndPassword ,
(, -
User- 1
user2 6
)6 7
{ 	
return 
userRepo 
. $
GetByUsernameAndPassword 4
(4 5
user5 9
)9 :
;: ;
} 	
} 
} “
XC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Global.asax.cs
	namespace		 	
PRUEBITASGO		
 
{

 
public 

class 
MvcApplication 
:  !
System" (
.( )
Web) ,
., -
HttpApplication- <
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
	protected 
void $
Application_BeginRequest /
(/ 0
object0 6
sender7 =
,= >
	EventArgs? H
eI J
)J K
{ 	
HttpContext 
. 
Current 
.  
Response  (
.( )
	AddHeader) 2
(2 3
$str3 D
,D E
$strF R
)R S
;S T
} 	
} 
} ó
xC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Migrations\201609260345058_Initial.Designer.cs
	namespace 	
PRUEBITASGO
 
. 

Migrations  
{ 
[		 
GeneratedCode		 
(		 
$str		 /
,		/ 0
$str		1 >
)		> ?
]		? @
public

 

sealed

 
partial

 
class

 
Initial

  '
:

( )
IMigrationMetadata

* <
{ 
private 
readonly 
ResourceManager (
	Resources) 2
=3 4
new5 8
ResourceManager9 H
(H I
typeofI O
(O P
InitialP W
)W X
)X Y
;Y Z
string 
IMigrationMetadata !
.! "
Id" $
{ 	
get 
{ 
return 
$str 2
;2 3
}4 5
} 	
string 
IMigrationMetadata !
.! "
Source" (
{ 	
get 
{ 
return 
null 
; 
}  
} 	
string 
IMigrationMetadata !
.! "
Target" (
{ 	
get 
{ 
return 
	Resources "
." #
	GetString# ,
(, -
$str- 5
)5 6
;6 7
}8 9
} 	
} 
} ˜-
oC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Migrations\201609260345058_Initial.cs
	namespace 	
PRUEBITASGO
 
. 

Migrations  
{ 
public 

partial 
class 
Initial  
:! "
DbMigration# .
{ 
public 
override 
void 
Up 
(  
)  !
{		 	
CreateTable

 
(

 
$str 
, 
c 
=> 
new 
{ 

CategoryID "
=# $
c% &
.& '
Int' *
(* +
nullable+ 3
:3 4
false5 :
,: ;
identity< D
:D E
trueF J
)J K
,K L
CategoryName $
=% &
c' (
.( )
String) /
(/ 0
nullable0 8
:8 9
false: ?
,? @
	maxLengthA J
:J K
$numL N
)N O
,O P
Description #
=$ %
c& '
.' (
String( .
(. /
	maxLength/ 8
:8 9
$num: =
)= >
,> ?
} 
) 
. 

PrimaryKey 
( 
t 
=>  
t! "
." #

CategoryID# -
)- .
;. /
CreateTable 
( 
$str 
, 
c 
=> 
new 
{ 
	ProductID !
=" #
c$ %
.% &
Int& )
() *
nullable* 2
:2 3
false4 9
,9 :
identity; C
:C D
trueE I
)I J
,J K
ProductName #
=$ %
c& '
.' (
String( .
(. /
nullable/ 7
:7 8
false9 >
,> ?
	maxLength@ I
:I J
$numK M
)M N
,N O
Description #
=$ %
c& '
.' (
String( .
(. /
	maxLength/ 8
:8 9
$num: =
)= >
,> ?
Stock 
= 
c  !
.! "
Int" %
(% &
nullable& .
:. /
false0 5
)5 6
,6 7
	Perecible !
=" #
c$ %
.% &
Boolean& -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
Estado 
=  
c! "
." #
Boolean# *
(* +
nullable+ 3
:3 4
false5 :
): ;
,; <
DueDate 
=  !
c" #
.# $
DateTime$ ,
(, -
nullable- 5
:5 6
false7 <
)< =
,= >
	UnitPrice !
=" #
c$ %
.% &
Decimal& -
(- .
nullable. 6
:6 7
false8 =
,= >
	precision? H
:H I
$numJ L
,L M
scaleN S
:S T
$numU V
)V W
,W X
Category_CategoryID   +
=  , -
c  . /
.  / 0
Int  0 3
(  3 4
)  4 5
,  5 6
}!! 
)!! 
."" 

PrimaryKey"" 
("" 
t"" 
=>""  
t""! "
.""" #
	ProductID""# ,
)"", -
.## 

ForeignKey## 
(## 
$str## *
,##* +
t##, -
=>##. 0
t##1 2
.##2 3
Category_CategoryID##3 F
)##F G
.$$ 
Index$$ 
($$ 
t$$ 
=>$$ 
t$$ 
.$$ 
Category_CategoryID$$ 1
)$$1 2
;$$2 3
CreateTable&& 
(&& 
$str'' 
,'' 
c(( 
=>(( 
new(( 
{)) 
UserId** 
=**  
c**! "
.**" #
Int**# &
(**& '
nullable**' /
:**/ 0
false**1 6
,**6 7
identity**8 @
:**@ A
true**B F
)**F G
,**G H
UserName++  
=++! "
c++# $
.++$ %
String++% +
(+++ ,
nullable++, 4
:++4 5
false++6 ;
)++; <
,++< =
Password,,  
=,,! "
c,,# $
.,,$ %
String,,% +
(,,+ ,
nullable,,, 4
:,,4 5
false,,6 ;
),,; <
,,,< =
}-- 
)-- 
... 

PrimaryKey.. 
(.. 
t.. 
=>..  
t..! "
..." #
UserId..# )
)..) *
;..* +
}00 	
public22 
override22 
void22 
Down22 !
(22! "
)22" #
{33 	
DropForeignKey44 
(44 
$str44 (
,44( )
$str44* ?
,44? @
$str44A O
)44O P
;44P Q
	DropIndex55 
(55 
$str55 #
,55# $
new55% (
[55( )
]55) *
{55+ ,
$str55- B
}55C D
)55D E
;55E F
	DropTable66 
(66 
$str66  
)66  !
;66! "
	DropTable77 
(77 
$str77 #
)77# $
;77$ %
	DropTable88 
(88 
$str88 $
)88$ %
;88% &
}99 	
}:: 
};; ±8
eC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Migrations\Configuration.cs
	namespace 	
PRUEBITASGO
 
. 

Migrations  
{ 
internal 
sealed 
class 
Configuration '
:( )%
DbMigrationsConfiguration* C
<C D
PRUEBITASGOD O
.O P
DALP S
.S T
ShopContextT _
>_ `
{ 
public 
Configuration 
( 
) 
{ 	&
AutomaticMigrationsEnabled &
=' (
false) .
;. /
} 	
	protected 
override 
void 
Seed  $
($ %
PRUEBITASGO% 0
.0 1
DAL1 4
.4 5
ShopContext5 @
contextA H
)H I
{ 	
var 
Products 
= 
new 
List #
<# $
Product$ +
>+ ,
{ 
new 
Product 
{ 
ProductName (
=( )
$str) 7
,7 8
Description9 D
=D E
$strE S
,S T
StockU Z
=Z [
$num[ ]
,] ^
	Perecible_ h
=h i
truei m
,m n
DueDateo v
=v w
DateTimew 
.	 Ä
Parse
Ä Ö
(
Ö Ü
$str
Ü í
)
í ì
,
ì î
	UnitPrice
ï û
=
û ü
$num
ü §
,
§ •
Estado
• ´
=
´ ¨
true
¨ ∞
}
± ≤
,
≤ ≥
new 
Product 
{ 
ProductName (
=( )
$str) 5
,5 6
Description7 B
=B C
$strC W
,W X
StockY ^
=^ _
$num_ a
,a b
	Pereciblec l
=l m
truem q
,q r
DueDates z
=z {
DateTime	{ É
.
É Ñ
Parse
Ñ â
(
â ä
$str
ä ñ
)
ñ ó
,
ó ò
	UnitPrice
ô ¢
=
¢ £
$num
£ ®
,
® ©
Estado
© Ø
=
Ø ∞
true
∞ ¥
}
µ ∂
,
∂ ∑
new 
Product 
{ 
ProductName (
=( )
$str) 4
,4 5
Description6 A
=A B
$strB U
,U V
StockW \
=\ ]
$num] _
,_ `
	Pereciblea j
=j k
truek o
,o p
DueDateq x
=x y
DateTime	y Å
.
Å Ç
Parse
Ç á
(
á à
$str
à î
)
î ï
,
ï ñ
	UnitPrice
ó †
=
† °
$num
° ¶
,
¶ ß
Estado
ß ≠
=
≠ Æ
true
Æ ≤
}
≥ ¥
,
¥ µ
new 
Product 
{ 
ProductName (
=( )
$str) 3
,3 4
Description5 @
=@ A
$strA S
,S T
StockU Z
=Z [
$num[ ]
,] ^
	Perecible_ h
=h i
truei m
,m n
DueDateo v
=v w
DateTimew 
.	 Ä
Parse
Ä Ö
(
Ö Ü
$str
Ü í
)
í ì
,
ì î
	UnitPrice
ï û
=
û ü
$num
ü §
,
§ •
Estado
• ´
=
´ ¨
true
¨ ∞
}
± ≤
} 
; 
try 
{   
Products!! 
.!! 
ForEach!!  
(!!  !
s!!! "
=>!!# %
context!!& -
.!!- .
Products!!. 6
.!!6 7
Add!!7 :
(!!: ;
s!!; <
)!!< =
)!!= >
;!!> ?
context"" 
."" 
SaveChanges"" #
(""# $
)""$ %
;""% &
}## 
catch$$ 
($$ '
DbEntityValidationException$$ .
e$$/ 0
)$$0 1
{%% 
foreach&& 
(&& 
var&& 
eve&&  
in&&! #
e&&$ %
.&&% &"
EntityValidationErrors&&& <
)&&< =
{'' 
Console(( 
.(( 
	WriteLine(( %
(((% &
$str((& t
,((t u
eve)) 
.)) 
Entry)) !
.))! "
Entity))" (
.))( )
GetType))) 0
())0 1
)))1 2
.))2 3
Name))3 7
,))7 8
eve))9 <
.))< =
Entry))= B
.))B C
State))C H
)))H I
;))I J
foreach** 
(** 
var**  
ve**! #
in**$ &
eve**' *
.*** +
ValidationErrors**+ ;
)**; <
{++ 
Console,, 
.,,  
	WriteLine,,  )
(,,) *
$str,,* O
,,,O P
ve-- 
.-- 
PropertyName-- +
,--+ ,
ve--- /
.--/ 0
ErrorMessage--0 <
)--< =
;--= >
}.. 
}// 
throw00 
;00 
}11 
var55 

Categories55 
=55 
new55  
List55! %
<55% &
Category55& .
>55. /
{66 
new77 
Category77 
{77 
CategoryName77 *
=77* +
$str77+ 4
,774 5
Description775 @
=77@ A
$str77A U
}77V W
}88 
;88 

Categories:: 
.:: 
ForEach:: 
(:: 
s::  
=>::! #
context::$ +
.::+ ,

Categories::, 6
.::6 7
Add::7 :
(::: ;
s::; <
)::< =
)::= >
;::> ?
context;; 
.;; 
SaveChanges;; 
(;;  
);;  !
;;;! "
var== 
User== 
=== 
new== 
List== 
<==  
User==  $
>==$ %
{>> 
new?? 
User?? 
{?? 
UserName?? "
=??" #
$str??# )
,??) *
Password??* 2
=??2 3
$str??3 >
}??? @
,??@ A
new@@ 
User@@ 
{@@ 
UserName@@ "
=@@" #
$str@@# *
,@@* +
Password@@+ 3
=@@3 4
$str@@4 ;
}@@< =
}AA 
;AA 
UserCC 
.CC 
ForEachCC 
(CC 
sCC 
=>CC 
contextCC %
.CC% &
UsersCC& +
.CC+ ,
AddCC, /
(CC/ 0
sCC0 1
)CC1 2
)CC2 3
;CC3 4
contextDD 
.DD 
SaveChangesDD 
(DD  
)DD  !
;DD! "
}EE 	
}FF 
}HH ß
\C:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Models\Category.cs
	namespace		 	
PRUEBITASGO		
 
.		 
Models		 
{

 
public 

class 
Category 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
int 

CategoryID 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
[ 	
Display	 
( 
Name 
= 
$str 0
)0 1
]1 2
[ 	
Required	 
( 
ErrorMessage 
=  
$str! F
)F G
]G H
public 
string 
CategoryName "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
StringLength	 
( 
$num 
) 
] 
[ 	
Display	 
( 
Name 
= 
$str 5
)5 6
]6 7
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ICollection 
< 
Product "
>" #
Products$ ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} ˚
bC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Models\IdentityModels.cs
	namespace 	
PRUEBITASGO
 
. 
Models 
{ 
public

 

class

 
ApplicationUser

  
:

! "
IdentityUser

# /
{ 
public 
async 
Task 
< 
ClaimsIdentity (
>( )%
GenerateUserIdentityAsync* C
(C D
UserManagerD O
<O P
ApplicationUserP _
>_ `
managera h
)h i
{ 	
var 
userIdentity 
= 
await $
manager% ,
., -
CreateIdentityAsync- @
(@ A
thisA E
,E F&
DefaultAuthenticationTypesG a
.a b
ApplicationCookieb s
)s t
;t u
return 
userIdentity 
;  
} 	
} 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
<9 :
ApplicationUser: I
>I J
{ 
public  
ApplicationDbContext #
(# $
)$ %
: 
base 
( 
$str  
,  !
throwIfV1Schema" 1
:1 2
false3 8
)8 9
{ 	
} 	
public 
static  
ApplicationDbContext *
Create+ 1
(1 2
)2 3
{ 	
return 
new  
ApplicationDbContext +
(+ ,
), -
;- .
} 	
}   
}!! €8
dC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Models\ManageViewModels.cs
	namespace 	
PRUEBITASGO
 
. 
Models 
{ 
public 

class 
IndexViewModel 
{		 
public

 
bool

 
HasPassword

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
IList 
< 
UserLoginInfo "
>" #
Logins$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
	TwoFactor 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
BrowserRemembered %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
public 

class !
ManageLoginsViewModel &
{ 
public 
IList 
< 
UserLoginInfo "
>" #
CurrentLogins$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
IList 
< %
AuthenticationDescription .
>. /
OtherLogins0 ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
public 

class 
FactorViewModel  
{ 
public 
string 
Purpose 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class  
SetPasswordViewModel %
{ 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* _
,_ `
MinimumLengtha n
=o p
$numq r
)r s
]s t
[   	
DataType  	 
(   
DataType   
.   
Password   #
)  # $
]  $ %
[!! 	
Display!!	 
(!! 
Name!! 
=!! 
$str!! *
)!!* +
]!!+ ,
public"" 
string"" 
NewPassword"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
[$$ 	
DataType$$	 
($$ 
DataType$$ 
.$$ 
Password$$ #
)$$# $
]$$$ %
[%% 	
Display%%	 
(%% 
Name%% 
=%% 
$str%% 6
)%%6 7
]%%7 8
[&& 	
Compare&&	 
(&& 
$str&& 
,&& 
ErrorMessage&&  ,
=&&- .
$str&&/ r
)&&r s
]&&s t
public'' 
string'' 
ConfirmPassword'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
}(( 
public** 

class** #
ChangePasswordViewModel** (
{++ 
[,, 	
Required,,	 
],, 
[-- 	
DataType--	 
(-- 
DataType-- 
.-- 
Password-- #
)--# $
]--$ %
[.. 	
Display..	 
(.. 
Name.. 
=.. 
$str.. +
)..+ ,
].., -
public// 
string// 
OldPassword// !
{//" #
get//$ '
;//' (
set//) ,
;//, -
}//. /
[11 	
Required11	 
]11 
[22 	
StringLength22	 
(22 
$num22 
,22 
ErrorMessage22 '
=22( )
$str22* _
,22_ `
MinimumLength22a n
=22o p
$num22q r
)22r s
]22s t
[33 	
DataType33	 
(33 
DataType33 
.33 
Password33 #
)33# $
]33$ %
[44 	
Display44	 
(44 
Name44 
=44 
$str44 *
)44* +
]44+ ,
public55 
string55 
NewPassword55 !
{55" #
get55$ '
;55' (
set55) ,
;55, -
}55. /
[77 	
DataType77	 
(77 
DataType77 
.77 
Password77 #
)77# $
]77$ %
[88 	
Display88	 
(88 
Name88 
=88 
$str88 6
)886 7
]887 8
[99 	
Compare99	 
(99 
$str99 
,99 
ErrorMessage99  ,
=99- .
$str99/ r
)99r s
]99s t
public:: 
string:: 
ConfirmPassword:: %
{::& '
get::( +
;::+ ,
set::- 0
;::0 1
}::2 3
};; 
public== 

class== #
AddPhoneNumberViewModel== (
{>> 
[?? 	
Required??	 
]?? 
[@@ 	
Phone@@	 
]@@ 
[AA 	
DisplayAA	 
(AA 
NameAA 
=AA 
$strAA ,
)AA, -
]AA- .
publicBB 
stringBB 
NumberBB 
{BB 
getBB "
;BB" #
setBB$ '
;BB' (
}BB) *
}CC 
publicEE 

classEE &
VerifyPhoneNumberViewModelEE +
{FF 
[GG 	
RequiredGG	 
]GG 
[HH 	
DisplayHH	 
(HH 
NameHH 
=HH 
$strHH  
)HH  !
]HH! "
publicII 
stringII 
CodeII 
{II 
getII  
;II  !
setII" %
;II% &
}II' (
[KK 	
RequiredKK	 
]KK 
[LL 	
PhoneLL	 
]LL 
[MM 	
DisplayMM	 
(MM 
NameMM 
=MM 
$strMM ,
)MM, -
]MM- .
publicNN 
stringNN 
PhoneNumberNN !
{NN" #
getNN$ '
;NN' (
setNN) ,
;NN, -
}NN. /
}OO 
publicQQ 

classQQ '
ConfigureTwoFactorViewModelQQ ,
{RR 
publicSS 
stringSS 
SelectedProviderSS &
{SS' (
getSS) ,
;SS, -
setSS. 1
;SS1 2
}SS3 4
publicTT 
ICollectionTT 
<TT 
SystemTT !
.TT! "
WebTT" %
.TT% &
MvcTT& )
.TT) *
SelectListItemTT* 8
>TT8 9
	ProvidersTT: C
{TTD E
getTTF I
;TTI J
setTTK N
;TTN O
}TTP Q
}UU 
}VV ‚
[C:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Models\Product.cs
	namespace		 	
PRUEBITASGO		
 
.		 
Models		 
{

 
public 

class 
Product 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
int 
	ProductID 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
[ 	
Display	 
( 
Name 
= 
$str -
)- .
]. /
[ 	
Required	 
( 
ErrorMessage 
=  
$str! C
)C D
]D E
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
), -
]- .
[ 	
Display	 
( 
Name 
= 
$str 2
)2 3
]3 4
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! B
)B C
]C D
public 
int 
Stock 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
	Perecible 
{ 
get  #
;# $
set% (
;( )
}* +
public   
bool   
Estado   
{   
get    
;    !
set  " %
;  % &
}  ' (
public"" 
DateTime"" 
DueDate"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
[$$ 	
Range$$	 
($$ 
$num$$ 
,$$ 
$num$$ 
)$$ 
]$$ 
public%% 
decimal%% 
	UnitPrice%%  
{%%! "
get%%# &
;%%& '
set%%( +
;%%+ ,
}%%- .
public&& 
virtual&& 
Category&& 
Category&&  (
{&&) *
get&&+ .
;&&. /
set&&0 3
;&&3 4
}&&5 6
}'' 
}(( ç
XC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Models\User.cs
	namespace		 	
PRUEBITASGO		
 
.		 
Models		 
{

 
public 

class 
User 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str "
)" #
]# $
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Display	 
( 
Name 
= 
$str "
)" #
]# $
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ¢
bC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Models\UserRepository.cs
	namespace 	
PRUEBITASGO
 
. 
Models 
{		 
public

 

class

 
UserRepository

 
{ 
ShopContext 
context 
= 
new !
ShopContext" -
(- .
). /
;/ 0
public 
User 
Find 
( 
string 
username  (
)( )
{ 	
return 
context 
. 
Users  
.  !
Where! &
(& '
u' (
=>) +
u, -
.- .
UserName. 6
.6 7
Equals7 =
(= >
username> F
)F G
)G H
.H I
FirstOrDefaultI W
(W X
)X Y
;Y Z
} 	
public 
User $
GetByUsernameAndPassword ,
(, -
User- 1
user2 6
)6 7
{ 	
return 
context 
. 
Users  
.  !
Where! &
(& '
u' (
=>) +
u, -
.- .
UserName. 6
==7 9
user: >
.> ?
UserName? G
&H I
uJ K
.K L
PasswordL T
==U W
userX \
.\ ]
Password] e
)e f
.f g
FirstOrDefaultg u
(u v
)v w
;w x
} 	
} 
} ñ
aC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Models\UserViewModel.cs
	namespace 	
PRUEBITASGO
 
. 
Models 
{ 
public		 

class		 
UserViewModel		 
{

 
private 
List 
< 
User 
> 
	listUsers $
=% &
new' *
List+ /
</ 0
User0 4
>4 5
(5 6
)6 7
;7 8
public 
UserViewModel 
( 
) 
{ 	
} 	
} 
} è
dC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str &
)& '
]' (
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str (
)( )
]) *
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *Å
pC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Security\CustomAuthorizateAttribute.cs
	namespace

 	
PRUEBITASGO


 
.

 
Security

 
{ 
public 

class &
CustomAuthorizateAttribute +
:+ ,
AuthorizeAttribute, >
{ 
public 
override 
void 
OnAuthorization ,
(, - 
AuthorizationContext- A
filterContextB O
)O P
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
SessionPersister% 5
.5 6
Username6 >
)> ?
)? @
{ 
filterContext 
. 
Result $
=% &
new' *!
RedirectToRouteResult+ @
(@ A
newA D 
RouteValueDictionaryE Y
(Y Z
newZ ]
{^ _

controller` j
=k l
$strm v
,w x
actiony 
=	 Ä
$str
Ä á
}
á à
)
à â
)
â ä
;
ä ã
} 
else 
{ 
UserRepository 
us !
=" #
new$ '
UserRepository( 6
(6 7
)7 8
;8 9
CustomPrincipal 
mp  "
=# $
new% (
CustomPrincipal) 8
(8 9
us9 ;
.; <
Find< @
(@ A
SessionPersisterA Q
.Q R
UsernameR Z
)Z [
.[ \
UserName\ d
)d e
;e f
} 
} 	
} 
} ≈
eC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Security\CustomPrincipal.cs
	namespace

 	
PRUEBITASGO


 
.

 
Security

 
{ 
public 

class 
CustomPrincipal  
:! "

IPrincipal# -
{ 
private 
User 
user 
; 
private 
UserRepository 
us !
=" #
new$ '
UserRepository( 6
(6 7
)7 8
;8 9
public 
CustomPrincipal 
( 
string %
username& .
). /
{ 	
this 
. 
user 
= 
us 
. 
Find 
(  
username  (
)( )
;) *
this 
. 
Identity 
= 
new 
GenericIdentity  /
(/ 0
username0 8
)8 9
;9 :
} 	
public 
	IIdentity 
Identity !
{ 	
get 
; 
set 
; 
} 	
public 
bool 
IsInRole 
( 
string #
role$ (
)( )
{ 	
return 
true 
; 
}   	
}!! 
}"" £
fC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Security\SessionPersister.cs
	namespace 	
PRUEBITASGO
 
. 
Security 
{		 
public

 

static

 
class

 
SessionPersister

 (
{ 
static 
string 
USERNAME_SESSIONVAR )
=* +
$str, 6
;6 7
public 
static 
string 
Username %
{ 	
get 
{ 
if 
( 
HttpContext 
. 
Current &
==' )
null* .
). /
{ 
return 
string !
.! "
Empty" '
;' (
} 
var 

sessionvar 
=  
HttpContext! ,
., -
Current- 4
.4 5
Session5 <
[< =
USERNAME_SESSIONVAR= P
]P Q
;Q R
if 
( 

sessionvar 
!=  
null! %
)% &
{ 
return 

sessionvar %
as& (
string) /
;/ 0
} 
return 
null 
; 
} 
set 
{ 
HttpContext   
.   
Current   #
.  # $
Session  $ +
[  + ,
USERNAME_SESSIONVAR  , ?
]  ? @
=  A B
value  C H
;  H I
}!! 
}"" 	
public$$ 
static$$ 
void$$ 
logout$$ !
($$! "
)$$" #
{%% 	
HttpContext&& 
.&& 
Current&& 
.&&  
Session&&  '
.&&' (
Clear&&( -
(&&- .
)&&. /
;&&/ 0
}'' 	
}(( 
})) ˝
TC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Startup.cs
[ 
assembly 	
:	 
 
OwinStartupAttribute 
(  
typeof  &
(& '
PRUEBITASGO' 2
.2 3
Startup3 :
): ;
); <
]< =
	namespace 	
PRUEBITASGO
 
{ 
public 

partial 
class 
Startup  
{ 
public		 
void		 
Configuration		 !
(		! "
IAppBuilder		" -
app		. 1
)		1 2
{

 	
ConfigureAuth 
( 
app 
) 
; 
} 	
} 
} Üi
lC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\Test\ProductControllerTestClass.cs
	namespace 	
Tests
 
{ 
[ 
TestFixture 
] 
public 

class &
ProductControllerTestClass +
{ 
[ 	
Test	 
] 
public 
void 
ProductIndex  
(  !
)! "
{ 	
var 
obj 
= 
new 
ProductsController ,
(, -
)- .
;. /
var 
	actResult 
= 
obj 
.  
Index  %
(% &
)& '
as( *

ViewResult+ 5
;5 6
Assert 
. 
That 
( 
	actResult !
.! "
ViewName" *
,* +
Is, .
.. /
EqualTo/ 6
(6 7
$str7 9
)9 :
): ;
;; <
} 	
[ 	
Test	 
] 
public 
void 
DetailsNull 
(  
)  !
{ 	
var 
obj 
= 
new 
ProductsController ,
(, -
)- .
;. /
var 
	actResult 
= 
obj 
.  
Details  '
(' (
null( ,
), -
as. 0 
HttpStatusCodeResult1 E
;E F
Assert   
.   
AreEqual   
(   
$num   
,    
	actResult  ! *
.  * +

StatusCode  + 5
)  5 6
;  6 7
}!! 	
[## 	
Test##	 
]## 
public$$ 
void$$ 
DetailsNotFound$$ #
($$# $
)$$$ %
{%% 	
var&& 
obj&& 
=&& 
new&& 
ProductsController&& ,
(&&, -
)&&- .
;&&. /
var'' 
	actResult'' 
='' 
obj'' 
.''  
Details''  '
(''' (
$num''( +
)''+ ,
as''- / 
HttpStatusCodeResult''0 D
;''D E
Assert(( 
.(( 
AreEqual(( 
((( 
$num(( 
,((  
	actResult((! *
.((* +

StatusCode((+ 5
)((5 6
;((6 7
})) 	
[,, 	
Test,,	 
],, 
public-- 
void-- 

CreateGood-- 
(-- 
)--  
{.. 	
var// 
obj// 
=// 
new// 
ProductsController// ,
(//, -
)//- .
;//. /
Product00 
aux00 
=00 
new00 
Product00 %
(00% &
)00& '
;00' (
aux11 
.11 
ProductName11 
=11 
$str11 5
;115 6
aux22 
.22 
Stock22 
=22 
$num22 
;22 
aux33 
.33 
	UnitPrice33 
=33 
$num33 !
;33! "
aux44 
.44 
Estado44 
=44 
true44 
;44 
aux55 
.55 
	Perecible55 
=55 
true55  
;55  !
aux66 
.66 
DueDate66 
=66 
DateTime66 "
.66" #
Parse66# (
(66( )
$str66) 5
)665 6
;666 7
aux77 
.77 
Description77 
=77 
$str77 0
;770 1
var99 
	actResult99 
=99 
obj99 
.99  
Create99  &
(99& '
aux99' *
)99* +
as99, .!
RedirectToRouteResult99/ D
;99D E
Assert:: 
.:: 
AreEqual:: 
(:: 
$str:: #
,::# $
	actResult::% .
.::. /
RouteValues::/ :
[::: ;
$str::; C
]::C D
)::D E
;::E F
};; 	
[== 	
Test==	 
]== 
public>> 
void>> 
ProductDAfail>> !
(>>! "
)>>" #
{?? 	
var@@ 
obj@@ 
=@@ 
new@@ 
ProductsController@@ ,
(@@, -
)@@- .
;@@. /
ProductAA 
auxAA 
=AA 
newAA 
ProductAA %
(AA% &
)AA& '
;AA' (
auxBB 
.BB 
ProductNameBB 
=BB 
$strBB "
;BB" #
auxCC 
.CC 
StockCC 
=CC 
$numCC 
;CC 
auxDD 
.DD 
	UnitPriceDD 
=DD 
$numDD !
;DD! "
auxEE 
.EE 
EstadoEE 
=EE 
trueEE 
;EE 
auxFF 
.FF 
	PerecibleFF 
=FF 
trueFF  
;FF  !
auxGG 
.GG 
DueDateGG 
=GG 
DateTimeGG "
.GG" #
ParseGG# (
(GG( )
$strGG) 5
)GG5 6
;GG6 7
auxHH 
.HH 
DescriptionHH 
=HH 
$strHH 0
;HH0 1
AssertJJ 
.JJ 
IsTrueJJ 
(JJ 
ValidateModelJJ '
(JJ' (
auxJJ( +
)JJ+ ,
.JJ, -
CountJJ- 2
>JJ3 4
$numJJ5 6
)JJ6 7
;JJ7 8
}KK 	
[MM 	
TestMM	 
]MM 
publicNN 
voidNN 
ProductDACorrectNN $
(NN$ %
)NN% &
{OO 	
varPP 
objPP 
=PP 
newPP 
ProductsControllerPP ,
(PP, -
)PP- .
;PP. /
ProductQQ 
auxQQ 
=QQ 
newQQ 
ProductQQ %
(QQ% &
)QQ& '
;QQ' (
auxRR 
.RR 
ProductNameRR 
=RR 
$strRR ,
;RR, -
auxSS 
.SS 
StockSS 
=SS 
$numSS 
;SS 
auxTT 
.TT 
	UnitPriceTT 
=TT 
$numTT !
;TT! "
auxUU 
.UU 
EstadoUU 
=UU 
trueUU 
;UU 
auxVV 
.VV 
	PerecibleVV 
=VV 
trueVV  
;VV  !
auxWW 
.WW 
DueDateWW 
=WW 
DateTimeWW "
.WW" #
ParseWW# (
(WW( )
$strWW) 5
)WW5 6
;WW6 7
auxXX 
.XX 
DescriptionXX 
=XX 
$strXX 0
;XX0 1
AssertZZ 
.ZZ 
IsTrueZZ 
(ZZ 
ValidateModelZZ '
(ZZ' (
auxZZ( +
)ZZ+ ,
.ZZ, -
CountZZ- 2
<=ZZ3 5
$numZZ6 7
)ZZ7 8
;ZZ8 9
}[[ 	
[]] 	
Test]]	 
]]] 
public^^ 
void^^ 
EditNull^^ 
(^^ 
)^^ 
{__ 	
var`` 
obj`` 
=`` 
new`` 
ProductsController`` ,
(``, -
)``- .
;``. /
intaa 
?aa 
valueaa 
=aa 
nullaa 
;aa 
varbb 
	actResultbb 
=bb 
objbb 
.bb  
Editbb  $
(bb$ %
valuebb% *
)bb* +
asbb, . 
HttpStatusCodeResultbb/ C
;bbC D
Assertcc 
.cc 
AreEqualcc 
(cc 
$numcc 
,cc  
	actResultcc! *
.cc* +

StatusCodecc+ 5
)cc5 6
;cc6 7
}dd 	
[ff 	
Testff	 
]ff 
publicgg 
voidgg 
EditGoodgg 
(gg 
)gg 
{hh 	
varii 
objii 
=ii 
newii 
ProductsControllerii ,
(ii, -
)ii- .
;ii. /
Productjj 
auxjj 
=jj 
newjj 
Productjj %
(jj% &
)jj& '
;jj' (
auxkk 
.kk 
	ProductIDkk 
=kk 
$numkk 
;kk 
auxll 
.ll 
ProductNamell 
=ll 
$strll 5
;ll5 6
auxmm 
.mm 
Stockmm 
=mm 
$nummm 
;mm 
auxnn 
.nn 
	UnitPricenn 
=nn 
$numnn !
;nn! "
auxoo 
.oo 
Estadooo 
=oo 
trueoo 
;oo 
auxpp 
.pp 
	Pereciblepp 
=pp 
truepp  
;pp  !
auxqq 
.qq 
DueDateqq 
=qq 
DateTimeqq "
.qq" #
Parseqq# (
(qq( )
$strqq) 5
)qq5 6
;qq6 7
auxrr 
.rr 
Descriptionrr 
=rr 
$strrr 0
;rr0 1
vartt 
	actResulttt 
=tt 
objtt 
.tt  
Edittt  $
(tt$ %
auxtt% (
)tt( )
astt* ,!
RedirectToRouteResulttt- B
;ttB C
Assertuu 
.uu 
AreEqualuu 
(uu 
$struu #
,uu# $
	actResultuu% .
.uu. /
RouteValuesuu/ :
[uu: ;
$struu; C
]uuC D
)uuD E
;uuE F
}vv 	
[xx 	
Testxx	 
]xx 
publicyy 
voidyy 

DeleteNullyy 
(yy 
)yy  
{zz 	
var{{ 
obj{{ 
={{ 
new{{ 
ProductsController{{ ,
({{, -
){{- .
;{{. /
var|| 
	actResult|| 
=|| 
obj|| 
.||  
Delete||  &
(||& '
null||' +
)||+ ,
as||- / 
HttpStatusCodeResult||0 D
;||D E
Assert}} 
.}} 
AreEqual}} 
(}} 
$num}} 
,}}  
	actResult}}! *
.}}* +

StatusCode}}+ 5
)}}5 6
;}}6 7
}~~ 	
[
ÄÄ 	
Test
ÄÄ	 
]
ÄÄ 
public
ÅÅ 
void
ÅÅ 
DeleteNotFound
ÅÅ "
(
ÅÅ" #
)
ÅÅ# $
{
ÇÇ 	
var
ÉÉ 
obj
ÉÉ 
=
ÉÉ 
new
ÉÉ  
ProductsController
ÉÉ ,
(
ÉÉ, -
)
ÉÉ- .
;
ÉÉ. /
var
ÑÑ 
	actResult
ÑÑ 
=
ÑÑ 
obj
ÑÑ 
.
ÑÑ  
Delete
ÑÑ  &
(
ÑÑ& '
$num
ÑÑ' *
)
ÑÑ* +
as
ÑÑ, ."
HttpStatusCodeResult
ÑÑ/ C
;
ÑÑC D
Assert
ÖÖ 
.
ÖÖ 
AreEqual
ÖÖ 
(
ÖÖ 
$num
ÖÖ 
,
ÖÖ  
	actResult
ÖÖ! *
.
ÖÖ* +

StatusCode
ÖÖ+ 5
)
ÖÖ5 6
;
ÖÖ6 7
}
ÜÜ 	
[
ââ 	
Test
ââ	 
]
ââ 
public
ää 
void
ää !
DeleteConfirmedNull
ää '
(
ää' (
)
ää( )
{
ãã 	
var
åå 
obj
åå 
=
åå 
new
åå  
ProductsController
åå ,
(
åå, -
)
åå- .
;
åå. /
var
çç 
	actResult
çç 
=
çç 
obj
çç 
.
çç  
DeleteConfirmed
çç  /
(
çç/ 0
$num
çç0 3
)
çç3 4
as
çç5 7#
RedirectToRouteResult
çç8 M
;
ççM N
Assert
éé 
.
éé 
AreEqual
éé 
(
éé 
$str
éé #
,
éé# $
	actResult
éé% .
.
éé. /
RouteValues
éé/ :
[
éé: ;
$str
éé; C
]
ééC D
)
ééD E
;
ééE F
}
èè 	
private
îî 
IList
îî 
<
îî 
ValidationResult
îî &
>
îî& '
ValidateModel
îî( 5
(
îî5 6
object
îî6 <
model
îî= B
)
îîB C
{
ïï 	
var
ññ 
validationResults
ññ !
=
ññ" #
new
ññ$ '
List
ññ( ,
<
ññ, -
ValidationResult
ññ- =
>
ññ= >
(
ññ> ?
)
ññ? @
;
ññ@ A
var
óó 
ctx
óó 
=
óó 
new
óó 
ValidationContext
óó +
(
óó+ ,
model
óó, 1
,
óó1 2
null
óó3 7
,
óó7 8
null
óó9 =
)
óó= >
;
óó> ?
	Validator
òò 
.
òò 
TryValidateObject
òò '
(
òò' (
model
òò( -
,
òò- .
ctx
òò/ 2
,
òò2 3
validationResults
òò4 E
,
òòE F
true
òòG K
)
òòK L
;
òòL M
return
ôô 
validationResults
ôô $
;
ôô$ %
}
öö 	
}
ùù 
}ûû Ã
eC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\ViewModels\UserViewModel.cs
	namespace 	
PRUEBITASGO
 
. 

ViewModels  
{		 
public

 

class

 
UserViewModel

 
{ 
public 
User 
user 
{ 	
get 
; 
set 
; 
} 	
} 
} ï
íC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.csï
íC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.csï
íC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csó
îC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.csó
îC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.csó
îC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\PRUEBITASGO\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csê
aC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\Tests\ProductControllerTestClass.cs
	namespace		 	
Tests		
 
{

 
[ 
TestFixture 
] 
public 

class &
ProductControllerTestClass +
{ 
[ 	
Test	 
] 
public 
void 
ProductIndex  
(  !
)! "
{ 	
var 
obj 
= 
new 
ProductsController ,
(, -
)- .
;. /
var 
	actResult 
= 
obj 
.  
Index  %
(% &
)& '
as( *

ViewResult+ 5
;5 6
Assert 
. 
That 
( 
	actResult !
.! "
ViewName" *
,* +
Is, .
.. /
Eq/ 1
)1 2
} 	
} 
} ê
NC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\Tests\Program.cs
	namespace 	
Tests
 
{ 
class		 	
Program		
 
{

 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{ 	
} 	
} 
} â
^C:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\Tests\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str  
)  !
]! "
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str "
)" #
]# $
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *è
åC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\Tests\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.csè
åC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\Tests\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.csè
åC:\Users\Harold\Documents\Ciclo20161\Experimentos\PRUEBITASGO\Tests\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs