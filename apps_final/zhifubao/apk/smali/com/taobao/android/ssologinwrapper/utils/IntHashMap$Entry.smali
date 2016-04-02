.class public Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;
.super Ljava/lang/Object;


# instance fields
.field protected hash:I

.field protected key:I

.field protected next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

.field protected value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->hash:I

    iput p2, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->key:I

    iput-object p3, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p4, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    return-void
.end method
