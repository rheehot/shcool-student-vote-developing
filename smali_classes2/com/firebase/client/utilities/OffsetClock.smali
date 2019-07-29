.class public Lcom/firebase/client/utilities/OffsetClock;
.super Ljava/lang/Object;
.source "OffsetClock.java"

# interfaces
.implements Lcom/firebase/client/utilities/Clock;


# instance fields
.field private final baseClock:Lcom/firebase/client/utilities/Clock;

.field private offset:J


# direct methods
.method public constructor <init>(Lcom/firebase/client/utilities/Clock;J)V
    .locals 2
    .param p1, "baseClock"    # Lcom/firebase/client/utilities/Clock;
    .param p2, "offset"    # J

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/firebase/client/utilities/OffsetClock;->offset:J

    .line 8
    iput-object p1, p0, Lcom/firebase/client/utilities/OffsetClock;->baseClock:Lcom/firebase/client/utilities/Clock;

    .line 9
    iput-wide p2, p0, Lcom/firebase/client/utilities/OffsetClock;->offset:J

    .line 10
    return-void
.end method


# virtual methods
.method public millis()J
    .locals 4

    .prologue
    .line 18
    iget-object v0, p0, Lcom/firebase/client/utilities/OffsetClock;->baseClock:Lcom/firebase/client/utilities/Clock;

    invoke-interface {v0}, Lcom/firebase/client/utilities/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/firebase/client/utilities/OffsetClock;->offset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public setOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/firebase/client/utilities/OffsetClock;->offset:J

    .line 14
    return-void
.end method
