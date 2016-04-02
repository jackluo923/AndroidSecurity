.class public Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/PageRouteConfig;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/common/ToString;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BUTTON:Ljava/lang/String; = "button"

.field public static final DESC:Ljava/lang/String; = "desc"

.field public static final IS_BINDED:Ljava/lang/String; = "isbinded"

.field public static final IS_FOLLOWED:Ljava/lang/String; = "isfollowed"

.field public static final LOGO:Ljava/lang/String; = "logo"

.field public static final MENU:Ljava/lang/String; = "menu"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public action:Ljava/lang/String;

.field public data:Ljava/util/Map;
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

.field public pageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/common/ToString;-><init>()V

    return-void
.end method
