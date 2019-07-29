.class Lcom/firebase/client/core/GaePlatform$2;
.super Ljava/lang/Object;
.source "GaePlatform.java"

# interfaces
.implements Lcom/firebase/tubesock/ThreadInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/GaePlatform;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/GaePlatform;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/GaePlatform;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/firebase/client/core/GaePlatform$2;->this$0:Lcom/firebase/client/core/GaePlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setName(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Lcom/firebase/client/core/GaePlatform;->threadInitializerInstance:Lcom/firebase/client/core/ThreadInitializer;

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/core/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 77
    return-void
.end method
