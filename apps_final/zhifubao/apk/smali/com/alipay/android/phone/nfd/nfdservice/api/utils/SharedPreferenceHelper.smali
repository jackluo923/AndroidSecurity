.class public Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;
.super Ljava/lang/Object;


# static fields
.field private static VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    sget v0, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->VERSION:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdSharedPreferences;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
