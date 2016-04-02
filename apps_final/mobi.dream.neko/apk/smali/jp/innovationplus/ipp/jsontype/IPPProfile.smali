.class public Ljp/innovationplus/ipp/jsontype/IPPProfile;
.super Ljava/lang/Object;
.source "IPPProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;
    }
.end annotation


# instance fields
.field private address:Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;

.field private birth:J

.field private firstName:Ljava/lang/String;

.field private gender:I

.field private lastName:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private screenName:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->timestamp:J

    .line 120
    return-void
.end method


# virtual methods
.method public getAddress()Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->address:Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;

    return-object v0
.end method

.method public getBirth()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->birth:J

    return-wide v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->gender:I

    return v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->timestamp:J

    return-wide v0
.end method

.method public setAddress(Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;)V
    .locals 0
    .param p1, "address"    # Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;

    .prologue
    .line 293
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->address:Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;

    .line 294
    return-void
.end method

.method public setBirth(J)V
    .locals 0
    .param p1, "birth"    # J

    .prologue
    .line 197
    iput-wide p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->birth:J

    .line 198
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->firstName:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .param p1, "gender"    # I

    .prologue
    .line 277
    iput p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->gender:I

    .line 278
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->lastName:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->phoneNumber:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->screenName:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 309
    iput-wide p1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->timestamp:J

    .line 310
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPPProfile [birth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->birth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    const-string v1, ", lastName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 321
    const-string v1, ", screenName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->gender:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 322
    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->address:Ljp/innovationplus/ipp/jsontype/IPPProfile$IPPAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljp/innovationplus/ipp/jsontype/IPPProfile;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
