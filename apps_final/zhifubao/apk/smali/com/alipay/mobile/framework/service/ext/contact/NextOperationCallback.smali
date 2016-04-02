.class public interface abstract Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;
.super Ljava/lang/Object;
.source "NextOperationCallback.java"


# static fields
.field public static final GO_BACK:I = 0x2

.field public static final GO_NEXT_CLICK:I = 0x1


# virtual methods
.method public abstract handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)Z"
        }
    .end annotation
.end method
