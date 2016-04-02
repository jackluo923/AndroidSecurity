.class public abstract Lcom/alipay/mobile/framework/service/ext/security/DexInfoService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# static fields
.field public static final ALIPAY_SALT:Ljava/lang/String; = "alipaysalt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDexHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTaobaoBlackBoxInfo()Lcom/alipay/mobile/framework/service/ext/security/DexInfoService$TaobaoBlackBoxInfo;
.end method
