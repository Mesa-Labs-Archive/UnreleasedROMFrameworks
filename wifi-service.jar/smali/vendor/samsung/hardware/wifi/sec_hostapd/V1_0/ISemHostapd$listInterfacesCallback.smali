.class public interface abstract Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd$listInterfacesCallback;
.super Ljava/lang/Object;
.source "ISemHostapd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "listInterfacesCallback"
.end annotation


# virtual methods
.method public abstract onValues(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;",
            "Ljava/util/ArrayList",
            "<",
            "Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd$IfaceInfo;",
            ">;)V"
        }
    .end annotation
.end method
