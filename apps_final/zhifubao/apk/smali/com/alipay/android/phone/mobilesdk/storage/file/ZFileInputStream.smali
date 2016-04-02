.class public Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;
.super Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    invoke-super {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    invoke-super {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    return v0
.end method
