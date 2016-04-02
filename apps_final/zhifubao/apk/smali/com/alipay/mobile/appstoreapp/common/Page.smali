.class public Lcom/alipay/mobile/appstoreapp/common/Page;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xc

    sput v0, Lcom/alipay/mobile/appstoreapp/common/Page;->a:I

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget v0, Lcom/alipay/mobile/appstoreapp/common/Page;->a:I

    iput v0, p0, Lcom/alipay/mobile/appstoreapp/common/Page;->c:I

    .line 13
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/common/Page;->b:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/common/Page;->b:Ljava/util/List;

    return-object v0
.end method
