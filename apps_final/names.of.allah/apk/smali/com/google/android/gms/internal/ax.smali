.class public final Lcom/google/android/gms/internal/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ay;


# instance fields
.field public final backgroundColor:I

.field public final mB:I

.field public final mC:I

.field public final mD:I

.field public final mE:I

.field public final mF:I

.field public final mG:I

.field public final mH:I

.field public final mI:Ljava/lang/String;

.field public final mJ:I

.field public final mK:Ljava/lang/String;

.field public final mL:I

.field public final mM:I

.field public final mN:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ay;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ax;->CREATOR:Lcom/google/android/gms/internal/ay;

    return-void
.end method

.method constructor <init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ax;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/ax;->mB:I

    iput p3, p0, Lcom/google/android/gms/internal/ax;->backgroundColor:I

    iput p4, p0, Lcom/google/android/gms/internal/ax;->mC:I

    iput p5, p0, Lcom/google/android/gms/internal/ax;->mD:I

    iput p6, p0, Lcom/google/android/gms/internal/ax;->mE:I

    iput p7, p0, Lcom/google/android/gms/internal/ax;->mF:I

    iput p8, p0, Lcom/google/android/gms/internal/ax;->mG:I

    iput p9, p0, Lcom/google/android/gms/internal/ax;->mH:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ax;->mI:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/ax;->mJ:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ax;->mK:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/internal/ax;->mL:I

    iput p14, p0, Lcom/google/android/gms/internal/ax;->mM:I

    iput-object p15, p0, Lcom/google/android/gms/internal/ax;->mN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ax;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getAnchorTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->mB:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->backgroundColor:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundGradientBottom()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->mC:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundGradientTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->mD:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->mE:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderThickness()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->mF:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->mG:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getCallButtonColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->mH:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getCustomChannels()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->mI:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getDescriptionTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->mJ:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getFontFace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->mK:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getHeaderTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->mL:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getHeaderTextSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ax;->mM:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->mN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ay;->a(Lcom/google/android/gms/internal/ax;Landroid/os/Parcel;I)V

    return-void
.end method
