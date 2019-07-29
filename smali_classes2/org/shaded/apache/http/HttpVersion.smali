.class public final Lorg/shaded/apache/http/HttpVersion;
.super Lorg/shaded/apache/http/ProtocolVersion;
.source "HttpVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "HTTP"

.field public static final HTTP_0_9:Lorg/shaded/apache/http/HttpVersion;

.field public static final HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

.field public static final HTTP_1_1:Lorg/shaded/apache/http/HttpVersion;

.field private static final serialVersionUID:J = -0x514703574c384bf0L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    new-instance v0, Lorg/shaded/apache/http/HttpVersion;

    const/16 v1, 0x9

    invoke-direct {v0, v3, v1}, Lorg/shaded/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/shaded/apache/http/HttpVersion;->HTTP_0_9:Lorg/shaded/apache/http/HttpVersion;

    .line 64
    new-instance v0, Lorg/shaded/apache/http/HttpVersion;

    invoke-direct {v0, v2, v3}, Lorg/shaded/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    .line 67
    new-instance v0, Lorg/shaded/apache/http/HttpVersion;

    invoke-direct {v0, v2, v2}, Lorg/shaded/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_1:Lorg/shaded/apache/http/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    .line 79
    const-string v0, "HTTP"

    invoke-direct {p0, v0, p1, p2}, Lorg/shaded/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 80
    return-void
.end method


# virtual methods
.method public forVersion(II)Lorg/shaded/apache/http/ProtocolVersion;
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    const/4 v1, 0x1

    .line 93
    iget v0, p0, Lorg/shaded/apache/http/HttpVersion;->major:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/shaded/apache/http/HttpVersion;->minor:I

    if-ne p2, v0, :cond_0

    .line 110
    .end local p0    # "this":Lorg/shaded/apache/http/HttpVersion;
    :goto_0
    return-object p0

    .line 97
    .restart local p0    # "this":Lorg/shaded/apache/http/HttpVersion;
    :cond_0
    if-ne p1, v1, :cond_2

    .line 98
    if-nez p2, :cond_1

    .line 99
    sget-object p0, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    goto :goto_0

    .line 101
    :cond_1
    if-ne p2, v1, :cond_2

    .line 102
    sget-object p0, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_1:Lorg/shaded/apache/http/HttpVersion;

    goto :goto_0

    .line 105
    :cond_2
    if-nez p1, :cond_3

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    .line 106
    sget-object p0, Lorg/shaded/apache/http/HttpVersion;->HTTP_0_9:Lorg/shaded/apache/http/HttpVersion;

    goto :goto_0

    .line 110
    :cond_3
    new-instance p0, Lorg/shaded/apache/http/HttpVersion;

    .end local p0    # "this":Lorg/shaded/apache/http/HttpVersion;
    invoke-direct {p0, p1, p2}, Lorg/shaded/apache/http/HttpVersion;-><init>(II)V

    goto :goto_0
.end method
