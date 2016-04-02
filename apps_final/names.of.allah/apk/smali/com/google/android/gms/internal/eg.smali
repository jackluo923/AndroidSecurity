.class public final Lcom/google/android/gms/internal/eg;
.super Ljava/lang/Object;


# instance fields
.field public final errorCode:I

.field public final nK:Lcom/google/android/gms/internal/bm;

.field public final nL:Lcom/google/android/gms/internal/bv;

.field public final nM:Ljava/lang/String;

.field public final nN:Lcom/google/android/gms/internal/bp;

.field public final nr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nv:J

.field public final orientation:I

.field public final ow:Lcom/google/android/gms/internal/ey;

.field public final pV:Lcom/google/android/gms/internal/aj;

.field public final pY:Ljava/lang/String;

.field public final qc:J

.field public final qd:Z

.field public final qe:J

.field public final qf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final qi:Ljava/lang/String;

.field public final rv:Lorg/json/JSONObject;

.field public final rw:Lcom/google/android/gms/internal/bn;

.field public final rx:Lcom/google/android/gms/internal/am;

.field public final ry:J

.field public final rz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/ey;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bv;Ljava/lang/String;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bp;JLcom/google/android/gms/internal/am;JJJLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aj;",
            "Lcom/google/android/gms/internal/ey;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/bm;",
            "Lcom/google/android/gms/internal/bv;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bn;",
            "Lcom/google/android/gms/internal/bp;",
            "J",
            "Lcom/google/android/gms/internal/am;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/eg;->pV:Lcom/google/android/gms/internal/aj;

    iput-object p2, p0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/eg;->nr:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/eg;->errorCode:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/eg;->ns:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/eg;->qf:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/eg;->orientation:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/eg;->nv:J

    iput-object p10, p0, Lcom/google/android/gms/internal/eg;->pY:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/eg;->qd:Z

    iput-object p12, p0, Lcom/google/android/gms/internal/eg;->nK:Lcom/google/android/gms/internal/bm;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->nM:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->nN:Lcom/google/android/gms/internal/bp;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/eg;->qe:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->rx:Lcom/google/android/gms/internal/am;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/eg;->qc:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/eg;->ry:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/eg;->rz:J

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->qi:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->rv:Lorg/json/JSONObject;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
