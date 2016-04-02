.class public Lae/gov/mol/vo/Company_InformationVo;
.super Ljava/lang/Object;
.source "Company_InformationVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/Company_InformationVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Abscond:Ljava/lang/String;

.field private CompanyClass:Ljava/lang/String;

.field private LabourOffice:Ljava/lang/String;

.field private TotalEmployees:Ljava/lang/String;

.field private com_fax:Ljava/lang/String;

.field private com_license_end:Ljava/lang/String;

.field private com_license_no:Ljava/lang/String;

.field private com_phone:Ljava/lang/String;

.field private com_po_box:Ljava/lang/String;

.field private comapany_category:Ljava/lang/String;

.field private comlicplace_desc:Ljava/lang/String;

.field private comlictype_desc:Ljava/lang/String;

.field private compamy_code:Ljava/lang/String;

.field private company_code_old:Ljava/lang/String;

.field private company_lo_code:Ljava/lang/String;

.field private company_name_arb:Ljava/lang/String;

.field private company_name_eng:Ljava/lang/String;

.field private company_status:Ljava/lang/String;

.field private emirate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lae/gov/mol/vo/Company_InformationVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/Company_InformationVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/Company_InformationVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 339
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->compamy_code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_lo_code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comapany_category:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_code_old:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_arb:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_eng:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_status:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_end:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_no:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comlictype_desc:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comlicplace_desc:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_phone:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_fax:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_po_box:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->emirate:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->LabourOffice:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->TotalEmployees:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->Abscond:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->CompanyClass:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->compamy_code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_lo_code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comapany_category:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_code_old:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_arb:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_eng:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_status:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_end:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_no:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comlictype_desc:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comlicplace_desc:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_phone:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_fax:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_po_box:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->emirate:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->LabourOffice:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->TotalEmployees:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->Abscond:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->CompanyClass:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->compamy_code:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_lo_code:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comapany_category:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_code_old:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_arb:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_eng:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_status:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_end:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_no:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comlictype_desc:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comlicplace_desc:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_phone:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_fax:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_po_box:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->emirate:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->LabourOffice:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->TotalEmployees:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->Abscond:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->CompanyClass:Ljava/lang/String;

    .line 326
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public getAbscond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->Abscond:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_fax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_fax:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_license_end()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_end:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_license_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_no:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_phone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_phone:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_po_box()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_po_box:Ljava/lang/String;

    return-object v0
.end method

.method public getComapany_category()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comapany_category:Ljava/lang/String;

    return-object v0
.end method

.method public getComlicplace_desc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comlicplace_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getComlictype_desc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comlictype_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getCompamy_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->compamy_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->CompanyClass:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_code_old()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_code_old:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_lo_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_lo_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_status:Ljava/lang/String;

    return-object v0
.end method

.method public getEmirate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->emirate:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOffice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->LabourOffice:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalEmployees()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->TotalEmployees:Ljava/lang/String;

    return-object v0
.end method

.method public setAbscond(Ljava/lang/String;)V
    .locals 0
    .param p1, "abscond"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->Abscond:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setCom_fax(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_fax"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->com_fax:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setCom_license_end(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_license_end"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_end:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setCom_license_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_license_no"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_no:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setCom_phone(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_phone"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->com_phone:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setCom_po_box(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_po_box"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->com_po_box:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setComapany_category(Ljava/lang/String;)V
    .locals 0
    .param p1, "comapany_category"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->comapany_category:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setComlicplace_desc(Ljava/lang/String;)V
    .locals 0
    .param p1, "comlicplace_desc"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->comlicplace_desc:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setComlictype_desc(Ljava/lang/String;)V
    .locals 0
    .param p1, "comlictype_desc"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->comlictype_desc:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setCompamy_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "compamy_code"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->compamy_code:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCompanyClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyClass"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->CompanyClass:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setCompany_code_old(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_code_old"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->company_code_old:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setCompany_lo_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_lo_code"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->company_lo_code:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCompany_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_name_arb"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_arb:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setCompany_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_name_eng"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_eng:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setCompany_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_status"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->company_status:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setEmirate(Ljava/lang/String;)V
    .locals 0
    .param p1, "emirate"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->emirate:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setLabourOffice(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOffice"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->LabourOffice:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setTotalEmployees(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalEmployees"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lae/gov/mol/vo/Company_InformationVo;->TotalEmployees:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->compamy_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_lo_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comapany_category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_code_old:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->company_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_end:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_license_no:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comlictype_desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->comlicplace_desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_fax:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->com_po_box:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->emirate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->LabourOffice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->TotalEmployees:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->Abscond:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lae/gov/mol/vo/Company_InformationVo;->CompanyClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    return-void
.end method
