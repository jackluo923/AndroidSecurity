.class Lae/gov/mol/vo/Company_InformationVo$1;
.super Ljava/lang/Object;
.source "Company_InformationVo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/Company_InformationVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lae/gov/mol/vo/Company_InformationVo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/Company_InformationVo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 337
    new-instance v0, Lae/gov/mol/vo/Company_InformationVo;

    invoke-direct {v0, p1}, Lae/gov/mol/vo/Company_InformationVo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/Company_InformationVo$1;->createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/Company_InformationVo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lae/gov/mol/vo/Company_InformationVo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 332
    new-array v0, p1, [Lae/gov/mol/vo/Company_InformationVo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/Company_InformationVo$1;->newArray(I)[Lae/gov/mol/vo/Company_InformationVo;

    move-result-object v0

    return-object v0
.end method
