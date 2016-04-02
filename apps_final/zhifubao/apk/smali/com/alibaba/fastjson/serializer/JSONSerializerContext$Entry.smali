.class public final Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;
.super Ljava/lang/Object;


# instance fields
.field public final hashCode:I

.field public next:Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

.field public final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;->object:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;->next:Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

    iput p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;->hashCode:I

    return-void
.end method
