.class public Lae/gov/mol/vo/ServiceDataVo;
.super Ljava/lang/Object;
.source "ServiceDataVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MethodCall:Ljava/lang/String;

.field private PageURL:Ljava/lang/String;

.field private ServiceId:Ljava/lang/String;

.field private ServiceKey:Ljava/lang/String;

.field private ServiceNameAR:Ljava/lang/String;

.field private ServiceNameEN:Ljava/lang/String;

.field private Template:Ljava/lang/String;

.field private Wizards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/WizardsDataVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lae/gov/mol/vo/ServiceDataVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ServiceDataVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ServiceDataVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameEN:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameAR:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->Template:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->PageURL:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->MethodCall:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceKey:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameEN:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameAR:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->Template:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->PageURL:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->MethodCall:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceKey:Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->Wizards:Ljava/util/List;

    .line 165
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->Wizards:Ljava/util/List;

    sget-object v1, Lae/gov/mol/vo/WizardsDataVo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceId:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameEN:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameAR:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceKey:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->Template:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->PageURL:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->MethodCall:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getMethodCall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->MethodCall:Ljava/lang/String;

    return-object v0
.end method

.method public getPageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->PageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceNameAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameAR:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceNameEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameEN:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->Template:Ljava/lang/String;

    return-object v0
.end method

.method public getWizards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/WizardsDataVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->Wizards:Ljava/util/List;

    return-object v0
.end method

.method public setMethodCall(Ljava/lang/String;)V
    .locals 0
    .param p1, "methodCall"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lae/gov/mol/vo/ServiceDataVo;->MethodCall:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setPageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageURL"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lae/gov/mol/vo/ServiceDataVo;->PageURL:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setServiceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceKey"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceKey:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setServiceNameAR(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceNameAR"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameAR:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setServiceNameEN(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceNameEN"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameEN:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lae/gov/mol/vo/ServiceDataVo;->Template:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setWizards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/WizardsDataVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "wizards":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/WizardsDataVo;>;"
    iput-object p1, p0, Lae/gov/mol/vo/ServiceDataVo;->Wizards:Ljava/util/List;

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->Wizards:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 138
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameEN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceNameAR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->ServiceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->Template:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->PageURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lae/gov/mol/vo/ServiceDataVo;->MethodCall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return-void
.end method
