.class Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory$1;
.super Ljava/lang/Object;
.source "DefaultRunLoop.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;


# direct methods
.method constructor <init>(Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory$1;->this$1:Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory$1;->this$1:Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;

    iget-object v0, v0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

    invoke-virtual {v0, p2}, Lcom/firebase/client/utilities/DefaultRunLoop;->handleException(Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method
