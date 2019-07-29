.class public Lorg/shaded/apache/http/conn/ConnectionPoolTimeoutException;
.super Lorg/shaded/apache/http/conn/ConnectTimeoutException;
.source "ConnectionPoolTimeoutException.java"


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6d9e70d19be2ee88L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/shaded/apache/http/conn/ConnectTimeoutException;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
