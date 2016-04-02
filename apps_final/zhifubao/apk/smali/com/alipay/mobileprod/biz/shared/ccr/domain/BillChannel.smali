.class public Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;
.super Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankMark:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public phoneSwitch:I

.field public smsMobile:Ljava/lang/String;

.field public smsSwitch:I

.field public smsTelecom:Ljava/lang/String;

.field public smsTemplate:Ljava/lang/String;

.field public smsUnicon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;-><init>()V

    return-void
.end method
