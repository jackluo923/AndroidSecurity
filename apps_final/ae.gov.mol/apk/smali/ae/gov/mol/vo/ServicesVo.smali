.class public Lae/gov/mol/vo/ServicesVo;
.super Ljava/lang/Object;
.source "ServicesVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private Application_form_arb:Ljava/lang/String;

.field private Application_form_eng:Ljava/lang/String;

.field private ArbPath:Ljava/lang/String;

.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ServicesVo;",
            ">;"
        }
    .end annotation
.end field

.field private DescriptionArb:Ljava/lang/String;

.field private DescriptionEng:Ljava/lang/String;

.field private EngPath:Ljava/lang/String;

.field private Fees_arb:Ljava/lang/String;

.field private Fees_eng:Ljava/lang/String;

.field private PStatus:Ljava/lang/String;

.field private Required_documents_arb:Ljava/lang/String;

.field private Required_documents_eng:Ljava/lang/String;

.field private Service_definition_arb:Ljava/lang/String;

.field private Service_definition_eng:Ljava/lang/String;

.field private StepsToFollow_arb:Ljava/lang/String;

.field private StepsToFollow_eng:Ljava/lang/String;

.field private WhereToApply_arb:Ljava/lang/String;

.field private WhereToApply_eng:Ljava/lang/String;

.field private conditions_arb:Ljava/lang/String;

.field private conditions_eng:Ljava/lang/String;

.field private nooftransactions:Ljava/lang/String;

.field private service_code:Ljava/lang/String;

.field private service_group_id:Ljava/lang/String;

.field private service_group_name_arb:Ljava/lang/String;

.field private service_group_name_eng:Ljava/lang/String;

.field private service_name_arb:Ljava/lang/String;

.field private service_name_eng:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private tasheel_service_code:Ljava/lang/String;

.field private time_arb:Ljava/lang/String;

.field private time_eng:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_id:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_arb:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_eng:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_code:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_name_arb:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_name_eng:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionArb:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionEng:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_arb:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_eng:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_arb:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_eng:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->conditions_arb:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->conditions_eng:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_arb:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_eng:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_arb:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_eng:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_arb:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_eng:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Fees_arb:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Fees_eng:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->ArbPath:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->EngPath:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->status:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->tasheel_service_code:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->nooftransactions:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->time_arb:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->time_eng:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->PStatus:Ljava/lang/String;

    .line 542
    new-instance v0, Lae/gov/mol/vo/ServicesVo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/ServicesVo$1;-><init>(Lae/gov/mol/vo/ServicesVo;)V

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_id:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_arb:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_eng:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_code:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_name_arb:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_name_eng:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionArb:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionEng:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_arb:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_eng:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_arb:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_eng:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->conditions_arb:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->conditions_eng:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_arb:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_eng:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_arb:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_eng:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_arb:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_eng:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Fees_arb:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Fees_eng:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->ArbPath:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->EngPath:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->status:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->tasheel_service_code:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->nooftransactions:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->time_arb:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->time_eng:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->PStatus:Ljava/lang/String;

    .line 542
    new-instance v0, Lae/gov/mol/vo/ServicesVo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/ServicesVo$1;-><init>(Lae/gov/mol/vo/ServicesVo;)V

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_id:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_arb:Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_eng:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_code:Ljava/lang/String;

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_name_arb:Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_name_eng:Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionArb:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionEng:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_arb:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_eng:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_arb:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_eng:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->conditions_arb:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->conditions_eng:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_arb:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_eng:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_arb:Ljava/lang/String;

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_eng:Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_arb:Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_eng:Ljava/lang/String;

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Fees_arb:Ljava/lang/String;

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Fees_eng:Ljava/lang/String;

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->ArbPath:Ljava/lang/String;

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->EngPath:Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->tasheel_service_code:Ljava/lang/String;

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->nooftransactions:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->time_arb:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->time_eng:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->PStatus:Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServicesVo;->status:Ljava/lang/String;

    .line 501
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public getApplication_form_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getApplication_form_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getArbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->ArbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getConditions_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->conditions_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getConditions_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->conditions_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionArb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionArb:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionEng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionEng:Ljava/lang/String;

    return-object v0
.end method

.method public getEngPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->EngPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFees_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Fees_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getFees_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Fees_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getNooftransactions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->nooftransactions:Ljava/lang/String;

    return-object v0
.end method

.method public getPStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->PStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRequired_documents_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getRequired_documents_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getService_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_code:Ljava/lang/String;

    return-object v0
.end method

.method public getService_definition_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getService_definition_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getService_group_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getService_group_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getService_group_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getService_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getService_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStepsToFollow_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getStepsToFollow_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getTasheel_service_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->tasheel_service_code:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->time_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->time_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getWhereToApply_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getWhereToApply_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_eng:Ljava/lang/String;

    return-object v0
.end method

.method public setApplication_form_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "application_form_arb"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_arb:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setApplication_form_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "application_form_eng"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_eng:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setArbPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "arbPath"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->ArbPath:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setConditions_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "conditions_arb"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->conditions_arb:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setConditions_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "conditions_eng"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->conditions_eng:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setDescriptionArb(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptionArb"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionArb:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setDescriptionEng(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptionEng"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionEng:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setEngPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "engPath"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->EngPath:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setFees_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "fees_arb"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->Fees_arb:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setFees_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "fees_eng"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->Fees_eng:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setNooftransactions(Ljava/lang/String;)V
    .locals 0
    .param p1, "nooftransactions"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->nooftransactions:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setPStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "pStatus"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->PStatus:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setRequired_documents_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "required_documents_arb"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_arb:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setRequired_documents_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "required_documents_eng"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_eng:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setService_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_code"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->service_code:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setService_definition_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_definition_arb"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_arb:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setService_definition_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_definition_eng"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_eng:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setService_group_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_group_id"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->service_group_id:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setService_group_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_group_name_arb"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_arb:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setService_group_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_group_name_eng"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_eng:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setService_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_name_arb"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->service_name_arb:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setService_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_name_eng"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->service_name_eng:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->status:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setStepsToFollow_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "stepsToFollow_arb"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_arb:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setStepsToFollow_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "stepsToFollow_eng"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_eng:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setTasheel_service_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "tasheel_service_code"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->tasheel_service_code:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setTime_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "time_arb"    # Ljava/lang/String;

    .prologue
    .line 438
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->time_arb:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setTime_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "time_eng"    # Ljava/lang/String;

    .prologue
    .line 452
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->time_eng:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setWhereToApply_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "whereToApply_arb"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_arb:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setWhereToApply_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "whereToApply_eng"    # Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_eng:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_group_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->service_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionArb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->DescriptionEng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Service_definition_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Application_form_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->conditions_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->conditions_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Required_documents_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->StepsToFollow_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->WhereToApply_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Fees_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->Fees_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->ArbPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->EngPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->tasheel_service_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->nooftransactions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->time_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->time_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lae/gov/mol/vo/ServicesVo;->PStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    return-void
.end method
