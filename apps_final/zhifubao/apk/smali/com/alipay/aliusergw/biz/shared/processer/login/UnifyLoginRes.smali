.class public Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;
.super Lcom/alipay/aliusergw/core/model/comm/ToString;
.source "UnifyLoginRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alipayLoginId:Ljava/lang/String;

.field public checkCodeId:Ljava/lang/String;

.field public checkCodeUrl:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public extMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h5Url:Ljava/lang/String;

.field public headImg:Ljava/lang/String;

.field public hid:J

.field public msg:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public signData:Ljava/lang/String;

.field public ssoToken:Ljava/lang/String;

.field public success:Z

.field public taobaoNick:Ljava/lang/String;

.field public taobaoUserId:J

.field public tbLoginId:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/aliusergw/core/model/comm/ToString;-><init>()V

    return-void
.end method
