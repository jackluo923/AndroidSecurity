.class public Lcom/inmobi/monetization/internal/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final DUPLICATE_AD_REQUEST:Ljava/lang/String; = "Banner Ad request failed : Duplicate request"

.field public static final DUPLICATE_AD_REQUEST_SLOT:Ljava/lang/String; = "Ad request failed : Duplicate request for slot : "

.field public static final EMPTY_SLOTID:Ljava/lang/String; = "Slot Id cannot be empty"

.field public static final HTTP_TIMEOUT:I = 0x3a98

.field public static final INVALID_INTERSTITIAL_STATE:Ljava/lang/String; = "Interstitial Ad request failed : Invalid state"

.field public static final LOG_TAG:Ljava/lang/String; = "[InMobi]-[Monetization]"

.field public static MEDIATION_RULE_SERVER:Ljava/lang/String; = null

.field public static final MEDIATION_SDK_VERSION:Ljava/lang/String; = "4.4.1"

.field public static final NULL_ACTIVITY:Ljava/lang/String; = "Activity cannot be null"

.field public static final NULL_SLOTID:Ljava/lang/String; = "Slot Id cannot be null"

.field public static final OVERLAY_AD:Ljava/lang/String; = "Ad request failed : Overlay Ad present"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://apt.md.inmobi.net/ruleserver/RuleService"

    sput-object v0, Lcom/inmobi/monetization/internal/Constants;->MEDIATION_RULE_SERVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
