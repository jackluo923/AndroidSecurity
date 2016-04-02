.class public final enum Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;
.super Ljava/lang/Enum;
.source "DynamicTemplateService.java"


# static fields
.field public static final enum ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

.field public static final enum EXIST:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

.field public static final enum FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

.field public static final enum UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    const-string/jumbo v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    new-instance v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    const-string/jumbo v1, "EXIST"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->EXIST:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->EXIST:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ENUM$VALUES:[Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ENUM$VALUES:[Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
