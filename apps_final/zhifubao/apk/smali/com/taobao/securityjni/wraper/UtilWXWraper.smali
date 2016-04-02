.class public Lcom/taobao/securityjni/wraper/UtilWXWraper;
.super Ljava/lang/Object;


# instance fields
.field private utilWX:Lcom/taobao/securityjni/UtilWX;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/wraper/UtilWXWraper;->utilWX:Lcom/taobao/securityjni/UtilWX;

    return-void
.end method


# virtual methods
.method public Get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/wraper/UtilWXWraper;->utilWX:Lcom/taobao/securityjni/UtilWX;

    invoke-virtual {v0, p1}, Lcom/taobao/securityjni/UtilWX;->Get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Put(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/wraper/UtilWXWraper;->utilWX:Lcom/taobao/securityjni/UtilWX;

    invoke-virtual {v0, p1}, Lcom/taobao/securityjni/UtilWX;->Put(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
