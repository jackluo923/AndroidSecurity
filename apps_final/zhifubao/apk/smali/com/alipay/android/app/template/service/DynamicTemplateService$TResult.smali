.class public final enum Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
.super Ljava/lang/Enum;
.source "DynamicTemplateService.java"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

.field public static final enum ERR_CALL_JS_METHOD_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

.field public static final enum ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

.field public static final enum ERR_NETWORK_NOT_AVAILABLE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

.field public static final enum ERR_RPC_BIZ_BACKEND_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

.field public static final enum ERR_RPC_TRANSPORT_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

.field public static final enum ERR_TEMPLATE_EMPTY_CONTENT:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

.field public static final enum ERR_TEMPLATE_ILLEGAL_FORMAT:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

.field public static final enum ERR_TEMPLATE_NOT_FOUND:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

.field public static final enum OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 43
    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    const-string/jumbo v1, "ERR_INVALID_ARGUMENTS"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 44
    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    const-string/jumbo v1, "ERR_TEMPLATE_NOT_FOUND"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_TEMPLATE_NOT_FOUND:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 45
    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    const-string/jumbo v1, "ERR_TEMPLATE_EMPTY_CONTENT"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_TEMPLATE_EMPTY_CONTENT:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 46
    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    const-string/jumbo v1, "ERR_TEMPLATE_ILLEGAL_FORMAT"

    invoke-direct {v0, v1, v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_TEMPLATE_ILLEGAL_FORMAT:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 47
    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    const-string/jumbo v1, "ERR_NETWORK_NOT_AVAILABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_NETWORK_NOT_AVAILABLE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 48
    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    const-string/jumbo v1, "ERR_RPC_TRANSPORT_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_RPC_TRANSPORT_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 49
    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    const-string/jumbo v1, "ERR_RPC_BIZ_BACKEND_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_RPC_BIZ_BACKEND_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 50
    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    const-string/jumbo v1, "ERR_CALL_JS_METHOD_FAILED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_CALL_JS_METHOD_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_TEMPLATE_NOT_FOUND:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_TEMPLATE_EMPTY_CONTENT:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_TEMPLATE_ILLEGAL_FORMAT:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_NETWORK_NOT_AVAILABLE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_RPC_TRANSPORT_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_RPC_BIZ_BACKEND_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_CALL_JS_METHOD_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ENUM$VALUES:[Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ENUM$VALUES:[Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
