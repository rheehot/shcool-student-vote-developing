.class public Lorg/shaded/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
.super Lorg/shaded/apache/http/impl/conn/AbstractPooledConnAdapter;
.source "SingleClientConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/shaded/apache/http/impl/conn/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/shaded/apache/http/impl/conn/SingleClientConnManager;


# direct methods
.method protected constructor <init>(Lorg/shaded/apache/http/impl/conn/SingleClientConnManager;Lorg/shaded/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lorg/shaded/apache/http/conn/routing/HttpRoute;)V
    .locals 0
    .param p2, "entry"    # Lorg/shaded/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    .param p3, "route"    # Lorg/shaded/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 398
    iput-object p1, p0, Lorg/shaded/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->this$0:Lorg/shaded/apache/http/impl/conn/SingleClientConnManager;

    .line 399
    invoke-direct {p0, p1, p2}, Lorg/shaded/apache/http/impl/conn/AbstractPooledConnAdapter;-><init>(Lorg/shaded/apache/http/conn/ClientConnectionManager;Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 400
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->markReusable()V

    .line 401
    iput-object p3, p2, Lorg/shaded/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->route:Lorg/shaded/apache/http/conn/routing/HttpRoute;

    .line 402
    return-void
.end method
