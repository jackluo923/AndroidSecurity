.class public Lcom/alipay/mobile/appstoreapp/common/QueryResult;
.super Ljava/lang/Object;
.source "QueryResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/alipay/mobile/appstoreapp/common/QueryResult;->a:I

    .line 9
    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/common/QueryResult;->b:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/alipay/mobile/appstoreapp/common/QueryResult;->c:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alipay/mobile/appstoreapp/common/QueryResult;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/common/QueryResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/common/QueryResult;->c:Ljava/lang/Object;

    return-object v0
.end method
