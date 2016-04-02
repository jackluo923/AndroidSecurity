.class public Lcom/google/android/gms/internal/hs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ht;


# instance fields
.field public final GQ:Ljava/lang/String;

.field public final GR:I

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ht;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ht;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hs;->CREATOR:Lcom/google/android/gms/internal/ht;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hs;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hs;->GQ:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/hs;->GR:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ht;->a(Lcom/google/android/gms/internal/hs;Landroid/os/Parcel;I)V

    return-void
.end method
