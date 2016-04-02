.class public La/a/a;
.super Ljava/lang/Object;
.source "a.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bc()Ljava/lang/String;
    .locals 6

    .prologue
    .line 5
    #unknown opcode: 0xff
    nop

    cmpg-double p108, v0, v0

    .line 6
    .local v2, "cca":Ljava/lang/String;
    const/4 v1, 0x1

    .line 7
    .local v1, "ba":Z
    if-eqz v1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 10
    .local v0, "ace":[B
    :try_start_0
    const-string/jumbo v4, "CaDNmeeag"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 15
    :try_start_1
    const-string/jumbo v4, "d198f576fskjUJNafsl=="

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 20
    .end local v0    # "ace":[B
    :cond_0
    return-object v2

    .line 11
    .restart local v0    # "ace":[B
    :catch_0
    move-exception v3

    .line 12
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "c41baesQ5Qgw13=="

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 16
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 17
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "c41baesQ5Qgw13=="

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
