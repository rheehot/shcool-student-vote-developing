.class public Lorg/shaded/apache/http/MethodNotSupportedException;
.super Lorg/shaded/apache/http/HttpException;
.source "MethodNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x2eb42836ac8256c1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/shaded/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
