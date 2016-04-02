.class public Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final LC:I

.field final LD:I

.field final LK:Ljava/lang/String;

.field final LL:I

.field final mIndex:I

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/h;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->xJ:I

    iput p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->mIndex:I

    iput p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->LC:I

    iput p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->LD:I

    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->LK:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->LL:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/h;->a(Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;Landroid/os/Parcel;I)V

    return-void
.end method
