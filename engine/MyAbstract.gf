abstract MyAbstract = Cat, Conjunction ** {


	flags startcat = Utt ;

cat
	Time;
	Title;
	Place;
	PlaceNoun;
	LocPrep;
	CoagentPrep;
	InstrumentPrep;
	ThemePrep;
	MannerPrep;
	TimePrep;
	SourcePrep;
	ResultPrep;
	PatientPrep;
	ExtentPrep;
	AttributePrep;
	StimulusPrep;
	ProductPrep;
	GoalPrep;
	BeneficiaryPrep;
	TrajectoryPrep;
	CausePrep;
	Adv_coagent;
	Adv_instrument;
	Adv_theme;
	Adv_manner;
	Adv_time;
	Adv_location;
	Adv_source;
	Adv_result;
	Adv_patient;
	Adv_extent;
	Adv_attribute;
	Adv_stimulus;
	Adv_product;
	Adv_goal;
	Adv_beneficiary;
	Adv_trajectory;
	Adv_cause;
	MassDet;
	SubordCl;
	Partitive;
	NounCl;
	ListAdv_manner;
	ListAdv_result;

fun
	Look_bad	: VA -> AP -> VP;
	-- Be_made_sth : V3 -> NP -> VP;
	Be_bad	: AP -> Comp;
	Be_someone	: NP -> Comp;
	Be_AdV_NP	: AdV -> NP -> Comp;
	Be_somewhere	: Adv_location -> Comp;
	Be_coagent	: Adv_coagent -> Comp;
	Be_theme	: Adv_theme -> Comp;
	Be_vp	: Comp -> VP;
	Locating  : LocPrep -> Place -> Adv_location;
	Location	: Det -> PlaceNoun -> Place;
	NamedPlace	: PN -> Place;
	Coagency	: CoagentPrep -> NP -> Adv_coagent;
	Instrumenting	: InstrumentPrep -> NP -> Adv_instrument;
	Themeing	: ThemePrep -> NP -> Adv_theme;
	Mannering	: MannerPrep -> NP -> Adv_manner;
	Timing		: TimePrep -> NP -> Adv_time;
	Sourcing		: SourcePrep -> NP -> Adv_source;
	Resulting		: ResultPrep -> NP -> Adv_result;
	Patienting		: PatientPrep -> NP -> Adv_patient;
	Extenting	: ExtentPrep -> NP -> Adv_extent;
	Attributing	: AttributePrep -> NP -> Adv_attribute;
	Stimulating	: StimulusPrep -> NP -> Adv_stimulus;
	Producing	: ProductPrep -> NP -> Adv_product;
	Goaling	: GoalPrep -> NP -> Adv_goal;
	Benefiting	: BeneficiaryPrep -> NP -> Adv_beneficiary;
	Trajectoring	: TrajectoryPrep -> NP -> Adv_trajectory;
	Causing	: CausePrep -> NP -> Adv_cause;
	V_	: V -> VP ;
	V_NP	: V2 -> NP -> VP;
	V_NP_VP:	V2V -> NP -> VP -> VP;
	V_NP_NegVP	: V2V -> NP -> VP -> VP;
	Intens:	VV -> VP -> VP;
	NegComplVV:	VV -> VP -> VP;
	V_that_S:	VS -> S -> VP;
	V_S:	VS -> S -> VP;
	V_SC:	VS -> SC -> VP;
	V_NP_that_S:	V2S -> NP -> S -> VP;
	V_NP_S:	V2S -> NP -> S -> VP;
	V_Q	: VQ -> QS -> VP;
	V_NP_whether_S:	V2Q -> NP -> QS -> VP;
	V_NP_NP:	V3 -> NP -> NP -> VP;
  V_NP_AP: V2A -> NP -> AP -> VP;
	progressiveVP:	VP -> VP;
	-- GetPassV3	: V3 -> NP -> VP ;	-- get called John
	-- GetNPPPart	: V2 -> NP -> VP; -- get the job done right
	passive : V2 -> VP;
	Pass : VPSlash -> VP;
	PassAgent : VPSlash -> NP -> VP;
	V2Slash	: V2 -> VPSlash;
	-- VSSlash	: VS -> VPSlash;
	VVSlash	: VV -> VPSlash -> VPSlash;
	NegVVSlash	: VV -> VPSlash -> VPSlash;
	V2VSlash	: V2V -> VP -> VPSlash;
	V2ASlash	: V2A -> AP -> VPSlash;
	V3Slash	: V3 -> NP -> VPSlash;
	V3Slash1	: V3 -> NP -> VPSlash;
	reflexive	: VPSlash -> VP;
	ModInf : CN -> VP -> CN;
	ModPass3 : CN -> V3 -> NP -> CN;
	-- ModSlInf : CN -> VPSlash -> CN;
	MassModInf : N -> VP -> CN;
	Modified	: CN -> RCl -> CN;
	NegModified	: CN -> RCl -> CN;
	MassMod	: N -> RCl -> N;
	SubjRel	: RP -> VP -> RCl;
	ObjRel	: RP -> ClSlash -> RCl;
	EmptyRel : ClSlash -> RCl;
	EmptyRelSlash	: ClSlash -> RCl;
	DetRCltoNP	: Det -> RCl -> NP;
	DetVPtoNP	: Det -> VP -> NP;
	SubjGerund	: NP -> VP -> NP;
	InfinitiveNP	: VP -> NP;
	FactNP	: Cl -> NP;
	WayNP	: Cl -> NP;
	HowNP	: Cl -> NP;
	WhyNP	: Cl -> NP;
	ThatNP	: Cl -> NP;
	ThatNegNP	: Cl -> NP;
	PartN	: V -> N;
	Gerund	: VP -> NP;
	GerundSlash	: VPSlash -> CN;
	ByGerund : VP -> Adv_manner;
	SClSlash	: NP -> VPSlash -> ClSlash;
	-- VPClSlash	: VPSlash -> ClSlash;
	FreeICl : IP -> VP -> NounCl;
	FreeIClSlash : IP -> ClSlash -> NounCl;
	IAdvA	: IAdv -> A -> IAdv;
	FreeInfICl	: IAdv -> VP -> NounCl;
	-- FreeInfCl	: VP -> NounCl;
	NomCl : NounCl -> NP;
	Mannered	: NP -> Adv_manner -> NP;
	Sourced	: NP -> Adv_source -> NP;
	Themed	: NP -> Adv_theme -> NP;
	AdV_VP	: AdV -> VP -> VP;
	AdV_VPSlash	: AdV -> VPSlash -> VPSlash;
	WithPlace	:  V -> Adv_location -> VP;
	VP_Adv_coagent	: VP -> Adv_coagent -> VP;
	VP_Adv_instrument	: VP -> Adv_instrument -> VP;
	VP_Adv_theme	: VP -> Adv_theme -> VP;
	VP_Adv_manner : VP -> Adv_manner -> VP;
	VP_Adv_time	: VP -> Adv_time -> VP;
	VP_Adv_location	:  VP -> Adv_location -> VP;
	VP_Adv_result	: VP -> Adv_result -> VP;
	VP_Adv_extent	: VP -> Adv_extent -> VP;
	VP_Adv_attribute	: VP -> Adv_attribute -> VP;
	VP_Adv_stimulus	: VP -> Adv_stimulus -> VP;
	VP_Adv_product	: VP -> Adv_product -> VP;
	VP_Adv_goal	: VP -> Adv_goal -> VP;
	VP_Adv_beneficiary	: VP -> Adv_beneficiary -> VP;
	VP_Adv_trajectory	: VP -> Adv_trajectory -> VP;
	VP_Adv_cause	: VP -> Adv_cause -> VP;
	WithCl	: VP -> SubordCl -> VP;
	VPToo	: VP -> VP;
	VPAlready	: VP -> VP;
	WithClPre	: SubordCl -> S -> S;
	WithAdvPre	: Adv -> S -> S;
	ThemePre	: Adv_theme -> S -> S;
	PatientPre	: Adv_patient -> S -> S;
	SourcePre	: Adv_source -> S -> S;
	TimePre	: Adv_time -> S -> S;
	ExtentPre	: Adv_extent -> S -> S;
	LocationPre	: Adv_location -> S -> S;

	ICompS	: IComp -> NP -> QS;
	YN	: Cl -> QCl;

	TagS	: NP -> VP -> QCl;
	TagQ	: NP -> VP -> QCl;
	TagComp	: NP -> Comp -> QCl;
	TagModal	: NP -> VV -> VP -> QCl;
	-- TagNP	: NP -> NP -> QCl;
	-- TagAP	: NP -> AP -> QCl;

	WH_Pred	: IP -> VP -> QCl;
	WHose	: CN -> IP;
	IPhrase	: IDet -> CN -> IP;
	WH_ClSlash	: IP -> ClSlash -> QCl;
	IAdvQCl	: IAdv -> Cl -> QCl;
	IAdvInfICl	: IAdv -> VP -> QCl;
	PosQ	: QCl -> QS;
	NegQ	: QCl -> QS;
	AntPosQ	: QCl -> QS;
	AntNegQ	: QCl -> QS;
	FutPosQ	: QCl -> QS;
	FutNegQ	: QCl -> QS;
	CondPosQ	: QCl -> QS;
	CondNegQ	: QCl -> QS;
	PastPosQ	: QCl -> QS;
	PastNegQ	: QCl -> QS;
	PosS	: Cl -> S;
	NegS	: Cl -> S;
	AntPosS	: Cl -> S;
	AntNegS	: Cl -> S;
	FutPosS	: Cl -> S;
	FutNegS	: Cl -> S;
	CondPosS	: Cl -> S;
	CondNegS	: Cl -> S;
	PastPosS	: Cl -> S;
	PastNegS	: Cl -> S;
	QUt	: QS -> Utt;
	Ut	: S -> Utt;
	Sentence	: NP -> VP -> Cl;
	Exist	: NP -> Cl;

	Yes, No, NoAnswer	: Utt;
	Answer : NP -> Utt;

	Inject	: Interj -> SC;

	Entity	: PN -> NP;
	Kind	: AP -> CN -> CN;
	MassKind	: AP -> N -> N;
	Something	: AP -> NP;
	KindOfKind  : CN -> Adv -> CN;
	MassKindOfKind  : N -> Adv -> N;
	KindInTime  : CN -> Adv_time -> CN;
	KindOfTime	: AP -> Time -> Time;
	TimeInTime  : Time -> Adv_time -> Time;
	TimeAsAdv	: Det -> Time -> Adv_time;
	TimeAsAdvWithPredet	: Predet -> Det -> Time -> Adv_time;
	KindInPlace	: CN -> Adv_location -> CN;
	NPInPlace	: NP -> Adv_location -> NP;
	PlaceKind	: AP -> PlaceNoun -> PlaceNoun;
	KindToExtent	: CN -> Adv_extent -> CN;
	Membership : Det -> CN -> Adv_location -> Cl;
	CompoundCN	: CN -> CN -> CN;
	ApposCN	: CN -> NP -> CN;
	CompoundNP	: NP -> NP -> NP;
	PN_CN	: PN -> CN -> CN;
	Item	: Det -> CN -> NP;
	MassItem	: MassDet -> N -> NP;
	Titular	: Title -> NP;
	PredetItem	: Predet -> NP -> NP;
	Ofpos	: N2 -> NP -> CN;
	Ofpart	: Partitive -> NP -> NP;
	N2toCN	: N2 -> CN;
	N2toMassN	: N2 -> N;
	MassOfpos	: N2 -> NP -> N;
	ApposNP	: NP -> NP -> NP;
	ApposPlace	: Place -> Place -> Place;
	NPPostPredet	: NP -> Predet -> NP;

	a_DET : Det; -- (\d,f -> exists (\x -> and (d x) (f x)));
	zero_Det_pl : Det; -- (\d,f -> exists (\x -> and (d x) (f x)));
	zero_Det_sg : MassDet;
	the_MASS_DET	: MassDet;
	some_MASS_DET	: MassDet;
	any_MASS_DET	: MassDet;
	more_MASS_DET	: MassDet;
	more_NP	: NP;
	the_SG_DET : Det; -- (\d,f -> exists (\x -> and (d x) (f x)));
	the_PLURAL_DET : Det; -- (\d,f -> exists (\x -> and (d x) (f x)));
	Apos  : NP -> Det;
	MassApos	: NP -> MassDet;
	Apos_pl  : NP -> Det;
	no_DET	: Det;
	no_PL_DET	: Det;
	no_NP	: NP;
	no_PL_NP	: NP;
	no_MASSDET	: MassDet;
	some_DET	: Det;
	some_PL_DET	: Det;
	some_NP	: NP;
	some_PL_NP	: NP;
	some_PREDET	: Predet;
	something	: NP;
	someone_NP	: NP;
	every_DET	: Det;
	everyone_NP	: NP;
	everything_NP	: NP;
	all_PREDET	: Predet;
	List : NP -> NP -> ListNP;
	AddList : NP -> ListNP -> ListNP;
	CloseList	: Conj -> ListNP -> NP;
	APList : AP -> AP -> ListAP;
	AddAP : AP -> ListAP -> ListAP;
	CloseAP	: Conj -> ListAP -> AP;
	AdvList : Adv -> Adv -> ListAdv;
	AddAdv : Adv -> ListAdv -> ListAdv;
	CloseAdv	: Conj -> ListAdv -> Adv;
	Adv_mannerList : Adv_manner -> Adv_manner -> ListAdv_manner;
	AddAdv_manner : Adv_manner -> ListAdv_manner -> ListAdv_manner;
	CloseAdv_manner	: Conj -> ListAdv_manner -> Adv_manner;
	Adv_resultList : Adv_result -> Adv_result -> ListAdv_result;
	AddAdv_result : Adv_result -> ListAdv_result -> ListAdv_result;
	CloseAdv_result	: Conj -> ListAdv_result -> Adv_result;
	ConcatS	: Conj -> S -> S -> S;
	PreConjUtt	: Conj -> Utt -> Utt;

	her_DET	: Det;
	her_MASSDET	: MassDet;
	his_DET	: Det;
	its	: Det;
	your	: Det;
	their	: Det;
	this	: Det;
	these	: Det;
	that	: Det;
	those	: Det;

	he	: NP;
	she	: NP;
	it	: NP;
	that_PRON	: NP;
	this_PRON	: NP;
	they	: NP;
	you	: NP;
	we	: NP;

	who_WH	: IP;
	what_WH	: IP;
	what_PL_IDET	: IDet;
	which_SG_IDET	: IDet;
	which_PL_IDET	: IDet;
	how_WH	: IAdv;
	why_WH	: IAdv;
	who_RP	: RP;
	that_RP	: RP;
	in_which	: RP;
	where_RP	: RP;
	when_RP	: RP;
	whose_SG_RP	: CN -> RP;
	whose_PL_RP	: CN -> RP;

	more : CAdv;
	ComparaAP : A -> NP -> AP;
	ComparaAdv : CAdv -> A -> NP -> Adv;
	ComparaN	: CAdv -> CN -> NP -> NP;
	ComparaS : AP -> S -> AP;
	More	: A -> AP;
	AdjModified	: AP -> VP -> AP;
	As_as	: AP -> NP -> AP;
	AdvAdj	: AdA -> AP -> AP;
	A_PP	: A2 -> NP ->AP;
	A_Adv_location	: A2 -> Place ->AP;
	VP_AP	: VP -> AP;
	VPSlash_AP	: VPSlash -> AP;
	VP_NP_AP	: VPSlash -> NP -> AP;

	about_PREP	: Prep;
	at_PREP	: LocPrep;
	before_PREP	: Prep;
	from_PREP	: Prep;
	of_PREP	: Prep;
	part_prep	: Prep;
	up_PREP	: Prep;

	person	: CN;
	thing	: CN;
	entity	: CN;

	can	: VV;
	have	: V2;
	know_V2	: V2;
	know_VS	: VS;

	Not_Adv	: Adv -> Adv;
	Very_Adv	: Adv -> Adv;
	In_order_to : VP -> Adv_goal;
	To_purpose	: VP -> Adv_goal;
	because_SUBJ	: Subj;
	if_SUBJ	: Subj;
	when_SUBJ	: Subj;
	so_SUBJ	: Subj;
	or_CONJ	: Conj;
	and_CONJ	: Conj;


	Subjunct	: Subj -> S -> SubordCl;

}

-- vim: set ts=2 sts=2 sw=2 noet:
