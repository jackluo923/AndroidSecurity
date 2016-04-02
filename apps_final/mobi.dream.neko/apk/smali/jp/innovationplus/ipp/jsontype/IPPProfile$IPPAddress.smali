.class public Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;
.super Ljava/lang/Object;
.source "IPPProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/innovationplus/ipp/jsontype/IPPProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPPAddress"
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private streetAddress:Ljava/lang/String;

.field private zipcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->streetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getZipcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->zipcode:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->city:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->state:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setStreetAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "streetAddress"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->streetAddress:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setZipcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "zipcode"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->zipcode:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPPAdress [zipcode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->zipcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    const-string v1, ", streetAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->streetAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
