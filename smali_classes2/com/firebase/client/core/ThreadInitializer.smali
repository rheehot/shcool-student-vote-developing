.class public interface abstract Lcom/firebase/client/core/ThreadInitializer;
.super Ljava/lang/Object;
.source "ThreadInitializer.java"


# static fields
.field public static final defaultInstance:Lcom/firebase/client/core/ThreadInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/firebase/client/core/ThreadInitializer$1;

    invoke-direct {v0}, Lcom/firebase/client/core/ThreadInitializer$1;-><init>()V

    sput-object v0, Lcom/firebase/client/core/ThreadInitializer;->defaultInstance:Lcom/firebase/client/core/ThreadInitializer;

    return-void
.end method


# virtual methods
.method public abstract setDaemon(Ljava/lang/Thread;Z)V
.end method

.method public abstract setName(Ljava/lang/Thread;Ljava/lang/String;)V
.end method

.method public abstract setUncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V
.end method
