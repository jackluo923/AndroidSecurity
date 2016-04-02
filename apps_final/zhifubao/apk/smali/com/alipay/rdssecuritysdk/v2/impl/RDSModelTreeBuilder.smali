.class public Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelTreeBuilder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDataForNativeSign(Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->getDev()Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->getLoc()Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->getEnv()Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->getUsr()Lcom/alipay/rdssecuritysdk/v2/model/UsrNodeModel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->getSensor()Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->getUa()Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->getSdk()Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->injectNodes(Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;)V

    invoke-virtual {v3, v5}, Lcom/alipay/rdssecuritysdk/v2/model/UsrNodeModel;->injectNodes(Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;)V

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;->injectNodes(Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;)V

    invoke-virtual {v6}, Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;->buildJsonNode()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildRoot(Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
