.class interface abstract Lcom/firebase/tubesock/MessageBuilderFactory$Builder;
.super Ljava/lang/Object;
.source "MessageBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/tubesock/MessageBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Builder"
.end annotation


# virtual methods
.method public abstract appendBytes([B)Z
.end method

.method public abstract toMessage()Lcom/firebase/tubesock/WebSocketMessage;
.end method
