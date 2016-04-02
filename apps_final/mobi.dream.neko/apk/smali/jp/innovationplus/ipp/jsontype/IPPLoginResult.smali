.class public final Ljp/innovationplus/ipp/jsontype/IPPLoginResult;
.super Ljava/lang/Object;
.source "IPPLoginResult.java"


# instance fields
.field private auth_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuth_key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPLoginResult;->auth_key:Ljava/lang/String;

    return-object v0
.end method

.method public setAuth_key(Ljava/lang/String;)V
    .locals 0
    .param p1, "auth_key"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPLoginResult;->auth_key:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPPLoginResult [auth_key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPLoginResult;->auth_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
