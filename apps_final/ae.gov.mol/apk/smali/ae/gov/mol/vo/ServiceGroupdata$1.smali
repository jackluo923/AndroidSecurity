.class Lae/gov/mol/vo/ServiceGroupdata$1;
.super Ljava/lang/Object;
.source "ServiceGroupdata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/ServiceGroupdata;
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
        "Lae/gov/mol/vo/ServiceGroupdata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/vo/ServiceGroupdata;


# direct methods
.method constructor <init>(Lae/gov/mol/vo/ServiceGroupdata;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/vo/ServiceGroupdata$1;->this$0:Lae/gov/mol/vo/ServiceGroupdata;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/ServiceGroupdata;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 89
    new-instance v0, Lae/gov/mol/vo/ServiceGroupdata;

    invoke-direct {v0, p1}, Lae/gov/mol/vo/ServiceGroupdata;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/ServiceGroupdata$1;->createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/ServiceGroupdata;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lae/gov/mol/vo/ServiceGroupdata;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 83
    new-array v0, p1, [Lae/gov/mol/vo/ServiceGroupdata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/ServiceGroupdata$1;->newArray(I)[Lae/gov/mol/vo/ServiceGroupdata;

    move-result-object v0

    return-object v0
.end method
