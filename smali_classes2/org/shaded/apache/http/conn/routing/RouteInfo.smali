.class public interface abstract Lorg/shaded/apache/http/conn/routing/RouteInfo;
.super Ljava/lang/Object;
.source "RouteInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/shaded/apache/http/conn/routing/RouteInfo$LayerType;,
        Lorg/shaded/apache/http/conn/routing/RouteInfo$TunnelType;
    }
.end annotation


# virtual methods
.method public abstract getHopCount()I
.end method

.method public abstract getHopTarget(I)Lorg/shaded/apache/http/HttpHost;
.end method

.method public abstract getLayerType()Lorg/shaded/apache/http/conn/routing/RouteInfo$LayerType;
.end method

.method public abstract getLocalAddress()Ljava/net/InetAddress;
.end method

.method public abstract getProxyHost()Lorg/shaded/apache/http/HttpHost;
.end method

.method public abstract getTargetHost()Lorg/shaded/apache/http/HttpHost;
.end method

.method public abstract getTunnelType()Lorg/shaded/apache/http/conn/routing/RouteInfo$TunnelType;
.end method

.method public abstract isLayered()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isTunnelled()Z
.end method
