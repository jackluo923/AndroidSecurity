.class public Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoResp;
.super Ljava/lang/Object;
.source "BillRemindInfoResp.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizInNoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public resultCode:I

.field public success:Z

.field public waitPayRecordNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
