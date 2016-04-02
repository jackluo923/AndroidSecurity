.class public Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;
.super Ljava/lang/Object;
.source "Enq_GetPendingPayment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/Enq_GetPendingPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BankGuaranteeDetails"
.end annotation


# instance fields
.field private BankGuaranteeDetails:Ljava/lang/String;

.field public CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails$1;-><init>(Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;)V

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails$1;-><init>(Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;)V

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;->BankGuaranteeDetails:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public static getInstance()Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public getBankGuaranteeDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;->BankGuaranteeDetails:Ljava/lang/String;

    return-object v0
.end method

.method public setBankGuaranteeDetails(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankGuaranteeDetails"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;->BankGuaranteeDetails:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;->BankGuaranteeDetails:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    return-void
.end method
