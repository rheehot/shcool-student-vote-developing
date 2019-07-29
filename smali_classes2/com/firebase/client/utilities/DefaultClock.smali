.class public Lcom/firebase/client/utilities/DefaultClock;
.super Ljava/lang/Object;
.source "DefaultClock.java"

# interfaces
.implements Lcom/firebase/client/utilities/Clock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .prologue
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
