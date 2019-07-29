.class Lcom/google/common/util/concurrent/AbstractScheduledService$3;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;->executor()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

.field final synthetic val$executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$3;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$3;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;
    .param p2, "failure"    # Ljava/lang/Throwable;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$3;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 299
    return-void
.end method

.method public running()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public starting()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 0
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;

    .prologue
    .line 293
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$3;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 296
    return-void
.end method
