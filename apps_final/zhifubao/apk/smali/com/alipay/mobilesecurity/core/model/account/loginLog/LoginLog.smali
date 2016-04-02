.class public Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deviceFlag:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public logId:J

.field public loginDate:Ljava/lang/String;

.field public loginDevice:Ljava/lang/String;

.field public loginSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method
