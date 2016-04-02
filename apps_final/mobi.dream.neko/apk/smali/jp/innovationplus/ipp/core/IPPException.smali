.class public Ljp/innovationplus/ipp/core/IPPException;
.super Ljava/lang/RuntimeException;
.source "IPPException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 22
    invoke-static {p1}, Ljp/innovationplus/ipp/constants/IPPConstants;->descriptionErrorCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    iput p1, p0, Ljp/innovationplus/ipp/core/IPPException;->code:I

    .line 24
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Ljp/innovationplus/ipp/core/IPPException;->code:I

    return v0
.end method
