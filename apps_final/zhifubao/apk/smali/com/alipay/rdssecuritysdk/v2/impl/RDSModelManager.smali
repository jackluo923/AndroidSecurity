.class public Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;
.super Ljava/lang/Object;


# static fields
.field protected static final TAG:Ljava/lang/String; = "RDS"


# instance fields
.field private a:Lcom/alipay/rdssecuritysdk/v2/model/AlipayNodeModel;

.field private b:Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;

.field private c:Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;

.field private d:Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;

.field private e:Lcom/alipay/rdssecuritysdk/v2/model/RootNodeModel;

.field private f:Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;

.field private g:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

.field private h:Lcom/alipay/rdssecuritysdk/v2/model/TaobaoNodeModel;

.field private i:Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

.field private j:Lcom/alipay/rdssecuritysdk/v2/model/UsrNodeModel;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/AlipayNodeModel;

    invoke-direct {v1, p1}, Lcom/alipay/rdssecuritysdk/v2/model/AlipayNodeModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->a:Lcom/alipay/rdssecuritysdk/v2/model/AlipayNodeModel;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->b:Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;

    invoke-direct {v1, p1}, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->c:Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;

    invoke-direct {v1, p1}, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->d:Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/RootNodeModel;

    invoke-direct {v1, p1}, Lcom/alipay/rdssecuritysdk/v2/model/RootNodeModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->e:Lcom/alipay/rdssecuritysdk/v2/model/RootNodeModel;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;

    invoke-direct {v1, p1}, Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->f:Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    invoke-direct {v1, p1}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->g:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/TaobaoNodeModel;

    invoke-direct {v1, p1}, Lcom/alipay/rdssecuritysdk/v2/model/TaobaoNodeModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->h:Lcom/alipay/rdssecuritysdk/v2/model/TaobaoNodeModel;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

    invoke-direct {v1, p1}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->i:Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/UsrNodeModel;

    move-object v2, p1

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/alipay/rdssecuritysdk/v2/model/UsrNodeModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->j:Lcom/alipay/rdssecuritysdk/v2/model/UsrNodeModel;

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->k:Z

    if-eqz p11, :cond_0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->g:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    invoke-virtual {v1, p1}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlipay()Lcom/alipay/rdssecuritysdk/v2/model/AlipayNodeModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->a:Lcom/alipay/rdssecuritysdk/v2/model/AlipayNodeModel;

    return-object v0
.end method

.method public getDev()Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->b:Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;

    return-object v0
.end method

.method public getEnv()Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->c:Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;

    return-object v0
.end method

.method public getLoc()Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->d:Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;

    return-object v0
.end method

.method public getRoot()Lcom/alipay/rdssecuritysdk/v2/model/RootNodeModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->e:Lcom/alipay/rdssecuritysdk/v2/model/RootNodeModel;

    return-object v0
.end method

.method public getSdk()Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->f:Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;

    return-object v0
.end method

.method public getSensor()Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->g:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    return-object v0
.end method

.method public getTaobao()Lcom/alipay/rdssecuritysdk/v2/model/TaobaoNodeModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->h:Lcom/alipay/rdssecuritysdk/v2/model/TaobaoNodeModel;

    return-object v0
.end method

.method public getUa()Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->i:Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

    return-object v0
.end method

.method public getUsr()Lcom/alipay/rdssecuritysdk/v2/model/UsrNodeModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->j:Lcom/alipay/rdssecuritysdk/v2/model/UsrNodeModel;

    return-object v0
.end method

.method public isSensorStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->k:Z

    return v0
.end method

.method public onControlClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->i:Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->onControlClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->i:Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->i:Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->i:Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->onPage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageEnd()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->i:Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->onPageEnd()V

    return-void
.end method

.method public onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->i:Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V

    return-void
.end method

.method public updateUser(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->j:Lcom/alipay/rdssecuritysdk/v2/model/UsrNodeModel;

    invoke-virtual {v0, p1}, Lcom/alipay/rdssecuritysdk/v2/model/UsrNodeModel;->updateUser(Ljava/lang/String;)V

    return-void
.end method
